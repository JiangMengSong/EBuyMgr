<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/17
  Time: 2:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>易买网 - 首页</title>
    <link type="text/css" rel="stylesheet" href="../../statics/css/style.css"/>
    <script type="text/javascript" src="../../statics/scripts/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../../statics/scripts/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="../../statics/scripts/function.js"></script>

    <script>
        $(function () {
            $("#resBtn").click(function () {

                var name = $("#loginname").val();
                if (name == null || name == "") {
                    alert('用户名不能为空！');
                    return false;
                }
                var uname = $("#username").val();
                if (name == null || name == "") {
                    alert('真实姓名不能为空！');
                    return false;
                }
                var pwd = $("#password").val();
                if (pwd == null || pwd == "") {
                    alert('密码不能为空！');
                    return false;
                }
                var pwdagin = $("#pwdagin").val();
                if (pwdagin == null || pwdagin == "") {
                    alert('请确认密码！');
                    return false;
                }
                if (pwd != pwdagin) {
                    alert('两次密码不一致，请重新输入！');
                    return false;
                }
                if (pwd.length < 6) {
                    alert('密码过短，请重新输入！');
                    return false;
                }
                var iden = $("#iden").val();
                if (iden.length != 18) {
                    alert('身份证号必须为18位，请重新输入！');
                    return false;
                }

                var email = $("#email").val();
                if (email == null || email == "") {
                    alert("邮箱不能为空！");
                    return false;
                }

                var re = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
                var result = re.test(email);
                if (result != true) {
                    alert('邮箱格式不正确，请重新输入！');
                    return false;
                }

                var mobile = $("#mobile").val();
                if (mobile.length != 11) {
                    alert('手机号码长度为11位，请重新输入！');
                    return false;
                }

                var address = $("#address").val();
                if (address == null || address == "") {
                    alert('地址不能为空！');
                    return false;
                }

                $.ajax({
                    url: "/user/register.html",
                    data: $("#regForm").serialize(),
                    dataType: "json",
                    type: "post",
                    success: function (result) {
                        if (result.flag == true) {
                            alert('注册成功');
                            location.href("toLogin.html");

                        } else alert("注册失败");
                    }, error: function () {
                        alert("注册错误")
                    }
                });
            });

        });
    </script>
</head>

<body>
<div id="register" class="wrap">
    <div class="shadow">
        <em class="corner lb"></em>
        <em class="corner rt"></em>
        <div class="box">
            <h1>欢迎注册易买网</h1>
            <ul class="steps clearfix">
                <li class="current"><em></em>填写注册信息</li>
                <li class="last"><em></em>注册成功</li>
            </ul>
            <form id="regForm" method="post">
                <table>
                    <tr>
                        <td class="field">用户名(*)：</td>
                        <td>
                            <input class="text" type="text" name="loginname" id="loginname" maxlength="10"/>
                            <span></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">真实姓名(*)：</td>
                        <td><input class="text" type="text" name="username" id="username"/><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">登录密码(*)：</td>
                        <td><input class="text" type="password" id="password" name="userpassword"/><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">确认密码(*)：</td>
                        <td><input class="text" type="password" name="confirmPassword" id="pwdagin"/><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">性别(*)：</td>
                        <td>
                            <input class="radio" type="radio" name="usersex" value="1" checked="checked">
                            男性</input>
                            <input class="radio" type="radio" name="usersex" value="0"
                            >女性</input>
                            <span></span></td>
                    </tr>

                    <tr>
                        <td class="field">身份证：</td>
                        <td><input class="text" type="text" name="identitycode" id="iden"/><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">电子邮件：</td>
                        <td><input class="text" type="text" name="useremail" id="email"/><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">手机(*)：</td>
                        <td><input class="text" type="text" name="usermobile" id="mobile"/><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">收货地址(*)：</td>
                        <td><input class="text" type="text" name="address" id="address"/><span></span></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label class="ui-green"><input type="button" id="resBtn" value="提交注册"/></label></td>
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
