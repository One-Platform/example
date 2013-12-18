<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<title>压缩合并组件介绍</title>
    <link href="${ctx}/static/css/bootstrap/bootstrap.css" rel="stylesheet">
    <%--<link href="${ctx}/wro/core.css" rel="stylesheet" />--%>
    <link href="${ctx}/static/css/bootstrap/docs.css" rel="stylesheet" />
    <link href="${ctx}/static/css/bootstrap/github.min.css" rel="stylesheet" />
    <link href="${ctx}/static/css/bootstrap/bootstrap_master.css" rel="stylesheet" />
    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png" />
    <script type="text/javascript" src="${ctx}/wro/core.js"></script>
    <%--<script src="${ctx}/static/js/bootstrap/application.js"></script>--%>
</head>

<body>
<%@ include file="/static/layouts/header.jsp"%>

<!-- Docs page layout -->
<div class="bs-header" id="content">
    <div class="container">
        <h1>压缩合并</h1>
        <p>介绍wro4j的使用方法、案例等等。</p>
    </div>
</div>

<!-- Callout for the old docs link -->
<div class="container bs-docs-container">
    <div class="row">
        <div class="col-md-3">
            <div class="bs-sidebar hidden-print" role="complementary">
                <ul class="nav bs-sidenav">
                    <li> <a href="#one">1、添加Maven依赖</a></li>
                    <li> <a href="#two">2、配置web.xml</a></li>
                    <li> <a href="#three">3、创建wro.xml</a></li>
                    <li> <a href="#four">4、wro.propertites文件</a></li>
                    <li> <a href="#five">5、JSP代码</a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-9" role="main" style="margin-top: 26px;">
<p id="one">本组件是基于java平台的应用解决Js和Css的动态压缩合并，使http请求次数减少，网络传输的流量消耗尽量减少。<br />
本组件带缓存，可以在修改完js或css文件之后直接上传到服务器，缓存中的压缩合并文件会自动更新。<br />
本组件本着灵活高扩展性的原则，允许用户在文件压缩前和压缩后加入自己的处理类，对相关压缩文件进行处理。</p>
<h4>1、添加Maven依赖</h4>
<p>在maven项目中pom.xml中添加如下依赖即可</p>
<pre><code>pom.xml文件
&lt;dependency&gt;
    &lt;groupId&gt;ro.isdc.wro4j&lt;/groupId&gt;  
    &lt;artifactId&gt;wro4j-core&lt;/artifactId&gt;  
    &lt;version&gt;1.6.0&lt;/version&gt;  
&lt;/dependency&gt;
如果想要直接拷贝Jar包的话可以在根目录下lib文件夹找到所需要的Jar包
</code></pre>
<h4 id="two">2、配置web.xml</h4>
<p>在web.xml中加入如下代码，配置wro4j的监听器：</p>
<pre><code>&lt;filter&gt;  
    &lt;filter-name&gt;WebResourceOptimizer&lt;/filter-name&gt;  
    &lt;filter-class&gt;  
        ro.isdc.wro.http.WroFilter  
    &lt;/filter-class&gt;  
&lt;/filter&gt;  
&lt;filter-mapping&gt;  
    &lt;filter-name&gt;WebResourceOptimizer&lt;/filter-name&gt;  
    &lt;url-pattern&gt;/wro/*&lt;/url-pattern&gt;  
&lt;/filter-mapping&gt;
</code></pre>

<h4 id="three">3、创建wro.xml</h4>
<p>在WEB-INF目录下创建wro.xml。代码如下：</p>
<pre><code>xml代码
&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;  
&lt;groups xmlns=&quot;http://www.isdc.ro/wro&quot;&gt;  
    &lt;group name='core'&gt;  
        &lt;js&gt;/static/mousetrap.js&lt;/js&gt;  
        &lt;js&gt;/static/sinosoft.grid.js&lt;/js&gt;  

        &lt;css&gt;/static/css/base.css&lt;/css&gt;  
        &lt;css&gt;/static/css/sinosoft.grid.css&lt;/css&gt;                      
    &lt;/group&gt;  
&lt;/groups&gt;
</code></pre>

<h4 id="four">4、wro.properties文件</h4>
<p>在WEB-INF目录下创建wro.properties。该文件是本组建的一个配置文件，通过过它我们可以配置一些信息用于开发和调试，
下面我们看一下该文件中有哪些配置选项：<br />
 	<table>
		<tr>
			<td>序号</td>
			<td>属性名</td>
			<td>默认值</td>
			<td>描述</td>
		</tr>
		<tr>
			<td>1</td>
			<td>debug</td>
			<td>true</td>
			<td>可选值为布尔值，true或false。true为调试状态，false为生产状态。</td>	
		</tr>
		<tr>
			<td>2</td>
			<td>gzipResources</td>
			<td>true</td>
			<td>可选值为true或false。true为允许被gziped压缩响应</td>
		</tr>
		<tr>
			<td>3</td>
			<td>resourceWatcherUpdatePeriod</td>
			<td>0</td>
			<td>指定检测资源的频率(以秒计),当值为0的时候，缓存永远不会刷新。当检测到一个资源的改变，含有改变资源的高速缓存将</td>
		</tr>
		<tr>
			<td>4</td>
			<td>cacheUpdatePeriod</td>
			<td>0</td>
			<td>用于指定缓存多长时间(秒)刷新，当次值为0的时候，缓存永远不会刷新。</td>
		</tr>
		<tr>
			<td>5</td>
			<td>disableCache</td>
			<td>false</td>
			<td>true为禁用缓存，false为不禁止缓存</td>
		</tr>
		<tr>
			<td>6</td>
			<td>connectionTimeout</td>
			<td>2000</td>
			<td>url连接外部资源时的超时时间(单位为毫秒)。这是用来确保定位器不会花太多的时间在缓慢的端点。</td>
		</tr>
		<tr>
			<td>7</td>
			<td>ignoreMissingResources</td>
			<td>true</td>
			<td>false时，任何缺少的资源将导致异常，这是有用的，对于识别无效的资源。</td>
		</tr>
	</table></p>
<pre><code>注意：开发模式(debug=true)和正式模式的区别：
（1）在开发模式中你可以在url的最后添加?minimize=false，来使返回的js或css文件不进行合并压缩，在正式模式中则不可以。
（2）在开发模式中任何运行时异常将被记录，并进一步抛出，而在正式模式中它被记录和响应重定向到404。
配置文件实例：
debug=true
resourceWatcherUpdatePeriod=60  
cacheUpdatePeriod=60  
//注意：如果你想达到极致压缩合并，并且改变js变量的名称，请加入下面这些配置，否则不需要下面这些配置：  
managerFactoryClassName=ro.isdc.wro.manager.factory.ConfigurableWroManagerFactory  
preProcessors=cssUrlRewriting,cssImport,semicolonAppender,cssMin  
postProcessors=cssVariables,googleClosureSimple  
uriLocators=servletContext,uri,classpath  
hashStrategy=MD5  
namingStrategy=hashEncoder-CRC32
</code></pre>

<h4 id="five">5、JSP代码</h4>
<p>在WebContent下创建views/hello文件夹，在该文件夹下创建一个jsp文件Hello-Relax.jsp</p>
<pre><code>JSP中引入代码实例
&lt;link type=&quot;text/css&quot; rel=&quot;stylesheet&quot; href=&quot;${ctx}/wro/core.css&quot; /&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;${ctx}/wro/core.js&quot;&gt;&lt;/script&gt;
</code></pre>
        </div>
    </div>
</div>

<!-- Footer ================================================== -->
<%@ include file="/static/layouts/footer.jsp"%>


<%--<script type="text/javascript" src="${ctx}/static/js/jquery-1.7.1.js"></script>--%>
<%--<script src="${ctx}/static/js/bootstrap/bootstrap.js"></script>--%>
<%--<script src="${ctx}/static/js/bootstrap/holder.min.js"></script>--%>
<%--<script src="${ctx}/static/js/bootstrap/highlight.min.js"></script>--%>
<%--<script src="${ctx}/static/js/bootstrap/application.js"></script>--%>


<!-- Analytics ================================================== -->
</body>
</html>

