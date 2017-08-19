<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="pager">
    <ul class="clearfix">
        <c:if test="${pages.pageIndex > 1}">
            <li><a href="javascript:void(0);" onclick="goToPage(1,${categoryId})">首页</a></li>
            <c:if test="${pages.pageIndex > 2}">
                <li>...</li>
            </c:if>
            <li><a href="javascript:void(0)" onclick="goToPage(${pages.pageIndex-1},${categoryId})">${pages.pageIndex-1}</a></li>
        </c:if>
        <li class="current">${pages.pageIndex}</li>
        <c:if test="${pages.pageIndex < pages.totalPage}">
            <li><a href="javascript:void(0)" onclick="goToPage(${pages.pageIndex+1},${categoryId})">${pages.pageIndex+1}</a></li>
            <c:if test="${pages.pageIndex < pages.totalPage - 1}">
                <li>...</li>
            </c:if>
            <li><a href="javascript:void(0)" onclick="goToPage(${pages.totalPage},${categoryId})">尾页</a></li>
        </c:if>
    </ul>
</div>
