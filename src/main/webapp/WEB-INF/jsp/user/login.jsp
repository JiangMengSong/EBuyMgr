<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/17
  Time: 2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/taglib.jsp"%>
<html>
<head>
    <title>易买网 - 首页</title>
    ${jquery_3}${js_common}${js_function}${cs_stylee}
    <script>
        $(function () {
            $("#regBtn").click(function () {
                location.href = "toRegister.html";
            });

            $("#loginBtn").click(function () {
                $.ajax({
                    url: "/user/doLogin.html",
                    data: $("#loginForm").serialize(),
                    dataType: "json",
                    type: "post",
                    success: function (result) {
                        if (result.flag == true) {
                            alert('登录成功');
                            location.href = "/product/doIndex.html";
                        } else alert("登录失败");
                    }, error: function () {
                        alert("登录错误")
                    }
                });
            });
        });
    </script>
</head>
<body>
<div id="header" class="wrap">
    <div id="logo"><img src="${img_logo}"/></div>
</div>
<div id="register" class="wrap">
    <div class="shadow">
        <em class="corner lb"></em>
        <em class="corner rt"></em>
        <div class="box">
            <h1>欢迎回到易买网</h1>
            <form id="loginForm" method="post">
                <table>
                    <tr>
                        <td class="field">用户名：</td>
                        <td>
                            <input class="text" type="text" id="userId" name="loginname"/>
                            <span></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">登录密码：</td>
                        <td>
                            <input class="text" type="password" id="password" name="userpassword"/>
                            <span></span>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <label class="ui-green">
                                <input type="button" id="loginBtn" value="立即登录">
                                <input type="button" id="regBtn" value="立即注册">
                            </label>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">
    Copyright &copy; 2010 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>
