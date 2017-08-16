<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/17
  Time: 2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>易买网 - 首页</title>
    <link type="text/css" rel="stylesheet" href="../../statics/css/style.css" />
    <script type="text/javascript" src="../../statics/scripts/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../../statics/scripts/function.js"></script>
</head>
<body>
<div id="header" class="wrap">
    <div id="logo"><img src="../../statics/images/logo.gif" /></div>
</div>
<div id="register" class="wrap">
    <div class="shadow">
        <em class="corner lb"></em>
        <em class="corner rt"></em>
        <div class="box">
            <h1>欢迎回到易买网</h1>
            <form id="loginForm" method="post" action="index.html" >
                <table>
                    <tr>
                        <td class="field">用户名：</td>
                        <td>
                            <input class="text" type="text" id="userId" name="userId" />
                            <span></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">登录密码：</td>
                        <td>
                            <input class="text" type="password" id="password" name="password" />
                            <span></span>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <label class="ui-green">
                                <input type="submit" name="submit" value="立即登录" />
                                <input type="button" id="registerBtn" value="立即注册" />
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
