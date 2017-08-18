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
    <div id="header" class="wrap">
        <div id="logo"><img src="../../statics/images/logo.gif"/></div>
        <div class="help"><a href="/doIndex.html">返回前台页面</a></div>
        <div class="navbar">
            <ul class="clearfix">
                <li class="current"><a href="/user/toManager.html">首页</a></li>
                <li><a href="/user/getUsers.html">用户</a></li>
                <li><a href="/product/getProduct.html">商品</a></li>
                <li><a href="order.html">订单</a></li>
                <li><a href="/mgr/comment/getComment.html">留言</a></li>
                <li><a href="/mgr/news/getNews.html">新闻</a></li>
            </ul>
        </div>
    </div>
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
