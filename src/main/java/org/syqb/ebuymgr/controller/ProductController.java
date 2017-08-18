package org.syqb.ebuymgr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Product;
import org.syqb.ebuymgr.service.product.CategoryService;
import org.syqb.ebuymgr.service.news.NewsService;
import org.syqb.ebuymgr.service.product.ProductService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
    public String doIndex(HttpServletRequest request, Pages<Product> pages,Integer categoryId) {
        request.setAttribute("newsList", newsService.getNewsByDate());
        request.setAttribute("categoryList", categoryService.getCategory());
        pages.setTotalCount(productService.getProductCount(categoryId));
        pages.setPageList(productService.getProduct(pages,categoryId));
        request.setAttribute("categoryId",categoryId);
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
    public String getProductById(HttpServletRequest request,int productid) {
        Product pro=productService.getProById(productid);
        if(pro!=null) {
            request.setAttribute("pro", pro);
            return "product/product-view";
        }
        else {
            return "product/product-view";
        }
    }
}
