package org.syqb.ebuymgr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.syqb.ebuymgr.service.user.EasyBuyUserService;

import javax.annotation.Resource;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource(name = "easyBuyUserService")
    EasyBuyUserService easyBuyUserService;

    @RequestMapping(value = "toLogin.html",produces = "text/html;charset=utf-8")
    public String toLogin(){
        return "user/login";
    }

}
