<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/17
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理 - 易买网</title>
</head>
<body>
<%@include file="common/title.jsp" %>
<div id="main" class="wrap">
    <%@include file="common/left.jsp" %>
    <div class="main">
        <h2>管理首页</h2>
        <div id="welcome" class="manage">
            <div class="shadow">
                <em class="corner lb"></em>
                <em class="corner rt"></em>
                <div class="box">
                    <div class="msg">
                        <p>欢迎回来</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">
    Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>
