package org.syqb.ebuymgr.controller;

import net.sf.json.JSONObject;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
import java.io.File;
import java.util.List;
import java.util.Random;

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
        pages.setPageList(productService.getProduct(pages, categoryId));
        request.setAttribute("categoryId", categoryId);
        if (categoryId == null) request.setAttribute("categoryId", 0);
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
        pages.setPageList(productService.getProduct(pages, 0));
        request.setAttribute("selUrl", 2);
        request.setAttribute("pages", pages);
        return "manager/product/productList";
    }

    //商品详情
    @RequestMapping(value = "/proDetail.html/{productid}", produces = "text/html;charset=utf-8")
    public String getProductById(HttpServletRequest request, @PathVariable Integer productid) {
        Product pro = productService.getProById(productid);
        if (pro != null) request.setAttribute("pro", pro);
        return "product/product-view";
    }

    //商品编辑
    @RequestMapping(value = "/toOperaProduct.html/{productId}", produces = "text/html;charset=utf-8")
    public String toOperaProduct(HttpServletRequest request, @PathVariable Integer productId) {
        request.setAttribute("categoryList", categoryService.getCategory());
        if (productId != null && productId > 0) request.setAttribute("product", productService.getProById(productId));
        return "manager/product/productOpera";
    }

    //商品编辑
    @RequestMapping(value = "/doOperaProduct.html", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String doOperaProduct(HttpServletRequest request,Product product, @RequestParam(value = "upload",required = false)MultipartFile upload) {
        JSONObject result = new JSONObject();
        result.put("flag", false);
        String msg = "";
        try{
            if (upload != null && upload.getSize() > 0) {
                String path = request.getSession().getServletContext().getRealPath("static/images/product"); // 设置上传文件路径
                String oldFileName = upload.getOriginalFilename(); // 获取源文件名称
                String prefix = FilenameUtils.getExtension(oldFileName); // 获取源文件类型
                int fileSize = 102400; // 限制文件大小
                if (upload.getSize() > fileSize) msg="文件不得大于10M"; // 判断文件大小是否符合
                if (prefix.equals("jpg") || prefix.equals("gif") || prefix.equals("png")){ // 判断类型是否符合
                    String newFileName = System.currentTimeMillis() + new Random().nextInt(1000000)+"_product."+prefix; // 设置上传文件名称
                    File file = new File(path,newFileName); // 设置上传文件
                    upload.transferTo(file); // 执行文件上传
                    product.setProductfilename(newFileName);
                }else msg="文件格式不正确"; // 设置错误信息
            }
            if (msg == ""){
                if (product.getProductid() == null && productService.addProduct(product) >0 ) result.put("flag",true); // 返回正确结果
                else if (product.getProductid() != null && product.getProductid() > 0 && productService.updateProduct(product) >0 ) result.put("flag",true);
                else msg="更新失败";
            }
            result.put("msg",msg);
        }catch (Exception e){
            result.put("msg",e.getMessage());
            e.printStackTrace();
        }finally {
            return result.toString();
        }
    }

    //删除商品
    @RequestMapping(value = "/delProduct.html/{productid}", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String delProduct(@PathVariable Integer productid) {
        JSONObject result = new JSONObject();
        result.put("flag", false);
        if (productService.delProduct(productid) > 0) result.put("flag", true);
        return result.toString();
    }

    //获取商品地址
    @RequestMapping(value = "/getAddress.html/{productid}", produces = "text/html;charset=utf-8")
    public String getAddress(@PathVariable Integer productid, HttpSession session, HttpServletRequest request) {
        User users = (User) session.getAttribute("users");
        if (users == null) return "redirect:/user/toLogin.html";
        List<UserAddress> list = productService.selectByUserid(users.getUserid());
        request.setAttribute("addlist", list);
        request.setAttribute("productid", productid);
        return "product/address";
    }

    //购买商品
    @RequestMapping(value = "/insertOrder.html/{productid}", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String insertOrder(HttpSession session, Order order, HttpServletRequest request, @PathVariable Integer productid) {
        JSONObject result = new JSONObject();
        result.put("flag", false);
        Product pro = productService.getProById(productid);
        order.setUser((User) session.getAttribute("users"));
        StringBuffer a = new StringBuffer();
        for (int i = 0; i < 10; i++) a.append((int)(10 * Math.random()));
        order.setOrderserialnumber(a.toString());
        order.setOrdercost(pro.getProductprice());
        if (productService.insertOrder(order) > 0) result.put("flag", true);
        return result.toString();
    }

    @RequestMapping(value = "/doResult.html", produces = "text/html;charset=utf-8")
    public String doResult() {
        return "product/shopping-result";
    }

}
