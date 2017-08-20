<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/18
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理 - 易买网</title>
</head>
<body>
<%@include file="../common/title.jsp" %>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp" %>
    <div class="main">
        <h2>修改用户</h2>
        <div class="manage">
            <form  id="userForm" method="post">
                <table class="form">
                    <input type="hidden" name="userid" value="${user.userid}">
                    <tr>
                        <td class="field">用户名(*)：</td>
                        <td><input type="text" class="text" name="loginname" value="${user.loginname}" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td class="field">真实姓名(*)：</td>
                        <td><input type="text" class="text" id="username" name="username" value="${user.username}"   /></td>
                    </tr>
                    <tr>
                        <td class="field">登录密码(*)：</td>
                        <td><input type="text" class="text" id="password" name="userpassword" value="${user.userpassword}"  /></td>
                    </tr>
                    <tr>
                        <td class="field">确认密码(*)：</td>
                        <td><input type="text" class="text" id="pwdagin" name="userpasswordagin" value="${user.userpassword}"  /></td>
                    </tr>
                    <tr>
                        <td class="field">性别(*)：</td>
                        <td>
                        <c:if test="${user.usersex==1}">
                            <input type="radio" name="usersex" value="1" checked="checked" />男
                            <input type="radio" name="usersex" value="0" />女
                        </c:if>
                         <c:if test="${user.usersex==0}">
                                <input type="radio" name="usersex" value="1"  />男
                                <input type="radio" name="usersex" value="0" checked="checked" />女
                         </c:if>
                        </td>
                    </tr>

                    <tr>
                        <td class="field">手机(*)：</td>
                        <td><input type="text" class="text" id="mobile" name="usermobile" value="${user.usermobile}" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label class="ui-blue"><input type="button" name="submit" id="subBtn" value="更新" /></label></td>
                    </tr>
                </table>
            </form>
        </div>

    </div>
    <div class="clear"></div>
</div>
<div id="footer">
    Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>

<script>
    $(function () {
        $("#subBtn").click(function () {

            var name = $("#username").val();
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
            var mobile = $("#mobile").val();
            if (mobile.length != 11) {
                alert('手机号码长度为11位，请重新输入！');
                return false;
            }
            $.ajax({
                url:"/user/doUpdate.html",
                data:$("#userForm").serialize(),
                type:"post",
                dataType:"json",
                success:function (result) {
                    if (result.flag){
                        alert("保存成功");
                        location.href="/user/getUsers.html";
                    }else alert("保存失败");
                },error:function () {
                    alert("保存出错")
                }
            })
        })
    })
</script>
</body>
</html>

