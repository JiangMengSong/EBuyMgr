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
        function goToPage(pageIndex) {
            location.href = "/user/getUsers.html/" + pageIndex;
        }
    </script>
</head>
<body>
<%@include file="../common/title.jsp" %>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp" %>
    <div class="main">
        <h2>用户管理</h2>
        <div class="manage">
            <table class="list">
                <tr>
                    <th>用户名</th>
                    <th>真实姓名</th>
                    <th>性别</th>
                    <th>手机</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${pages.pageList}" var="user">
                    <tr>
                        <td class="first w4 c">${user.userid}</td>
                        <td class="w1 c">${user.username}</td>
                        <td class="w2 c">
                            <c:if test="${user.usersex == 0}">
                                女
                            </c:if>
                            <c:if test="${user.usersex == 0}">
                                男
                            </c:if>
                        </td>
                        <td>${user.usermobile}</td>
                        <td class="w1 c">
                            <a href="user-modify.html">修改</a>
                            <a class="manageDel" href="javascript:void(0)">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="clear"></div>
    <%@include file="../common/pager.jsp" %>
</div>
<div id="footer">
    Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>
