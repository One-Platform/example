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
    <title>ONE-Platform</title>
    
    <%@ include file="/static/layouts/base.jsp"%>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png" />
</head>
<body>

<!-- header -->
<%@ include file="/static/layouts/header.jsp"%>
<!-- Page content of course! -->
<main class="bs-docs-masthead" id="content" role="main">
    <div class="container">
        <span class="bs-docs-booticon bs-docs-booticon-lg bs-docs-booticon-outline">ONE</span>
        <!-- <h1>Bootstrap</h1> -->
        <p class="lead">技术创造价值. </p>
        <p class="lead">让我们为行业应用创造更好的技术解决方案. </p>
    </div>
</main>

<div class="bs-docs-featurette">
    <div class="container">
        <h2 class="bs-docs-featurette-title">专为大家,无处不在</h2>
        <p class="lead">从解决方案到技术细节,您都可以在这里找到答案</p>

        <hr class="half-rule">
        <div class="row">
            <div class="col-sm-4" >
               <a class="project--container project--container--link" href="${ctx}/document">
                <i class="icon-book icon-5x" style="color:#563d7c;"></i>
                <h3>文档</h3>
                <p>提供架构设计,技术组件,开发环境,运营,测试,管理等相关文档</p>
               </a>
            </div>
            <div class="col-sm-4">
                <a class="project--container project--container--link" href="${ctx}/guides">
                <i class="icon-question-sign icon-5x" style="color:#563d7c;"></i>
                <h3>指南</h3>
                <p>无论你是新手还是有经验的开发人员，都可以根据我们的教程用one平台来设计您的产品</p>
                </a>
            </div>
            <div class="col-sm-4">
                <a class="project--container project--container--link" href="${ctx}/project">
                <i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>
                <h3>平台</h3>
                <p>从设计到管理，开发到测试，您都可以在我们的平台得到支持</p>
                </a>
            </div>
        </div>

        <hr class="half-rule">

        <p class="lead">ONE平台是一个开源平台,构建,开发和维护都基于GitHub</p>
    </div>
</div>

<div class="bs-docs-featurette">
    <div class="container">
        <h2 class="bs-docs-featurette-title">成功案例</h2>
        <p class="lead">已有多个成熟产品选择我们</p>

        <hr class="half-rule">

        <div class="row bs-docs-featured-sites">

            <div class="col-sm-3">
                <a href="http://e-picc.com.cn" target="_blank" title="Little">
                    <img src="${ctx}/static/images/picc.png" alt="Little" class="img-responsive">
                </a>
            </div>

            <div class="col-sm-3">
                <a href="http://expo.getbootstrap.com/2014/02/10/engine-yard/" target="_blank" title="Engine Yard">
                    <img src="http://expo.getbootstrap.com/screenshots/engine-yard.jpg" alt="Engine Yard" class="img-responsive">
                </a>
            </div>

            <div class="col-sm-3">
                <a href="http://expo.getbootstrap.com/2014/02/04/webflow/" target="_blank" title="Webflow">
                    <img src="http://expo.getbootstrap.com/screenshots/webflow.jpg" alt="Webflow" class="img-responsive">
                </a>
            </div>

            <div class="col-sm-3">
                <a href="http://expo.getbootstrap.com/2013/05/09/sentry/" target="_blank" title="Sentry">
                    <img src="http://expo.getbootstrap.com/screenshots/sentry.jpg" alt="Sentry" class="img-responsive">
                </a>
            </div>

        </div>

        <%--<hr class="half-rule">--%>

        <%--<p class="lead">.</p>--%>
        <%--<a href="http://expo.getbootstrap.com" class="btn btn-outline btn-lg">ONE</a>--%>
    </div>
</div>
<!-- Footer -->
<%@ include file="/static/layouts/footer.jsp"%>


</body>
</html>
