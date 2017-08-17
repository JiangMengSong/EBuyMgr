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

    @RequestMapping(value = "/toIndex.html",produces = "text/html;charset=utf-8")
    public String toIndex(){
        return "redirect:/product/doIndex.html/1";
    }

    @RequestMapping(value = "/doIndex.html/{pageIndex}",produces = "text/html;charset=utf-8")
    public String doIndex(HttpServletRequest request, Pages<Product> pages,Integer categoryId){
        request.setAttribute("newsList",newsService.getNewsByDate());
        request.setAttribute("categoryList", categoryService.getCategory());
        request.setAttribute("productList", productService.getProduct(pages));
        request.setAttribute("pages",pages);
        return "product/index";
    }
}
