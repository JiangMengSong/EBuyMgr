package org.syqb.ebuymgr.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Order;
import org.syqb.ebuymgr.pojo.Product;
import org.syqb.ebuymgr.pojo.User;
import org.syqb.ebuymgr.pojo.UserAddress;
import org.syqb.ebuymgr.service.news.NewsService;
import org.syqb.ebuymgr.service.product.CategoryService;
import org.syqb.ebuymgr.service.product.ProductService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Resource(name = "productService")
    ProductService productService;

    @Resource(name = "categoryService")
    CategoryService categoryService;

    @Resource(name = "newsService")
    NewsService newsService;

    @RequestMapping(value = "/doIndex.html", produces = "text/html;charset=utf-8")
    public String doIndex() {
        return "redirect:/product/doIndex.html/1";
    }

    @RequestMapping(value = "/doIndex.html/{pageIndex}", produces = "text/html;charset=utf-8")
    public String doIndex(HttpServletRequest request, Pages<Product> pages, Integer categoryId) {
        request.setAttribute("newsList", newsService.getNewsByDate());
        request.setAttribute("categoryList", categoryService.getCategory());
        pages.setTotalCount(productService.getProductCount(categoryId));
        pages.setPageList(productService.getProduct(pages,categoryId));
        request.setAttribute("categoryId",categoryId);
        if(categoryId == null) request.setAttribute("categoryId",0);
        request.setAttribute("pages", pages);
        return "product/index";
    }

    @RequestMapping(value = "/getProduct.html", produces = "text/html;charset=utf-8")
    public String getProduct() {
        return "redirect:/product/getProduct.html/1";
    }

    @RequestMapping(value = "/getProduct.html/{pageIndex}", produces = "text/html;charset=utf-8")
    public String getProduct(HttpServletRequest request, Pages<Product> pages) {
        pages.setPageSize(7);
        pages.setTotalCount(productService.getProductCount(0));
        pages.setPageList(productService.getProduct(pages,0));
        request.setAttribute("selUrl",2);
        request.setAttribute("pages", pages);
        return "manager/product/productList";
    }

    //商品详情
    @RequestMapping(value = "/proDetail.html/{productid}", produces = "text/html;charset=utf-8")
    public String getProductById(HttpServletRequest request,@PathVariable Integer productid) {
        Product pro=productService.getProById(productid);
        if(pro!=null) {
            request.setAttribute("pro", pro);
            return "product/product-view";
        }
        else {
            return "product/product-view";
        }
    }

    //删除商品
    @RequestMapping(value = "/delProduct.html/{productid}", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String delProduct(@PathVariable Integer productid){
        JSONObject result=new JSONObject();
        result.put("flag",false);
        int sum=productService.delProduct(productid);
        if(sum>0) result.put("flag",true);

        return result.toString();
    }

    //获取商品地址
    @RequestMapping(value = "/getAddress.html/{productid}", produces = "text/html;charset=utf-8")
    public String getAddress(@PathVariable Integer productid, HttpSession session,HttpServletRequest request){
       User users= (User) session.getAttribute("users");
        List<UserAddress> list= productService.selectByUserid(users.getUserid());
        request.setAttribute("addlist",list);
        request.setAttribute("productid",productid);
        return "product/address";
    }

    //购买商品

    @RequestMapping(value = "/insertOrder.html/{productid}", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String insertOrder(HttpSession session, Order order, HttpServletRequest request, @PathVariable Integer productid){
        JSONObject result=new JSONObject();
        result.put("flag",false);
        Product pro=productService.getProById(productid);
        order.setUser((User) session.getAttribute("users"));
        StringBuffer a=new StringBuffer();
        for(int i=0;i<10;i++ ) {
            a.append((10*Math.random())) ;
        }
        order.setOrderserialnumber(a.toString());
        order.setOrdercost(pro.getProductprice());
        int sum=productService.insertOrder(order);
        if(sum>0)
            result.put("flag",true);

        return result.toString();



    }
}
