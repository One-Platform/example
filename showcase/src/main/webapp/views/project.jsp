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
    <style>
        .bs-docs-featurette .lead {
            margin-left: auto;
            margin-right: auto;
            max-width: 97%;
        }
    </style>
</head>
<body>
<!-- header -->
<%@ include file="/static/layouts/header.jsp"%>
<div class="bs-docs-header" id="content">
    <div class="container">
        <h2>平台</h2>
        <p class="lead">在这里可以找到所有平台下的产品</p>
    </div>
</div>

<div class="bs-docs-featurette">

    <div class="container">
        <div class="row">
            <p class="lead text-left" id="develop">组件</p>
            <div class="col-sm-4" >
                <a class="project--container project--container--link" href="${ctx}/project/web">
                    <i class="icon-leaf icon-5x" style="color:#563d7c;"></i>
                    <h3>ONE-WEB</h3>
                    <p>一个优雅的RESTful风格的web框架</p>
                </a>
            </div>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-question-sign icon-5x" style="color:#563d7c;"></i>--%>
                    <%--<h3>缓存服务</h3>--%>
                    <%--<p>无论你是新手还是有经验的开发人员，都可以根据我们的教程用one平台来设计您的产品.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>键盘注册</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="${ctx}/project/web">--%>
                    <%--<i class="icon-globe icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>WEB框架</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>键盘注册</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>键盘注册</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>

            <%--<div style="border-bottom: 1px solid #E5E5E5;padding-top: 57%;margin-bottom: 45px"></div>--%>
            <%--<p class="lead text-left" id="test">测试</p>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>键盘注册</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>键盘注册</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>键盘注册</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>键盘注册</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>键盘注册</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
                <%--<a class="project--container project--container--link" href="#">--%>
                    <%--<i class="icon-leaf icon-5x ic" style="color:#563d7c;"></i>--%>
                    <%--<h3>键盘注册</h3>--%>
                    <%--<p>从设计到管理，开发到测试，您都可以在我们的平台得到支持.</p>--%>
                <%--</a>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<hr class="half-rule">--%>
        <%--<p class="lead">ONE平台是一个开源平台,构建,开发和维护都基于GitHub.</p>--%>
    </div>
</div>
<!-- Footer -->
<%@ include file="/static/layouts/footer.jsp"%>

</body>
</html>