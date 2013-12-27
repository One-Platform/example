<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <a href="#" class="navbar-brand">ONE-Platform</a> </div>
        <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <ul class="nav navbar-nav">
            
            	<li class="dropdown">
            		<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">组件<b class="caret"></b></a>
            		<ul class="dropdown-menu">
                		<li>
                  			<a href="${ctx}/component/ui" target="_blank">前端</a>
		              </li>
		              <li>
		                <a href="${ctx}/component/app" target="_blank">应用层</a>
		              </li>
		              <li>
		                <a href="${ctx}/component/service" target="_blank">服务</a>
		              </li>
		              <li>
		                <a href="${ctx}/component/data" target="_blank">数据</a>
		              </li>
              		</ul>
            	</li>
            	<li>
            		<a href="#">开发</a>
            	</li>
            	<li>
            		<a href="#">测试</a>
            	</li>
            	<li class="dropdown">
            		<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">运营<b class="caret"></b></a>
            		<ul class="dropdown-menu">
                		<li>
                  			<a href="#" target="_blank">日志审计</a>
		              </li>
		              <li>
		                <a href="#" target="_blank">监控系统</a>
		              </li>
		              <li>
		                <a href="#" target="_blank">持续集成</a>
		              </li>
              		</ul>
            	</li>
            	<li class="dropdown">
            		<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">管理<b class="caret"></b></a>
            		<ul class="dropdown-menu">
                		<li>
                  			<a href="#" target="_blank">质量代码检查</a>
		              </li>
		              <li>
		                <a href="#" target="_blank">bug管理</a>
		              </li>
		              <li>
		                <a href="#" target="_blank">版本管理</a>
		              </li>
              		</ul>
            	</li>
            </ul>
        </nav>
    </div>
</header>

