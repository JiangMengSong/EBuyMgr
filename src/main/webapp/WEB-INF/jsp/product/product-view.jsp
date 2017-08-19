<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/18
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>易买网 - 首页</title>

        ${jquery_3}${js_common}${js_function}${cs_stylee}
    </head>
</head>
<body>
<div id="header" class="wrap">
    <div id="logo"><img src="${img_logo}"/></div>
    <div class="help">
        <a href="shopping.html" id="shoppingBag" class="shopping">
            购物车X件
        </a>
        <c:if test="${empty users}">
            <a href="/user/toLogin.html">登录</a>
            <a href="/user/toRegister.html">注册</a>
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
<div id="position" class="wrap">
    您现在的位置：<a href="index.html">易买网</a> &gt; <a href="product-list.html">图书音像</a> &gt; 图书
</div>
<div id="main" class="wrap">
    <div class="lefter">
        <div class="box">
            <h2>商品分类</h2>
            <dl>
                <dt>图书音像</dt>
                <dd><a href="product-list.html">图书</a></dd>
                <dd><a href="product-list.html">音乐</a></dd>
                <dt>百货</dt>
                <dd><a href="product-list.html">运动健康</a></dd>
                <dd><a href="product-list.html">服装</a></dd>
                <dd><a href="product-list.html">家居</a></dd>
                <dd><a href="product-list.html">美妆</a></dd>
                <dd><a href="product-list.html">母婴</a></dd>
                <dd><a href="product-list.html">食品</a></dd>
                <dd><a href="product-list.html">手机数码</a></dd>
                <dd><a href="product-list.html">家具首饰</a></dd>
                <dd><a href="product-list.html">手表饰品</a></dd>
                <dd><a href="product-list.html">鞋包</a></dd>
                <dd><a href="product-list.html">家电</a></dd>
                <dd><a href="product-list.html">电脑办公</a></dd>
                <dd><a href="product-list.html">玩具文具</a></dd>
                <dd><a href="product-list.html">汽车用品</a></dd>
            </dl>
        </div>
    </div>
    <div id="product" class="main">
        <h1>${pro.productname}</h1>
        <div class="infos">
            <div class="thumb"><img src="images/product/10.jpg" width="110" height="106" /></div>
            <div class="buy">
                商城价：<span class="price">￥${pro.productprice}</span><br />
                库　存：有货
                <div class="button"><input type="button" name="button" value="" onclick="location.href = 'address.html'" /><a href="shopping.html">放入购物车</a></div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="introduce">
            <h2><strong>商品详情</strong></h2>
            <div class="text">
                利仁2018M福满堂电饼铛 好用实惠<br />
                ......<br />
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
