<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="welcomeImage">
    <img width="100%" height="150" src="${project}/static/images/banner.jpg" alt="welcome">
</div>
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
            <a href="/user/toManager.html">后台管理</a>
        </c:if>
    </div>
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