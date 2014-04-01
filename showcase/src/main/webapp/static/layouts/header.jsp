<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!-- Docs master nav -->
<header class="navbar navbar-static-top bs-docs-nav" id="top" role="banner">
    <div class="container" >
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${ctx}/index">ONE</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <nav class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" role="navigation">
        <ul class="nav navbar-nav">
            <li><a href="${ctx}/document">文档</a></li>
            <li><a href="${ctx}/guides">指南</a></li>
            <li class="dropdown">

                <a href="#" class="dropdown-toggle" data-toggle="dropdown">项目 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <%--<li><a href="">组件</a></li>--%>
                    <%--<li class="divider"></li>--%>
                    <li><a href="${ctx}/project">开发</a></li>
                    <%--<li class="divider"></li>--%>
                    <%--<li><a href="#test">测试</a></li>--%>
                    <%--<li class="divider"></li>--%>
                    <%--<li><a href="#">管理</a></li>--%>
                    <%--<li class="divider"></li>--%>
                    <%--<li><a href="#">运营</a></li>--%>
                </ul>
            </li>
            <li><a href="${ctx}/forum">论坛</a></li>
        </ul>
    </nav><!-- /.navbar-collapse -->
    </div>
</header>
