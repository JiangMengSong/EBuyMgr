package org.syqb.ebuymgr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

    @RequestMapping(value = "/toIndex.html",produces = "text/html;charset=utf-8")
    public String toIndex(){
        return "redirect:/product/doIndex.html";
    }

    @RequestMapping(value = "/doIndex.html",produces = "text/html;charset=utf-8")
    public String doIndex(){

        return "product/index";
    }
}
