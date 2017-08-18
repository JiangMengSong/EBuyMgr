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
        <c:if test="${empty comment}">
        location.href="/user/toManager.html";
        </c:if>
    </script>
</head>
<body>
<%@include file="../common/title.jsp"%>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp"%>
    <div class="main">
        <h2>回复留言</h2>
        <div class="manage">
            <form method="post" id="commentForm">
                <input type="hidden" name="commentid" value="${comment.commentid}">
                <table class="form">
                    <tr>
                        <td class="field">留言编号：</td>
                        <td>${comment.commentid}</td>
                    </tr>
                    <tr>
                        <td class="field">留言姓名：</td>
                        <td>${comment.user.username}</td>
                    </tr>
                    <tr>
                        <td class="field">留言内容：</td>
                        <td>${comment.commentcontent}</td>
                    </tr>
                    <tr>
                        <td class="field">回复内容：</td>
                        <td><textarea id="replyContent" name="replycontent">${comment.replycontent}</textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <label class="ui-blue">
                                <input type="button" id="subBtn" name="submit" value="保存" />
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
            if(isEmpty($("#replyContent").val())){
                alert("回复内容不能为空")
                return false;
            }
            $.ajax({
                url:"/mgr/comment/doOperaComment.html",
                data:$("#commentForm").serialize(),
                type:"post",
                dataType:"json",
                success:function (result) {
                    if (result.flag){
                        alert("保存成功");
                        location.href="/mgr/comment/getComment.html/1";
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
