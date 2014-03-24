<%--
  Created by IntelliJ IDEA.
  User: bin
  Date: 14-3-24
  Time: 下午3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>技术平台论坛</title>
    <%@ include file="/static/layouts/base.jsp"%>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png" />
</head>

<body>
<%@ include file="/static/layouts/header.jsp"%>

<a id="nabblelink" href="http://sinongo.60898.x6.nabble.com/">SinoNGO</a>
</body>
<script src="http://sinongo.60898.x6.nabble.com/embed/f1"></script>
<!-- Footer -->
<%@ include file="/static/layouts/footer.jsp"%>
</html>
