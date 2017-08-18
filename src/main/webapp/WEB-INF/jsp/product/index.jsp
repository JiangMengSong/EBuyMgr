<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link type="text/css" rel="stylesheet" href="../../statics/css/style.css"/>
    <script type="text/javascript" src="../../statics/scripts/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../../statics/scripts/function.js"></script>
    <script type="text/javascript" src="../../statics/scripts/common.js"></script>
    <script>
        <%--<c:if test="${empty users}">--%>
        <%--location.href = "/product/doIndex.html";--%>
        <%--</c:if>--%>
        // 分页带条件跳转
        function goToPage(pageIndex,categoryId) {
            if (isEmpty(pageIndex)) pageIndex = 1;
            if (isEmpty(categoryId)) categoryId = 0;
            location.href = "/product/doIndex.html/" + pageIndex + "?categoryId=" + categoryId
        }
    </script>
</head>
<body>
<div id="welcomeImage">
    <img width="100%" height="150" src="images/banner.jpg" alt="welcome">
</div>
<div id="header" class="wrap">
    <div id="logo"><img src="../../statics/images/logo.gif"/></div>
    <div class="help">
        <a href="shopping.html" id="shoppingBag" class="shopping">
            购物车X件
        </a>
        <c:if test="${empty users}">
            <a href="login.html">登录</a>
            <a href="register.html">注册</a>
        </c:if>
        <c:if test="${not empty users}">
            <a class="button" id="logout" href="javascript:void(0);">注销</a>
        </c:if>
        <c:if test="${users.usertype == 1}">
        <a href="/user/toManager.html">后台管理</a></div>
    </c:if>
    <div class="navbar">
        <ul class="clearfix">
            <li class="current"><a href="#">首页</a></li>
            <li><a href="#">图书</a></li>
            <li><a href="#">百货</a></li>
            <li><a href="#">品牌</a></li>
            <li><a href="#">促销</a></li>
        </ul>
    </div>
</div>
<div id="childNav">
    <div class="wrap">
        <ul class="clearfix">
            <li class="first"><a href="#">音乐</a></li>
            <li><a href="#">影视</a></li>
            <li><a href="#">少儿</a></li>
            <li><a href="#">动漫</a></li>
            <li><a href="#">小说</a></li>
            <li><a href="#">外语</a></li>
            <li><a href="#">数码相机</a></li>
            <li><a href="#">笔记本</a></li>
            <li><a href="#">羽绒服</a></li>
            <li><a href="#">秋冬靴</a></li>
            <li><a href="#">运动鞋</a></li>
            <li><a href="#">美容护肤</a></li>
            <li><a href="#">家纺用品</a></li>
            <li><a href="#">婴幼奶粉</a></li>
            <li><a href="#">饰品</a></li>
            <li class="last"><a href="#">Investor Relations</a></li>
        </ul>
    </div>
</div>
<div id="main" class="wrap">
    <div class="lefter">
        <div class="box">
            <h2>商品分类</h2>
            <dl>
                <c:forEach items="${categoryList}" var="category">
                    <c:if test="${category.categorytype == 1}">
                        <dt>${category.categoryname}</dt>
                        <c:forEach items="${categoryList}" var="categorys">
                            <c:if test="${categorys.categoryparentid == category.categoryid}">
                                <dd>
                                    <a href="javascript:void(0)" onclick="goToPage(1,${categorys.categoryid})">${categorys.categoryname}</a>
                                </dd>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </c:forEach>
            </dl>
        </div>
        <div class="spacer"></div>
        <div class="last-view">
            <h2>最近浏览</h2>
            <dl class="clearfix">
                <dt><img src="../../statics/images/product/10_small.jpg"/></dt>
                <dd><a href="product-view.html" target="_self">利仁2018M福满堂电饼铛 好用实惠</a><a href="product-view.html"></a>
                </dd>
                <dt>&nbsp;</dt>
                <dd>&nbsp;</dd>
            </dl>
        </div>
    </div>
    <div class="main">
        <div class="price-off">
            <div class="slideBox">
                <ul id="slideBox">
                    <li><img src="../../statics/images/product/banner_1.jpg"/></li>
                    <li><img src="../../statics/images/product/banner_2.jpg"/></li>
                    <li><img src="../../statics/images/product/banner_3.jpg"/></li>
                    <li><img src="../../statics/images/product/banner_4.jpg"/></li>
                </ul>
            </div>
            <h2>商品列表</h2>
            <ul class="product clearfix">
                <c:forEach items="${pages.pageList}" var="product">
                    <li>
                        <dl>
                            <dt><a href="product-view.html" target="_self"><img src="images/product/1.jpg"/></a></dt>
                            <dd class="title"><a href="product-view.html" target="_self">${product.productname}</a></dd>
                            <dd class="price">￥${product.productprice}</dd>
                        </dl>
                    </li>
                </c:forEach>
            </ul>
            <div class="pager">
                <ul class="clearfix">
                    <c:if test="${pages.pageIndex > 1}">
                        <li><a href="javascript:void(0);" onclick="goToPage(1,${categoryId})">首页</a></li>
                        <c:if test="${pages.pageIndex > 2}">
                            <li>...</li>
                        </c:if>
                        <li><a href="javascript:void(0)" onclick="goToPage(${pages.pageIndex-1},${categoryId})">${pages.pageIndex-1}</a></li>
                    </c:if>
                    <li class="current">${pages.pageIndex}</li>
                    <c:if test="${pages.pageIndex < pages.totalPage}">
                        <li><a href="javascript:void(0)" onclick="goToPage(${pages.pageIndex+1},${categoryId})">${pages.pageIndex+1}</a></li>
                        <c:if test="${pages.pageIndex < pages.totalPage - 1}">
                            <li>...</li>
                        </c:if>
                        <li><a href="javascript:void(0)" onclick="goToPage(${pages.totalPage},${categoryId})">尾页</a></li>
                    </c:if>
                </ul>
            </div>
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
</body>
</html>
