<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <a href="${ctx}/platform" class="navbar-brand">ONE-Platform</a> </div>
        <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <ul class="nav navbar-nav">
            	<li>
            		<a href="${ctx}/component/ui" >前端</a>
            	</li>
            	<li>
            		<a href="${ctx}/component/app" >应用层</a>
            	</li>
            	<li>
            		<a href="${ctx}/component/service">服务</a>
            	</li>
            	<li>
            		<a href="${ctx}/component/data">数据</a>
            	</li>
            	
            </ul>
        </nav>
    </div>
</header>