<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
          content="Bootstrap, a sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development.">
    <meta name="keywords"
          content="HTML, CSS, JS, JavaScript, framework, bootstrap, front-end, frontend, web development">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">

    <title>

        快速构建Restful风格的WEB工程

    </title>

    <!-- Bootstrap core CSS -->
    <link href="${ctx}/static/css/bootstrap/bootstrap.css" rel="stylesheet">

    <!-- Documentation extras -->
    <link href="${ctx}/static/css/bootstrap/docs.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png">
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png">

    <script>
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-146052-10']);
        _gaq.push(['_trackPageview']);
        (function () {
            var ga = document.createElement('script');
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();
    </script>

</head>
<body>

<%--header--%>
<%@ include file="/static/layouts/header.jsp" %>


<div class="bs-docs-header" id="content">
    <div class="container">
        <h1>Web Framework</h1>
    </div>
</div>

<div class="container bs-docs-container">

<div class="row">
<div class="col-md-9" role="main">

<div class="bs-docs-section">
    <h1>快速构建Restful风格的Web工程</h1>
<p>	通过这个教程，我们来学习怎么使用one-mvc快速构建一个Restfule风格的Web工程</p>
<hr />
<h2>我们需要的</h2>
<ul>
<li>大约需要您20分钟的时间</li>
<li>您需要准备一个IDE工具，如Eclipse</li>
<li>您需要准备好jdk环境，JDK1.5或者更新的版本</li>
<li>Maven3.0环境</li>
</ul>
<h2>如何完成这个教程</h2>
<ul>
<li>如果您没使用过Maven,那么请先到移步到<a href="#">Maven环境搭建及使用</a>来简单了解一下maven。</li>

<li>如果您已经对maven有了一定的了解，那么我们就可以按照下边的步骤来快速构建一个Restful风格的Web工程了。</li>
</ul>
<h2>建立项目</h2>
<ol>
<li>首先，您需要建立一个maven的工程，并建立web目录，完成后的目录结构如下图:<p><img src="http://i.imgur.com/PFnb7NK.png" /></p></li>
<li>
<p>添加pom依赖：</p>
<pre><code>&lt;!--下边是jar包依赖--&gt;
&lt;dependency&gt;
    &lt;groupId&gt;com.sinosoft.one&lt;/groupId&gt;
    &lt;artifactId&gt;mvc&lt;/artifactId&gt;
    &lt;version&gt;1.0.3-SNAPSHOT&lt;/version&gt;
&lt;/dependency&gt;
&lt;dependency&gt;
        &lt;groupId&gt;javax.servlet&lt;/groupId&gt;
        &lt;artifactId&gt;jstl&lt;/artifactId&gt;
        &lt;version&gt;1.2&lt;/version&gt;
    &lt;/dependency&gt;
&lt;dependency&gt;
    &lt;groupId&gt;javax.servlet&lt;/groupId&gt;
    &lt;artifactId&gt;servlet-api&lt;/artifactId&gt;
    &lt;version&gt;2.5&lt;/version&gt;
    &lt;scope&gt;provided&lt;/scope&gt;
&lt;/dependency&gt;
&lt;dependency&gt;
    &lt;groupId&gt;javax.servlet&lt;/groupId&gt;
    &lt;artifactId&gt;jsp-api&lt;/artifactId&gt;
    &lt;version&gt;2.0&lt;/version&gt;
    &lt;scope&gt;provided&lt;/scope&gt;
&lt;/dependency&gt;


&lt;!--这是插件依赖--&gt;
&lt;plugin&gt;
    &lt;groupId&gt;org.apache.maven.plugins&lt;/groupId&gt;
    &lt;artifactId&gt;maven-compiler-plugin&lt;/artifactId&gt;
    &lt;version&gt;2.5.1&lt;/version&gt;
&lt;/plugin&gt;
&lt;plugin&gt;
    &lt;groupId&gt;org.apache.maven.plugins&lt;/groupId&gt;
    &lt;artifactId&gt;maven-resources-plugin&lt;/artifactId&gt;
    &lt;version&gt;2.5&lt;/version&gt;
&lt;/plugin&gt;
&lt;plugin&gt;
    &lt;groupId&gt;org.codehaus.mojo&lt;/groupId&gt;
    &lt;artifactId&gt;tomcat-maven-plugin&lt;/artifactId&gt;
     &lt;version&gt;1.1&lt;/version&gt;
    &lt;configuration&gt;
        &lt;uriEncoding&gt;UTF-8&lt;/uriEncoding&gt;
        &lt;path&gt;/showcase&lt;/path&gt;
        &lt;port&gt;9000&lt;/port&gt;
    &lt;/configuration&gt;
&lt;/plugin&gt;
</code></pre>

</li>
<li>
<p>修改web.xml配置文件</p>
<pre><code>&lt;!--添加MvcFilter配置 --&gt;
&lt;filter&gt;
&lt;filter-name&gt;mvcFilter&lt;/filter-name&gt;
&lt;filter-class&gt;com.sinosoft.one.mvc.MvcFilter&lt;/filter-class&gt;
&lt;/filter&gt;
&lt;filter-mapping&gt;
    &lt;filter-name&gt;mvcFilter&lt;/filter-name&gt;
    &lt;url-pattern&gt;/*&lt;/url-pattern&gt;
    &lt;dispatcher&gt;REQUEST&lt;/dispatcher&gt;
    &lt;dispatcher&gt;FORWARD&lt;/dispatcher&gt;
    &lt;dispatcher&gt;INCLUDE&lt;/dispatcher&gt;
&lt;/filter-mapping&gt;
</code></pre>

</li>
<li>
<p>创建一个Restfule风格的Controller</p>
<pre><code>//这里定义我们控制器的访问路径，可以指定多个，如果你需要了解更详细的信息，可以参考one-mvc帮助文档
//LoginController存放在com.sinosoft.one.showcase.controllers目录下
@Path(&quot;&quot;)
public class LoginController {

public String login(@Param(&quot;name&quot;) String name,@Param(&quot;password&quot;)String password，Invocation inv){
//这里我们仅仅使用one-mvc的特性即可，就不连接数据库了
    System.out.println(name);
    System.out.println(password);

    //我们把前台传递过来的参数再返回回去
    inv.addModel(&quot;name&quot;, name);
    inv.addModel(&quot;password&quot;, password);
    return &quot;welcome&quot;;
}
</code></pre>

</li>
<li>
<p>编写jsp页面<p>这里我们用到了index.jsp和welcome.jsp，下边我们来搞定他们。</p>
	<p>index.jsp放在webapp目录下，welcome.jsp存放的webapp/views目录下</p></p>
<pre><code>&lt;!--首先是index.jsp,我们来写一个简单的form表单，来介绍下怎么访问我们的loginController--&gt;
&lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=UTF-8&quot;
    pageEncoding=&quot;UTF-8&quot;%&gt;
&lt;%@ taglib prefix=&quot;c&quot; uri=&quot;http://java.sun.com/jsp/jstl/core&quot;%&gt;
&lt;c:set var=&quot;ctx&quot; value=&quot;&lt;%=request.getContextPath()%&gt;&quot;&gt;&lt;/c:set&gt;
&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot; &quot;http://www.w3.org/TR/html4/loose.dtd&quot;&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot;&gt;
&lt;title&gt;&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;div&gt;
        &lt;!-- 这里定义的就是我们的action访问路径，没错，和普通的form表单没什么区别 --&gt;
        &lt;form action=&quot;${ctx}/login&quot; method=&quot;get&quot;&gt;
            &lt;table&gt;
                &lt;tr&gt;
                    &lt;!-- 这里我们定义了待绑定的参数，one-mvc默认是根据name绑定的 --&gt;
                    &lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;name&quot;&gt;&lt;/td&gt;
                &lt;/tr&gt;
                &lt;tr&gt;
                    &lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;password&quot;&gt;&lt;/td&gt;
                &lt;/tr&gt;
                &lt;tr&gt;
                    &lt;td&gt;&lt;input type=&quot;submit&quot; value=&quot;登陆&quot;&gt;&lt;/td&gt;
                &lt;/tr&gt;
            &lt;/table&gt;
        &lt;/form&gt;         
    &lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</code></pre>

<p>下边我们来写我们的welcome.jsp页面</p>
<pre><code>&lt;!--我们来看一下怎么接收后台返回的结果--&gt;
&lt;body&gt;
&lt;!--我们一般会用${xx}的方式来回去后台返回的结果 --&gt;
&lt;span&gt;${name},您已经登陆了。&lt;/span&gt;
&lt;/body&gt;
</code></pre>

</li>
</ol>
<h3>运行工程</h3>
<h3>总结</h3>
<p>如果您完成了这个教程，别着急，这仅仅是开始，后边还有更精彩的呢。		</p>
    

</div>

</div>

</div>
</div>
<!-- Footer ================================================== -->
<%@ include file="/static/layouts/footer.jsp"%>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${ctx}/static/js/jquery-1.11.0.js"></script>
<script src="${ctx}/static/js/bootstrap/bootstrap.min.js"></script>
<script src="${ctx}/static/js/bootstrap/docs.js"></script>

</body>
</html>
