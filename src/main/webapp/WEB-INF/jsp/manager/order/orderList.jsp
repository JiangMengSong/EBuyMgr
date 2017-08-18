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
        function goToPage(pageIndex) {
            $("#orderForm").attr("action","/order/getOrder.html/" + pageIndex);
            $("#orderForm").submit();
        }
    </script>
</head>
<body>
<%@include file="../common/title.jsp" %>
<div id="main" class="wrap">
    <%@include file="../common/left.jsp" %>
    <div class="main">
        <h2>订单管理</h2>
        <div class="manage">
            <div class="search">
            </div>
            <div class="spacer"></div>
            <form id="orderForm" method="post"  action="/order/getOrder.html/1">
                订单号：<input type="text" value="${orderForm.orderserialnumber}" class="text" name="orderserialnumber" id="entityId" />
                订货人：<input type="text" value="${orderForm.user.username}" class="text" name="user.username" />
                <label class="ui-blue"><input type="submit" name="submit" value="查询" /></label>
            </form>
            <table class="list">
                <c:if test="${pages.pageList.size() < 1}">
                    <tr align="center">
                        <td><h1>未查询到订单!</h1></td>
                    </tr>
                </c:if>
                <c:if test="${pages.pageList.size() > 0}">
                    <c:forEach items="${pages.pageList}" var="order">
                        <tr>
                            <th colspan="2">单号:${order.orderid}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 时间:${order.ordercreatetime.toString()}</th>
                            <th colspan="2">状态:收货确认</th>
                        </tr>
                        <c:forEach items="${orderDetailMap.get(order.orderid)}" var="orderDetail" varStatus="i">
                            <tr>
                                <td class="first w4 c"><img src="../images/product/1.jpg" />${orderDetail.product.productname}</td>
                                <td >${orderDetail.product.productprice}</td>
                                <td>${orderDetail.orderquantity}</td>
                                <c:if test="${i.index == 0}">
                                    <td class="w1 c" rowspan="${orderDetailMap.get(order.orderid).size()}"> 总计：${order.ordercost}</td>
                                </c:if>
                            </tr>
                        </c:forEach>
                    </c:forEach>
                </c:if>
            </table>
        </div>
    </div>
    <div class="clear"></div>
    <%@include file="../common/pager.jsp" %>
</div>
<div id="footer">
    Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>
