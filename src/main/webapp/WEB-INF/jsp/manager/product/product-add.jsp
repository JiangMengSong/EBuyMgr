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
            <form id="productAdd" action="manage-result.html">
                <table class="form">
                    <tr>
                        <td class="field">商品名称(*)：</td>
                        <td><input type="text" class="text" name="productName" value="铁三角 Audio-Technica ATH-EQ300M-SV 银色 挂耳式耳机" /><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">描述：</td>
                        <td><input type="text" class="text" name="productDetail" /></td>
                    </tr>
                    <tr>
                        <td class="field">所属分类：</td>
                        <td>
                            <select name="parentId">
                                <option value="1">电器</option>
                                <option value="3">├ 电器</option>
                                <option value="3">└ 电器</option>
                                <option value="2">衣服</option>
                                <option value="3">├ 电器</option>
                                <option value="3">└ 电器</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">商品价格(*)：</td>
                        <td><input type="text" class="text tiny" name="productPrice" /> 元<span></span></td>
                    </tr>

                    <tr>
                        <td class="field">库存(*)：</td>
                        <td><input type="text" class="text tiny" name="productNumber" /><span></span></td>
                    </tr>
                    <tr>
                        <td class="field">商品图片(*)：</td>
                        <td><input type="file" class="text" name="photo" /><span></span></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label class="ui-blue"><input type="submit" name="submit" value="确定" /></label></td>
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
</body>
</html>
