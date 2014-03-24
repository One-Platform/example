<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- form请求时，需要引用的加密标签 -->
<%@ taglib uri="http://mvc.one.sinosoft.com/crypto/form" prefix="f" %>
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
    <title>加密解密</title>

    <!-- Bootstrap core CSS
     注意：此文件跟随官网最新版本更新，随时会有改变。建议使用下面v3.0.3版本的CDN链接！
    -->
    <link href="${ctx}/static/css/bootstrap/bootstrap.css" rel="stylesheet">

    <!-- Documentation extras -->
    <link href="${ctx}/static/css/bootstrap/docs.css" rel="stylesheet" />
    <link href="${ctx}/static/css/bootstrap/github.min.css" rel="stylesheet" />
    <link href="${ctx}/static/css/bootstrap/bootstrap_master.css" rel="stylesheet" />
    <!--[if lt IE 9]><script src="../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${ctx}/static/js/bootstrap/html5shiv.min.js"></script>
    <script src="${ctx}/static/js/bootstrap/respond.min.js"></script>
    <![endif]-->
    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png" />
    <link href="${ctx}/static/css/crypto/login.css" rel="stylesheet">
</head>
<body>
<a class="sr-only" href="#content">Skip to main content</a>

<!-- Docs master nav -->
<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <a href="#" class="navbar-brand">Bootstrap</a> </div>
        <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <ul class="nav navbar-nav">
                <li class="active"> <a href="${ctx}/crypto/doc">加密解密</a> </li>
                <li> <a href="#">CSS</a> </li>
                <li> <a href="#">组件</a> </li>
                <li> <a href="#">JavaScript插件</a> </li>
                <li> <a href="#">定制</a> </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li> <a href="#">关于</a> </li>
            </ul>
        </nav>
    </div>
</header>

<!-- Docs page layout -->
<div class="bs-header" id="content">
    <div class="container">
        <h1>加密解密</h1>
        <p>详细介绍加密解密组件，包括使用场景、案例，等等。</p>
    </div>
</div>

	<!-- Callout for the old docs link -->
	<div class="container bs-docs-container">
		<div class="row">
			<div class="col-md-3">
				<div class="bs-sidebar hidden-print" role="complementary">
					<ul class="nav bs-sidenav">
						<li><a href="#bgUncrypto">解密结果</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-9" role="main">
				<div class="container">
					<form class="form-signin" id="frontCrypto">
						<h6 class="form-signin-heading" id="bgUncrypto">Form请求加密，后端解密后的数据如下：</h6>
						用户名：<input type="text" class="form-control" value="${loginName}"> 
						密码：<input type="text" class="form-control" value="${password}">
						描述：<textarea class="form-control">${description}</textarea>
						<p></p>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer
    ================================================== -->
<footer class="bs-footer" role="contentinfo">
    <div class="container">
        <p>Designed and built with all the love in the world by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a href="http://twitter.com/fat" target="_blank">@fat</a>.</p>
        <p>Code licensed under <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>, documentation under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
        <ul class="footer-links">
            <li>当前版本： v3.0.3</li>
            <li class="muted">&middot;</li>
            <li><a href="http://v2.bootcss.com/">Bootstrap 2.3.2 中文文档</a></li>
            <li class="muted">&middot;</li>
            <li><a href="http://blog.getbootstrap.com">官方博客</a></li>
            <li class="muted">&middot;</li>
            <li><a href="https://github.com/twbs/bootstrap/issues?state=open">Issues</a></li>
            <li class="muted">&middot;</li>
            <li><a href="https://github.com/twbs/bootstrap/releases">Releases</a></li>
        </ul>
    </div>
</footer>

<!-- JS and analytics only. -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${ctx}/static/js/jquery-1.11.0.js"></script>

<!-- Bootstrap core JS file
 注意：此文件跟随官网最新版本更新，随时会有改变。建议使用下面v3.0.3版本的CDN链接！
-->
<script src="${ctx}/static/js/bootstrap/bootstrap.js"></script>

<!-- Hi，如果你要在自己的网站上引入bootstrap JS文件的话，请使用当前最新版本v3.0.3的CDN链接，页面加载速度会更快！
<script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
-->

<script src="${ctx}/static/js/bootstrap/holder.min.js"></script>
<script src="${ctx}/static/js/bootstrap/highlight.min.js"></script>
<script >hljs.initHighlightingOnLoad();</script>
<script src="${ctx}/static/js/bootstrap/application.js"></script>
<!-- Analytics
================================================== -->
<script type="text/javascript">

    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");

    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F3d8e7fc0de8a2a75f2ca3bfe128e6391' type='text/javascript'%3E%3C/script%3E"));

</script>
</body>
</html>
