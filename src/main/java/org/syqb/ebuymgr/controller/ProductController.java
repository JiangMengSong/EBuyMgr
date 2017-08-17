package org.syqb.ebuymgr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.syqb.ebuymgr.service.product.ProductService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Resource(name = "productService")
    ProductService productService;

    @RequestMapping(value = "/toIndex.html",produces = "text/html;charset=utf-8")
    public String toIndex(){
        return "redirect:/product/doIndex.html";
    }

    @RequestMapping(value = "/doIndex.html",produces = "text/html;charset=utf-8")
    public String doIndex(HttpServletRequest request){
       // request.setAttribute("categoryList", );
        request.setAttribute("productList", productService.getEasyBuyProduct());
        return "product/index";
    }
}
