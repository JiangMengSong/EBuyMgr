<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../common/taglib.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/17
  Time: 1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>易买网 - 首页</title>
    <script>
    // 分页带条件跳转
    function goToPage(pageIndex,categoryId) {
        if (isEmpty(pageIndex)) pageIndex = 1;
        if (isEmpty(categoryId)) categoryId = 0;
        location.href = "/product/doIndex.html/" + pageIndex + "?categoryId=" + categoryId
    }
</script>

    ${jquery_3}${js_common}${js_function}${cs_stylee}
</head>
<body>
<%@include file="../common/title.jsp"%>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp"%>
    <div class="main">
        <div class="price-off">
            <div class="slideBox">
                <ul id="slideBox">
                    <li><img src="${project}/static/images/product/banner_1.jpg"/></li>
                    <li><img src="${project}/static/images/product/banner_2.jpg"/></li>
                    <li><img src="${project}/static/images/product/banner_3.jpg"/></li>
                    <li><img src="${project}/static/images/product/banner_4.jpg"/></li>
                </ul>
            </div>
            <h2>商品列表</h2>
            <ul class="product clearfix">
                <c:forEach items="${pages.pageList}" var="product">
                    <li>
                        <dl>
                            <dt><a href="/product/proDetail.html/${product.productid}" target="_self"><img src="${project}/static/images/product/${product.productfilename}"/></a></dt>
                            <dd class="title"><a href="/product/proDetail.html/${product.productid}" target="_self">${product.productname}</a></dd>
                            <dd class="price">￥${product.productprice}</dd>
                        </dl>
                    </li>
                </c:forEach>
            </ul>
            <%@include file="../common/pager.jsp"%>
        </div>
        <div class="side">
            <div class="spacer"></div>
            <div class="news-list">
                <h4>新闻动态</h4>
                <ul>
                    <c:forEach items="${newsList}" var="news">
                        <li><a href="news-view.html" target="_self">${news.newstitle}</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="spacer clear"></div>
    </div>
</div>
<div id="footer">
    Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>

<script>
    //注销
    $(function () {
        $("#logout").click(function () {
            if (confirm("是否确认注销")) {
                $.ajax({
                    url: "/user/retUser.html",
                    success: function () {
                        alert("注销成功");
                        location.href = '/user/toLogin.html'
                    }
                })
            }

        });
    })
</script>
</body>
</html>
