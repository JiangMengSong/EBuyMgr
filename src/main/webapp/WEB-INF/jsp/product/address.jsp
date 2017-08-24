<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/20
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>易买网 - 首页</title>
        ${jquery_3}${js_common}${js_function}${cs_stylee}
        <script>
            function insertOrder(productid) {
                if(isEmpty($("input:radio[name='address.addressid']:checked").val())){
                    alert('请选择地址！')
                    return false;
                }

                $.ajax({
                    url:"/product/insertOrder.html/"+productid,
                    data:$("#addForm").serialize(),
                    async:false,
                    dateType:"json",
                    type:"post",
                    success: function (result) {
                        if (JSON.parse(result).flag) {
                            alert('购买成功');
                            location.href = "/product/doResult.html";
                        } else alert("购买失败");
                    }, error: function () {
                        alert("购买错误")
                    }
                });
            }
        </script>
    </head>
</head>
<body>
<%@include file="../common/title.jsp" %>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp" %>
    <div id="news" class="right-main">
        <h1>&nbsp;</h1>
        <div class="content">
            <form id="addForm" method="post">
                <input type="hidden" name="userid" value="${user.userid}">
                <input type="hidden" name="productid" value="${productid}">

                收货地址:<input name="addr" id="addr" type="button"  value="添加新地址" />
                <span id="span"></span> <br />
                <c:forEach items="${addlist}" var="list">
                    <input name="address.addressid" id="address1" type="radio" value="${list.addressid}" /><span>${list.addressname}</span><br />
                </c:forEach>
                <div class="button">  <input type="button" onclick="insertOrder(${productid})" value="购买"/>    </div>
            </form>
        </div>
    </div>
            <div class="clear"></div>
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
