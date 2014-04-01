<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/document.css">
    <title>ONE-Platform</title>
    <%@ include file="/static/layouts/base.jsp"%>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/guide.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/filterable-list.css">
</head>
<body>
<!-- header -->
<%@ include file="/static/layouts/header.jsp"%>
<div class="bs-docs-header" id="content">
    <div class="container">
        <h2>指南</h2>
        <p class="lead">在这里可以找到所有平台下的产品</p>
    </div>
</div>

<div class="body--container container-fluid ">
<div class="main-body--wrapper">
<div class="row-fluid content-container--wrapper guides-section--container">
<div class="content-container--header">
    <input id="doc_filter" class="content-container--filter" type="text" style="color: rgb(0, 0, 0); font-style: normal;" placeholder="Find a guide..." onfocus="this.value=''; this.style.color='#000'; this.style.fontStyle='normal'; this.onfocus='';" autofocus="">
</div>
<div class="content-container--body">
<div data-filterable-container="">
    <div class="content-section-title--container">
        <%--<div class="pull-left icon icon-gs-guides"></div>--%>
        <h3 class="content-section-title no-border no-margin">解决方案</h3>
        <p class="content-section-sub-title">我们为行业提供完整的技术架构解决方案.</p>
    </div>
<%--<div class="guide--container" data-filterable="Building a RESTful Web Service Learn how to create a RESTful web service with Spring. [rest]"><a name="gs">--%>
<%--</a><a class="guide--title" href="http://spring.io/guides/gs/rest-service/">系统应用集成解决方案</a>--%>
    <%--<p class="guide--subtitle">解决多个系统交互之间的问题</p>--%>
<%--</div>--%>
<%--<div class="guide--container" data-filterable="Scheduling Tasks Learn how to schedule tasks with Spring. [scheduling]">--%>
    <%--<a class="guide--title" href="http://spring.io/guides/gs/scheduling-tasks/">OpenAPI解决方案</a>--%>
    <%--<p class="guide--subtitle">一次开发多次应用</p>--%>
<%--</div>--%>
<%--<div class="guide--container" data-filterable="Detecting a Device Learn how to use Spring to detect the type of device that is accessing your web site. []">--%>
    <%--<a class="guide--title" href="http://spring.io/guides/gs/device-detection/">大数据解决方案</a>--%>
    <%--<p class="guide--subtitle">大数据的处理和存储</p>--%>
<%--</div>--%>
</div>
</div>
<div class="content-container--body">
    <div data-filterable-container="">
        <div class="content-section-title--container">
            <h3 class="content-section-title no-margin">指导教程</h3>
            <p class="content-section-sub-title">只需花费15-30分钟,就可以对平台的组件进行快读的入门</p>
        </div>
        <%--<div class="guide--container" data-filterable="Designing and Implementing RESTful Web Services with Spring Learn how to design and implement RESTful web services with Spring">--%>
            <%--<a class="guide--title" href="http://spring.io/guides/tutorials/rest/">用maven构建java工程</a>--%>
            <%--<p class="guide--subtitle">学习如何用maven构建Java工程</p>--%>
        <%--</div>--%>
        <%--<div class="guide--container" data-filterable="Data Access with Spring Learn how to use multiple data stores to persist and retrieve data with Spring">--%>
            <%--<a class="guide--title" href="http://spring.io/guides/tutorials/data/">任务调度</a>--%>
            <%--<p class="guide--subtitle">学习如何实现一个定时任务</p>--%>
        <%--</div>--%>
        <%--<div class="guide--container" data-filterable="Designing and Implementing a Web Application with Spring Learn how to design and implement a web app with Spring">--%>
            <%--<a class="guide--title" href="http://spring.io/guides/tutorials/web/">加快页面传输效率</a>--%>
            <%--<p class="guide--subtitle">学习如何让一个页面加载起来更快速</p>--%>
        <%--</div>--%>
    </div>
</div>
</div>
</div>
</div>


<%@ include file="/static/layouts/footer.jsp"%>
</body>
</html>