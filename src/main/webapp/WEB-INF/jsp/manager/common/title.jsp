<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="../../../statics/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript" src="../../../statics/scripts/function.js"></script>
<link type="text/css" rel="stylesheet" href="../../../statics/css/style.css"/>
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
