<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/19
  Time: 11:45
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
        <h2>添加商品</h2>
        <div class="manage">
            <form id="productAdd" enctype="multipart/form-data">
                <input type="hidden" name="productid" value="${product.productid}">
                <table class="form">
                    <tr>
                        <td class="field">商品名称(*)：</td>
                        <td><input type="text" class="text" name="productname" value="${product.productname}" /><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">描述：</td>
                        <td><input type="text" class="text" value="${product.productdescription}" name="productdescription" /></td>
                    </tr>
                    <tr>
                        <td class="field">所属分类：</td>
                        <td>
                            <select name="category.categoryid">
                                <c:forEach items="${categoryList}" var="category1">
                                    <c:if test="${category1.categoryparentid == 0}">
                                        <option value="${category1.categoryid}"
                                                <c:if test="${product.category.categoryid == category1.categoryid}">selected="selected"</c:if>
                                        >${category1.categoryname}</option>
                                        <c:forEach items="${categoryList}" var="category2">
                                            <c:if test="${category2.categoryparentid == category1.categoryid}">
                                                <option value="${category2.categoryid}"
                                                        <c:if test="${product.category.categoryid == category2.categoryid}">selected="selected"</c:if>
                                                >&nbsp;-${category2.categoryname}</option>
                                                <c:forEach items="${categoryList}" var="category3">
                                                    <c:if test="${category3.categoryparentid == category2.categoryid}">
                                                        <option value="${category3.categoryid}"
                                                                <c:if test="${product.category.categoryid == category3.categoryid}">selected="selected"</c:if>
                                                        >&nbsp;&nbsp;&nbsp;&nbsp;+${category3.categoryname}</option>
                                                    </c:if>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </c:forEach>

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">商品价格(*)：</td>
                        <td><input type="text" class="text tiny" value="${product.productprice}" name="productprice" /> 元<span></span></td>
                    </tr>

                    <tr>
                        <td class="field">库存(*)：</td>
                        <td><input type="text" class="text tiny" value="${product.productstock}" name="productstock" /><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">商品图片(*)：</td>
                        <td><input type="file" class="text" name="upload" /><span></span></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <label class="ui-blue">
                                <input type="button" id="subBtn" value="确定" />
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
            var formData = new FormData($("#productAdd")[0]);
            formData.append("user",$("#productAdd").serialize())
            $.ajax({
                url: "/product/doOperaProduct.html",
                data: formData,
                async: true,
                cache: false,
                contentType: false,
                processData: false,
                dataType: "json",
                type: "post",
                success: function (result) {
                    if (result.flag == true) {
                        alert("更新成功");
                        location.href="/product/getProduct.html";
                    } else {
                        alert(result.msg);
                    }
                }, error: function (err) {
                    alert("更新出错");
                }
            })
        })
    })
</script>
</body>
</html>
