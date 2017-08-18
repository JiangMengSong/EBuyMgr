<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/17
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理 - 易买网</title>
    <script>
        <c:if test="${empty news}">
        location.href="/user/toManager.html";
        </c:if>
    </script>
</head>
<body>
<%@include file="../common/title.jsp"%>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp"%>
    <div class="main">
        <h2>回复留言</h2>
        <div class="manage">
            <form method="post">
                <table class="form">
                    <tr>
                        <td class="field">留言编号：</td>
                        <td>12</td>
                    </tr>
                    <tr>
                        <td class="field">留言姓名：</td>
                        <td>张三</td>
                    </tr>
                    <tr>
                        <td class="field">留言内容：</td>
                        <td>高老庄的货发了没？</td>
                    </tr>
                    <tr>
                        <td class="field">回复内容：</td>
                        <td><textarea name="replyContent"></textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label class="ui-blue"><input type="button" name="submit" value="更新" /></label></td>
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
</body>
</html>