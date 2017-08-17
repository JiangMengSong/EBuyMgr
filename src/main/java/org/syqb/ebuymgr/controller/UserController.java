package org.syqb.ebuymgr.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.syqb.ebuymgr.pojo.EasyBuyUser;
import org.syqb.ebuymgr.service.user.EasyBuyUserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource(name = "easyBuyUserService")
    EasyBuyUserService easyBuyUserService;

    //登录页
    @RequestMapping(value = "/toLogin.html", produces = "text/html;charset=utf-8")
    public String toLogin(HttpSession session, EasyBuyUser users) {
        return session.getAttribute("users") == null ? "user/login" : "house/index";
    }

    //登录
    @RequestMapping(value = "/doLogin.html", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String doLogin(HttpSession session, EasyBuyUser users) {
        JSONObject result = new JSONObject();
        if (users == null || users.getLoginname() == null) result.put("flag", false);
        else {
            EasyBuyUser loginUsers = easyBuyUserService.selectByLoginName(users.getLoginname());
            if ((loginUsers != null && loginUsers.getUserpassword().equals(users.getUserpassword()))) {
                result.put("flag", true);
                session.setAttribute("users", loginUsers);
            } else result.put("flag", false);
        }
        return result.toString();
    }

    //注册
    @RequestMapping(value = "/register.html", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String register(EasyBuyUser users){
        JSONObject result = new JSONObject();
        if (users == null ) result.put("flag", false);
        else{
            int sum=easyBuyUserService.insert(users);
            if(sum>0){
                result.put("flag",true);
            }
            else result.put("flag",false);
        }
        return result.toString();
    }

}
