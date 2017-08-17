package org.syqb.ebuymgr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.syqb.ebuymgr.service.product.CategoryService;
import org.syqb.ebuymgr.service.product.NewsService;
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

    @RequestMapping(value = "/toIndex.html",produces = "text/html;charset=utf-8")
    public String toIndex(){
        return "redirect:/product/doIndex.html";
    }

    @RequestMapping(value = "/doIndex.html",produces = "text/html;charset=utf-8")
    public String doIndex(HttpServletRequest request){
        request.setAttribute("newsList",newsService.getNews());
        request.setAttribute("categoryList", categoryService.getCategory());
        request.setAttribute("productList", productService.getProduct());
        return "product/index";
    }
}
