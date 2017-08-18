<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="project" value="${pageContext.request.contextPath}" />
<c:set var="jquery_3" value="<script type='text/javascript' src='${project}/static/scripts/jquery-3.2.1.js'></script>"/>
<c:set var="js_function" value="<script type='text/javascript' src='${project}/static/scripts/function.js'></script>"/>
<c:set var="js_common" value="<script type='text/javascript' src='${project}/static/scripts/common.js'></script>"/>
<c:set var="cs_stylee" value="<link type='text/css' rel='stylesheet' href='${project}/static/css/style.css'/>"/>
<c:set var="img_logo" value="${project}/static/images/logo.gif"/>