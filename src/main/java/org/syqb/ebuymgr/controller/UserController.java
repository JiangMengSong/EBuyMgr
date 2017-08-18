package org.syqb.ebuymgr.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.User;
import org.syqb.ebuymgr.service.user.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource(name = "userService")
    UserService userService;

    // 登录页
    @RequestMapping(value = "/toLogin.html", produces = "text/html;charset=utf-8")
    public String toLogin(HttpSession session, User users) {
        return session.getAttribute("users") == null ? "user/login" : "redirect:/product/doIndex.html";
    }

    // 登录
    @RequestMapping(value = "/doLogin.html", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String doLogin(HttpSession session, User users) {
        JSONObject result = new JSONObject();
        if (users == null || users.getLoginname() == null) result.put("flag", false);
        else {
            User loginUsers = userService.selectByLoginName(users.getLoginname());
            if ((loginUsers != null && loginUsers.getUserpassword().equals(users.getUserpassword()))) {
                result.put("flag", true);
                session.setAttribute("users", loginUsers);
            } else result.put("flag", false);
        }
        return result.toString();
    }

    // 注册页
    @RequestMapping(value = "/toRegister.html", produces = "text/html;charset=utf-8")
    public String reg() {
        return "user/register";
    }

    // 注册
    @RequestMapping(value = "/register.html", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String register(User users) {
        JSONObject result = new JSONObject();
        if (users == null) result.put("flag", false);
        else {
            users.setUsertype(0);
            int sum = userService.insert(users);
            if (sum > 0) {
                result.put("flag", true);
            } else result.put("flag", false);
        }
        return result.toString();
    }

    // 后台管理跳转
    @RequestMapping(value = "/toManager.html", produces = "text/html;charset=utf-8")
    public String toManager() {
        return "manager/index";
    }

    // 跳转分页获取用户
    @RequestMapping(value = "/getUsers.html", produces = "text/html;charset=utf-8")
    public String getUserByPage() {
        return "redirect:/user/getUsers.html/1";
    }

    // 分页获取用户
    @RequestMapping(value = "/getUsers.html/{pageIndex}", produces = "text/html;charset=utf-8")
    public String getUsers(HttpServletRequest request, Pages<User> pages) {
        pages.setPageSize(7);
        pages.setTotalCount(userService.getUserCount());
        pages.setPageList(userService.getUserByPage(pages));
        request.setAttribute("pages", pages);
        return "manager/user/userList";
    }

}
