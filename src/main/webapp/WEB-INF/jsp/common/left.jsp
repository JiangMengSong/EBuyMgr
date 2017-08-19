<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="lefter">
    <div class="box">
        <h2>商品分类</h2>
        <dl>
            <c:forEach items="${categoryList}" var="category">
                <c:if test="${category.categoryparentid == 0}">
                    <dt>${category.categoryname}</dt>
                    <c:forEach items="${categoryList}" var="categorys">
                        <c:if test="${categorys.categoryparentid == category.categoryid}">
                            <dd>
                                <a href="javascript:void(0)" onclick="goToPage(1,${categorys.categoryid})">${categorys.categoryname}</a>
                            </dd>
                        </c:if>
                    </c:forEach>
                </c:if>
            </c:forEach>
        </dl>
    </div>
    <div class="spacer"></div>
    <div class="last-view">
        <h2>最近浏览</h2>
        <dl class="clearfix">
            <dt><img src="${project}/static/images/product/10_small.jpg"/></dt>
            <dd><a href="product-view.html" target="_self">利仁2018M福满堂电饼铛 好用实惠</a><a href="product-view.html"></a>
            </dd>
            <dt>&nbsp;</dt>
            <dd>&nbsp;</dd>
        </dl>
    </div>
</div>
