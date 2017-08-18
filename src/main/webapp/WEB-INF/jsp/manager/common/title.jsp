<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="taglib.jsp"%>
${cs_stylee}${jquery_3}${js_common}${js_function}
<div id="header" class="wrap">
    <div id="logo"><img src="${project}/static/images/logo.gif"/></div>
    <div class="help"><a href="/product/doIndex.html">返回前台页面</a></div>
    <div class="navbar">
        <ul class="clearfix">
            <li
                    <c:if test="${selUrl == 0}">
                        class="current"
                    </c:if>
            ><a href="/user/toManager.html">首页</a></li>
            <li
                    <c:if test="${selUrl == 1}">
                        class="current"
                    </c:if>
            ><a href="/user/getUsers.html">用户</a></li>
            <li
                    <c:if test="${selUrl == 2}">
                        class="current"
                    </c:if>
            ><a href="/product/getProduct.html">商品</a></li>
            <li
                    <c:if test="${selUrl == 3}">
                        class="current"
                    </c:if>
            ><a href="/order/getOrder.html">订单</a></li>
            <li
                    <c:if test="${selUrl == 4}">
                        class="current"
                    </c:if>
            ><a href="/mgr/comment/getComment.html">留言</a></li>
            <li
                    <c:if test="${selUrl == 5}">
                        class="current"
                    </c:if>
            ><a href="/mgr/news/getNews.html">新闻</a></li>
        </ul>
    </div>
</div>

<div id="childNav">
    <div class="welcome wrap">
        管理员${users.loginname}您好，现在是<span id="nowTime"></span>，欢迎回到管理后台。
    </div>
</div>
<div id="position" class="wrap">
    您现在的位置：<a href="index.html">易买网</a> &gt; 管理后台
</div>
<script>
    window.setTimeout(function () {
        $("#nowTime").html(new Date().toTimeString())
    }, 0)
    window.setInterval(function () {
        $("#nowTime").html(new Date().toTimeString())
    }, 1000)
</script>
