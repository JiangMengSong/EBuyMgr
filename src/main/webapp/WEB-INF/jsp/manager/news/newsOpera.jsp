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
<%@include file="../common/title.jsp" %>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp" %>
    <div class="main">
        <h2>修改新闻</h2>
        <div class="manage">
            <form method="post" id="newsForm">
                <input type="hidden" name="newsid" value="${news.newsid}">
                <table class="form">
                    <tr>
                        <td class="field">新闻标题:</td>
                        <td><input class="text" id="newstitle" name="newstitle" value="${news.newstitle}"/></td>
                    </tr>
                    <tr>
                        <td class="field">新闻内容：</td>
                        <td><textarea id="newscontent" name="newscontent">${news.newscontent}</textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <label class="ui-blue">
                                <input type="button" id="subBtn" name="submit" value="保存"/>
                            </label>
                        </td>
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

<script>
    $(function () {
        $("#subBtn").click(function () {
            if(isEmpty($("#newstitle").val())){
                alert("标题不能为空")
                return false;
            }

            if(isEmpty($("#newscontent").val())){
                alert("内容不能为空")
                return false;
            }
            $.ajax({
                url:"/mgr/news/doOperaNews.html",
                data:$("#newsForm").serialize(),
                type:"post",
                dataType:"json",
                success:function (result) {
                    if (result.flag){
                        alert("保存成功");
                        location.href="/mgr/news/getNews.html";
                    }else alert("保存失败");
                },error:function () {
                    alert("保存出错")
                }
            })
        })
    })
</script>
</body>
</html>
