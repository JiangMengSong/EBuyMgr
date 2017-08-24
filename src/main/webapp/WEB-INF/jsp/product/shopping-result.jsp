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
    <div id="shopping">
        <div class="shadow">
            <em class="corner lb"></em>
            <em class="corner rt"></em>
            <div class="box">
                <div class="msg">
                    <p>恭喜：购买成功！</p>
                    <p>正在进入首页...</p>
                    <script type="text/javascript">
                        setTimeout("location.href='/product/doIndex.html/1'", 3000);
                    </script>
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
