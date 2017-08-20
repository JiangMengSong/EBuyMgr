<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/18
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>易买网 - 首页</title>

        ${jquery_3}${js_common}${js_function}${cs_stylee}
    </head>
</head>
<body>
<%@include file="../common/title.jsp" %>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp" %>
    <div id="product" class="main">
        <h1>${pro.productname}</h1>
        <div class="infos">
            <div class="thumb"><img src="images/product/10.jpg" width="110" height="106" /></div>
            <div class="buy">
                商城价：<span class="price">￥${pro.productprice}</span><br />
                库　存：${pro.productstock}
                <div class="button"><input type="button" name="button" value="" onclick="location.href = 'address.html'" /><a href="shopping.html">放入购物车</a></div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="introduce">
            <h2><strong>商品详情</strong></h2>
            <div class="text">
                <br />
                ${pro.productdescription}
                <br />
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
