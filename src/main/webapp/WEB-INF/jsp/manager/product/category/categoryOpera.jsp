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
<%@include file="../../common/title.jsp" %>
<div id="main" class="wrap">
    <%@include file="../../common/left.jsp" %>
    <div class="main">
        <h2>修改分类</h2>
        <div class="manage">
            <form method="post" id="categoryForm">
                <table class="form">
                    <tr>
                        <td class="field">父分类：</td>
                        <td>
                            <select name="categoryparentid">
                                <option value="0" selected="selected">根栏目</option>
                                <c:forEach items="${categoryList}" var="categorys">
                                    <option value="${categorys.categoryid}"
                                            <c:if test="${categorys.categoryid == category.categoryparentid}">selected="selected"</c:if>
                                    >${categorys.categoryname}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">分类名称：</td>
                        <td><input type="text" class="text" name="categoryname" value="${category.categoryname}" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <label class="ui-blue">
                                <input type="button" id="subBtn" value="保存" />
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
            $.ajax({
                url:"/mgr/category/doOperaCategory.html",
                data:$("#categoryForm").serialize(),
                type:"post",
                dataType:"json",
                success:function (result) {
                    if (result.flag){
                        alert("保存成功");
                        location.href="/mgr/category/getCategory.html/1";
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
