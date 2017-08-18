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
</head>
<body>
<div id="header" class="wrap">
    <div id="logo"><img src="../../statics/images/logo.gif"/></div>
    <div class="help"><a href="/doIndex.html">返回前台页面</a></div>
    <div class="navbar">
        <ul class="clearfix">
            <li><a href="/user/toManager.html">首页</a></li>
            <li><a href="/user/getUsers.html">用户</a></li>
            <li><a href="/product/getProduct.html">商品</a></li>
            <li><a href="order.html">订单</a></li>
            <li><a href="/mgr/comment/getComment.html">留言</a></li>
            <li class="current"><a href="/mgr/news/getNews.html">新闻</a></li>
        </ul>
    </div>
</div>
<%@include file="../common/title.jsp" %>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp" %>
    <div class="main">
        <h2>修改新闻</h2>
        <div class="manage">
            <form action="manage-result.html">
                <table class="form">
                    <tr>
                        <td class="field">新闻标题：</td>
                        <td><input type="text" class="text" name="title" value=""/></td>
                    </tr>
                    <tr>
                        <td class="field">新闻内容：</td>
                        <td><textarea name="content"></textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label class="ui-blue"><input type="submit" name="submit" value="修改"/></label></td>
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
