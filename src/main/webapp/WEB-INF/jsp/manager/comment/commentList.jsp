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
            location.href="/mgr/comment/getComment.html/"+pageIndex;
        }
    </script>
</head>
<body>
<div id="header" class="wrap">
    <div id="logo"><img src="../../statics/images/logo.gif" /></div>
    <div class="help"><a href="/doIndex.html">返回前台页面</a></div>
    <div class="navbar">
        <ul class="clearfix">
            <li><a href="/user/toManager.html">首页</a></li>
            <li><a href="/user/getUsers.html">用户</a></li>
            <li><a href="product.html">商品</a></li>
            <li><a href="order.html">订单</a></li>
            <li class="current"><a href="/mgr/comment/getComment.html">留言</a></li>
            <li><a href="/mgr/news/getNews.html">新闻</a></li>
        </ul>
    </div>
</div>
<%@include file="../common/title.jsp"%>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp"%>
    <div class="main">
        <h2>留言管理</h2>
        <div class="manage">
            <table class="list">
                <tr>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>留言内容</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${pages.pageList}" var="comment">
                    <tr>
                        <td class="first w4 c">${comment.commentid}</td>
                        <td class="w1 c">${comment.user.username}</td>
                        <td>${comment.commentcontent}</td>
                        <td class="w1 c">
                            <c:if test="${not empty comment.replycontent &&  comment.replycontent != ''}">
                                已回复
                            </c:if>
                        </td>
                        <td class="w1 c">
                            <a href="guestbook-modify.html">修改</a>
                            <a class="manageDel" href="javascript:void(0)">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="clear"></div>
    <%@include file="../common/pager.jsp"%>
</div>
<div id="footer">
    Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>