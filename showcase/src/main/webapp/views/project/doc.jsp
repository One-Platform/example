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

        ONE-WEB使用手册

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
<div class="col-md-3">
    <div class="bs-docs-sidebar hidden-print" role="complementary">
        <ul class="nav bs-docs-sidenav">

            <li>
                <a href="#1">1.Web Framework</a>
                <ul class="nav">
                    <li><a href="#1.1">1.1 版本历史 </a></li>
                    <li><a href="#1.2">1.2 Web-Platform基本原理和特性介绍</a></li>
                    <li><a href="#1.3">1.3 如何构建一个Restful风格的web项目 </a></li>
                    <li><a href="#1.4">1.4 Web-Platform项目结构的约定
                    </a></li>
                </ul>
            </li>
            <li>
                <a href="#2">2. 控制器(controller)</a>
                <ul class="nav">
                    <li><a href="#2.1">2.1 Controller的定义</a></li>
                    <li><a href="#2.2">2.2 路径的映射 </a></li>
                    <li><a href="#2.3">2.3 参数的绑定</a>
                    </li>
                    <li><a href="#2.4">2.4 控制器的返回路径 </a>
                    </li>

                    <li><a href="#2.5">2.5 Invocation</a>
                    </li>
                    <li><a href="#2.6">2.6 将数据返回视图 </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#3">3. 视图(view)</a>
                <ul class="nav">
                    <li><a href="#3.1">3.1 Jsp</a>
                    </li>
                    <li><a href="#3.2">3.2 Velocity</a></li>
                </ul>
            </li>
            <li>
                <a href="#4">4. url管理 </a>
            </li>
            <li>
                <a href="#5">5. 拦截器(Interceptor)</a>
                <ul class="nav">
                    <li><a href="#5.1">5.1 拦截器的位置</a></li>
                    <li><a href="#5.2">5.2 拦截器的拦截条件</a></li>
                    <li><a href="#5.3">5.3 拦截器的实现</a> </li>
                </ul>
            </li>
            <li>
                <a href="#6">6. 数据校验 </a>
                <ul class="nav">
                    <li><a href="#6.1">6.1 Web-Platform的数据校验</a></li>
                    <li><a href="#6.2">6.2 @Validation中的规则</a></li>
                    <li><a href="#6.3">6.3 参数的校验 </a></li>
                    <li><a href="#6.4">6.4 javabean的校验</a></li>
                    <li><a href="#6.5">6.5 校验的错误信息</a></li>
                    <li><a href="#6.6">6.6 自定义的数据校验</a></li>
                </ul>
            </li>
            <li>
                <a href="#7">7.文件上传 </a>
                <ul class="nav">
                    <li><a href="#7.1">7.1 单个文件的上传</a></li>
                    <li><a href="#7.2">7.2 多个文件的上传</a></li>
                    <li><a href="#7.3">7.3 混合文件上传</a></li>
                    <li><a href="#7.4">7.4 上传所有文件 </a></li>
                </ul>
            </li>
            <li>
                <a href="#8">8. 异常处理 </a>
                <ul class="nav">
                    <li><a href="#8.1">8.1 最简单的</a></li>
                    <li><a href="#8.2">8.2 放在哪里才能生效</a></li>
                    <li><a href="#8.3">8.3 区分异常类型的</a></li>
                    <li><a href="#8.4">8.4 更好的区分不同的异常类型 </a></li>
                    <li><a href="#8.5">8.5 将异常让渡给上级模块的错误处理器处理</a></li>
                    <li><a href="#8.6">8.6 异常处理的Adapter </a></li>
                </ul>
            </li>
            <li>
                <a href="#9">9. Portal </a>
            </li>
            <li>
                <a href="#10">10 Pipe </a>
            </li>
            <li>
                <a href="#11">11 国际化 </a>
            </li>

            <li><a href="#12">附录</a></li>


        </ul>
        <a class="back-to-top" href="#top">
            Back to top
        </a>
    </div>
</div>
<div class="col-md-9" role="main">

<div class="bs-docs-section">
    <h1 id="1">1. Web Framework</h1>

    <h2 id="1.1">1.1 版本历史</h2>

    <p>当前版本为1.0.3</p>

    <p>版本BUG:</p>

    <ol>
        <li>不支持跨目录返回页面,如果有这种需要，只能通过Controller来进行跳转</li>
        <li>页面参数绑定中不支持 List&lt;自定义对象&gt;，支持List&lt;String&gt;(详见参数绑定章节)</li>
        <li>Pipe在加载的时候会默认加载一个预加载的项</li>
        <li>Controller中使用的Validation校验只能校验第一个参数</li>
        <li>ErrorHandler无法返回JSP页面，可以返回Velocity模板和字符串</li>
    </ol>


    <h2 id="1.2">1.2 one-web介绍</h2>

    <h3>1.2.1基本原理</h3>

    <pre><code>Web-Platform基于Spring MVC3，对于SpringMVC的优势我们予以保留，并在此基础上做了优化以及增加了很多的最佳实践。
    </code></pre>

    <p><img src="http://i.imgur.com/OT9BT5P.png" alt="" /></p>

    <h3>1.2.2特性介绍</h3>

    <p>Web-Platform包含了许多特性，具体如下：</p>

    <p>1.基于Filter</p>

    <p>2.零配置文件</p>

    <p>3.完全支持REST</p>

    <p>3.支持通过参数绑定数据</p>

    <p>5.支持Bean Validation 以及 Param Validation</p>

    <p>6.支持Portal</p>

    <p>7.支持Pipe</p>

    <p>8.有专门的技术团队提供支持</p>

    <p>9.快速响应问题和新需求</p>

    <h2 id="1.3">1.3 如何构建一个Restful风格的web项目</h2>

    <p>您可以参考我们的指南文档，<a href="#">快速构建Restful风格的Web工程</a></p>

    <h2 id="1.4">1.4 Web-Platform项目结构的约定</h2>

    <p>Web-Platform通过约束项目结构（文件夹目录结构）,达到路径映射及资源文件的映射需要。开发者在使用Web-Platform时需要遵守改约定。Web-Platform的项目结构约定有一下几点：</p>

    <p>1、java文件的结构约定。在Web-Platform框架中的java需要统一放置于名为"controllers"或"web"的包下。</p>

    <p>大体示意：</p>

    <p><img src="http://i.imgur.com/4P8hNpv.png" alt="" /></p>

    <p>在图中有关account业务功能的Controller等java资源文件都同一放位于controllers.account包下</p>

    <p>2、视图文件的结构约定。这里主要的视图资源文件为jsp,统一位于views文件夹下。同时view下的目录结构需要和controllers下的目录结构相对应。</p>

    <p>大体示意：</p>

    <p><img src="http://i.imgur.com/ZUiFo9C.png" alt="" /></p>
</div>


<!-- Dropdowns
================================================== -->
<div class="bs-docs-section">
<h1 id="2">2. 控制器(controller)</h1>

<h2 id="2.1">2.1 Controller的定义</h2>

<p>Web-Platform的Controller相当于struts中的action，由于Web-Platform是无任何配置文件的框架。定义Controller的前提条件是遵守项目结构约定,在Controllers包下及所有的子包中，所有类名后缀定义为Controller结尾的类，则自动会被定义为控制器（Controller）。</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;

    public class DemoController {

    }
</code></pre>

<p>清单2-1-1</p>

<h2 id="2.2">2.2 路径的映射</h2>

<h3 id="2.2.1">2.2.1 URL请求对应到controller</h3>

<p>一个URL请求如何对应到相应的controller?在Web-Platform中,我们对项目结构做了约定，这样做是有原因的，因为在URL映射中我们将用到这样的约定，会把目结构的约定体现在映射规则中。</p>

<p>映射方式如图：</p>

<p><img src="http://i.imgur.com/5ig1qsG.png" alt="" /></p>

<p>其中各个节点的具体映射方式在下面章节详细介绍</p>

<h4>2.2.1.1 包的映射规则</h4>

<p>包级别的映射，它是整个URL映射中第一级别的映射，它的规则：</p>

<p><strong>controllers包下的每一级子包将作为URL的一个节点。</strong></p>

<p>例如我们现在有如下的包结构：</p>

<p><img src="http://i.imgur.com/GZylk2E.png" alt="" /></p>

<p>的工程项目中，我们的URL请求想要映射到account包下的controller，那么在我们发送的HTTP请求的URL中，必须要将“account”作为URL的第一个节点，可以映射到这个结构的URL是：</p>

<pre><code>http://ip:port/demo/account/......
</code></pre>

<p>如果controllers包下有二级或者三级子包，也必须将包名作为URL的节点。</p>

<p>如果有2级子包：</p>

<p><img src="http://i.imgur.com/Bn04T8P.png" alt="" /></p>

<pre><code>对应URL：http://ip:port/prpall/policy/policyholder/......
</code></pre>

<p>清单2-2-1</p>

<h4>2.2.1.2 类的映射规则</h4>

<p>当URL通过包级别的映射后，映射将从控制器controller的java类级别开始第二层级的映射。这个级别的映射有两种方式。</p>

<p>方式一：<strong>通过在controller类上增加@Path标签进行映射</strong>。</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;

    @Path("user")
    public class UserController {

    }
</code></pre>

<p>在以上代码中<strong>@Path("user")</strong>定义了controller层级的路径。通过包层级的映射后，该映射的URL请求为：</p>

<pre><code>http://ip:port/demo/account/user/...
</code></pre>

<p>@Path标签也支持不写具体路径或者多个节点的方式。</p>

<p>不写路径的方式：</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;

    @Path("")
    public class UserController {

    }
</code></pre>

<p>它将对应URL:</p>

<pre><code>http://ip:port/demo/account/...
</code></pre>

<p>写多级路径的方式：</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;

    @Path("user/deal")
    public class UserController {

    }
</code></pre>

<p>它将对应URL:</p>

<pre><code>http://ip:port/demo/account/user/deal...
</code></pre>

<p>方式二：<strong>不写@Path标签，通过controller类名前缀进行映射</strong>。</p>

<p>当我们定义了一个controller后，如果不写@Path标签，那么作为控制器类名的前缀将自动作为URL的节点。</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;

    public class GroupController {
    }
</code></pre>

<p>清单2-2-3
    以上代码中GroupController类上不增加Path标签，那么该控制器类的类名前缀Group,则自动作为URL的节点。该 <br/>
    映射的URL为：http://ip:port/demo/account/group/...</p>

<h4>2.2.1.3 方法的映射规则</h4>

<p>web在进行包，类的路径映射后，将进行controller的方法路径映射，也就是说一个URL请求最后被相应并处理的位置是controller的方法。</p>

<h5>2.2.1.3.1 post、get、put、delete请求</h5>

<p>在controller的方法匹配URL时与类的请求方法类似，通过在方法体上增加标签的形式进行。同时web在方法匹配URL时，对HTTP请求中不同的请求类型进行区分，web通过不同的标签来完成这样的工作。</p>

<p>通过在方法体上添加与post、get、put、delete请求类型对应的标签：</p>

<p><em>注意</em>:使用put和delete请求得在web.xml的mvcfilter之前加上HiddenHttpMethodFilter。如果使用form表单提交还得加上<input type="hidden" name="_method" value="put">或者<input type="hidden" name="_method" value="delete">.</p>

<pre><code>web.xml：
    &lt;?xml version="1.0" encoding="UTF-8"?&gt;
    &lt;web-app xmlns="http://java.sun.com/xml/ns/javaee"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
    http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
    version="3.0"&gt;

    &lt;filter&gt;
    &lt;filter-name&gt;HiddenHttpMethodFilter&lt;/filter-name&gt;
    &lt;filter-class&gt;org.springframework.web.filter.HiddenHttpMethodFilter&lt;/filter-class&gt;
    &lt;/filter&gt;

    &lt;filter-mapping&gt;
    &lt;filter-name&gt;HiddenHttpMethodFilter&lt;/filter-name&gt;
    &lt;url-pattern&gt;/*&lt;/url-pattern&gt;
    &lt;dispatcher&gt;REQUEST&lt;/dispatcher&gt;
    &lt;dispatcher&gt;FORWARD&lt;/dispatcher&gt;
    &lt;dispatcher&gt;INCLUDE&lt;/dispatcher&gt;
    &lt;/filter-mapping&gt;

    &lt;filter&gt;
    &lt;filter-name&gt;MvcFilter&lt;/filter-name&gt;
    &lt;filter-class&gt;com.sinosoft.one.mvc.MvcFilter&lt;/filter-class&gt;
    &lt;/filter&gt;

    &lt;filter-mapping&gt;
    &lt;filter-name&gt;MvcFilter&lt;/filter-name&gt;
    &lt;url-pattern&gt;/*&lt;/url-pattern&gt;
    &lt;dispatcher&gt;REQUEST&lt;/dispatcher&gt;
    &lt;dispatcher&gt;FORWARD&lt;/dispatcher&gt;
    &lt;dispatcher&gt;INCLUDE&lt;/dispatcher&gt;
    &lt;/filter-mapping&gt;
    &lt;/web-app&gt;


    package com.sinosoft.one.demo.controllers.account;

    @Path("user")
    public class UserDetailController {

    @Get("list")
    public void list(Invocation inv) {
    return "userList";
    }

    @Post("find")
    public String find(Invocation inv) {
    return "userList";
    }

    @Delete("remove")
    public String remove(@Param("userid")string userid,Invocation inv) {
    return "userList";
    }

    @Put("add")
    public String put(@Param("user")User user,Invocation inv) {
    return "userList";
    }
    }
</code></pre>

<p>以上所对应的发送ULR请求：</p>

<pre><code>&lt;form action="${ctx}/account/user/find" method="get"&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    /form&gt;

    &lt;form action="${ctx}/account/user/list" method="post"&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    /form&gt;

    &lt;form action="${ctx}/account/user/remove" method="post"&gt;
    &lt;input name="_method" type="hidden" value="delete" /&gt;
    姓名：&lt;input name="userid" id="id" type="text" /&gt;&lt;br /&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    /form&gt;

    &lt;form action="${ctx}/account/user/put" method="post"&gt;
    &lt;input name="_method" type="hidden" value="put" /&gt;
    姓名：&lt;input name="user.name" id="name" type="text" /&gt;&lt;br /&gt;
    年龄：&lt;input name="user.age" id="age" type="text" /&gt;&lt;br /&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    /form&gt;
</code></pre>

<h5>2.2.1.3.2 通过方法名进行映射。</h5>

<pre><code>package com.sinosoft.one.demo.controllers.account;

    @Path("group")
    public class GroupController {

    public String list(Invocation inv) {
    List&lt;Group&gt; groups = accountManager.getAllGroup();
    inv.addModel("groups", groups);
    return "groupList";
    }
    }
</code></pre>

<p>清单2-2-5
    当我们的方法体上未写任何请求类型标签时，将自动使用方法名进行映射。对应的URL映射为：</p>

<pre><code>http://ip:port/demo/account/group/list
</code></pre>

<p>该URL可以同时匹配post或者get请求。</p>

<h3 id="2.2.3">2.2.3 多路径映射</h3>

<p>通常情况下，我们会遇到这样的问题，我们的controller方法是可以在多个URL中使用的。为了不进行重复的代码编写，可以将多个URL映射到同一个controller或者controller方法中。</p>

<p><strong>controller的多路径映射</strong></p>

<p>不能通过controller名前缀映射，需要在controller类上增加@Path标签，书写方式修改为
    @Path({"node1"，"node2"})</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;

    @Path({"user","employe"})
    public class UserController {

    }
</code></pre>

<p>清单2-2-6
    以上代码中对应的URL请求分别为</p>

<pre><code>user：http://ip:port/demo/account/user/......

    employe：http://ip:port/demo/account/employe/......
</code></pre>

<p><strong>方法的多路径映射</strong></p>

<p>与controller的多路径映射类似，不能通过方法名映射，需要在方法体上添加@Post或@Get请求，书写方式修改为@Get({"node1","node2"})或@Post({"node1","node2"})</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;

    @Path("user")
    public class UserDetailController {

    @Post({"list”,"findall"})
    public String list(Invocation inv) {
    return "userForm";
    }

    @Get({"create","save"})
    public String save(Invocation inv) {
    return "userForm";
    }

    }
</code></pre>

<p>清单2-2-7</p>

<p>清单2-2-7代码对应的url分别为</p>

<p>post:</p>

<pre><code>http://ip:port/demo/account/user/list
    http://ip:port/demo/account/user/findall
</code></pre>

<p>get:</p>

<pre><code>http://ip:port/demo/account/user/create
    http://ip:port/demo/account/user/save
</code></pre>

<h3 id="2.2.4">2.2.4 post、get、put、delete请求</h3>

<p>web以@Get或者@Post来标注方法,分别对应HTTP的GET和POST请求,并且一个controller方法可以同时使用不同的请求方式。</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;

    @Path("user")
    public class UserDetailController {

    @Post("list”)
    @Get("list”)
    public String list(Invocation inv) {
    return "userForm";
    }

    @Get("updata")
    public String updata(Invocation inv) {
    return "userinfo";
    }

    @Post("save")
    public String save(Invocation inv) {
    return "userForm";
    }
    }
</code></pre>

<p>清单2-2-8</p>

<p>Web-Platform还提供了@Put与@Delete请求,这两种请求主要用于在进行数据库添加与删除操作时，使用的约定类型请求。并且当在controller方法体上标注@Delete、@put标签时，只能通过delete或put请求访问。</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;
    @Path("user")
    public class UserDetailController {

    //对应 /user 并且仅支持DELETE访问
    @Delete
    public String delete(@Param("username")string username,Invocation inv) {
    return "userinfo";
    }

    //对应 /user/remove 并且仅支持DELETE访问
    @Delete("remove")
    public String remove(@Param("userid")string userid,Invocation inv) {
    return "userForm";
    }
    }
</code></pre>

<p>清单2-2-9</p>

<p>在页面视图，我们通过以下方式发送delete请求。</p>

<pre><code>&lt;form action="${ctx}/account/user" method="post"&gt;
    &lt;input type="hidden" name="_method" value="delete"/&gt;
    姓名：&lt;input name="username" id="name" type="text" /&gt;&lt;br /&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    /form&gt;
    &lt;form action="${ctx}/account/user/remove" method="post"&gt;
    &lt;input type="hidden" name="_method" value="delete"/&gt;
    姓名：&lt;input name="userid" id="id" type="text" /&gt;&lt;br /&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    /form&gt;
</code></pre>

<p>@Put与@delete类似,在controlle方法体添加@Put,并且请求定义请求为put</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;
    @Path("user")
    public class UserDetailController {

    //对应 /user/put 并且仅支持put访问
    @Put("put")
    public String put(@Param("user")User user,Invocation inv) {
    return "userForm";
    }
    }
</code></pre>

<p>页面视图</p>

<pre><code>&lt;form action="${ctx}/user/put" method="put"&gt;
    &lt;input type="hidden" name="_method" value="put"/&gt;
    姓名：&lt;input name="user.name" id="name" type="text" /&gt;&lt;br /&gt;
    年龄：&lt;input name="user.age" id="age" type="text" /&gt;&lt;br /&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    /form&gt;
</code></pre>

<h3 id="2.2.5">2.2.5 用正则表达式表达的URL</h3>

<ul>
    <li><p>在我们设定的url上是可以使用参数的</p>

<pre><code>在@Path("path/{id}")或@Get("find/{name}")的uri参数中以{}包括的部分作为参数
</code></pre></li>
    <li><p>参数可以用正则表达式修饰</p>

<pre><code>格式为{ paramName:regularExpression } ,只有请求的URI能被正则表达式匹配时， 才会执行这个方法，而被匹配的值将被保存在名为paramName的参数中
</code></pre></li>
</ul>


<p>下边我们用上边的示例来具体说明一下</p>

<p>假设我们有一个根据用户id来删除用户的url，路径为 ${ctx}/account/user/remove/[userId],我们现在希望限制一下userId的范围，我们就可以在对应的方法上添加如下的正则约束</p>

<p>原代码:</p>

<pre><code>@Get("remove/{userId}")
    public String deleteUserById(@Param("userId") String userId){
    //TODO:delete user.
    }
</code></pre>

<p>修改后,我们限制只能删除数字id</p>

<pre><code>@Get("remove/{userId:[0-9]+}")
    public String deleteUserById(@Param("userId") String userId){
    //TODO:delete user.
    }
</code></pre>

<p>我们修改后，url为 ${ctx}/account/user/remove/[userId]这个请求中的userId就只能为数字了。当然，如果在@Path中使用了参数，那么您也可以参照上边的例子来限定参数的范围。</p>

<h3 id="2.2.6">2.2.6 占位符"$"在url中的使用</h3>

<p>在我们的Path和get/post/delete/put设定url时，我们可以使用$符来做占位符。下边我们来详细说一个"$"的具体使用。</p>

<ol>
    <li><p>$index  在使用$符的时候我们需要给它带上下标，如$1/$2...,默认情况下啊，$1代表匹配的方法上的第一个参数，$2表示第二个参数，以此类推。</p>

        <p>当然，我们也可以通过@Param注解来将对应的值赋给特定的参数。如果存在相同的下标，那么默认绑定第一个占位符对应的值</p></li>
    <li>既然是占位符，所以这个$index这个位置是可以传递任意有效字符的，如数字，字母，汉字等等</li>
    <li>不能使用正则表达式来限定。</li>
</ol>


<p>下边我们用实际例子来说明一下。</p>

<ul>
    <li><p>未使用 "$"占位符</p>

<pre><code>package com.sinosoft.one.showcase.controllers.account;

    import com.sinosoft.one.mvc.web.annotation.Path;
    import com.sinosoft.one.mvc.web.annotation.rest.Get;

    @Path("user")
    public class UserController {

    @Get("test/demo")
    public String test(String str1,String str2,String str3){
    System.out.println("第一个参数:"+str1);
    System.out.println("第二个参数:"+str2);
    System.out.println("第三个参数:"+str3);
    return "@message";
    }
    }
</code></pre></li>
</ul>


<p>如上，我们可以写出来对应的url为 ${ctx}/{project_name}/account/user/test/demo,然后我们在页面上访问一下，控制台消息如下</p>

<p><img src="http://i.imgur.com/nkeKwy8.png" alt="" /></p>

<p>可以看到，所有参数均为null(废话，我们又没有去绑定参数)</p>

<p>下载我们用"$"来修改一下</p>

<pre><code>package com.sinosoft.one.showcase.controllers.account;

    import com.sinosoft.one.mvc.web.annotation.Path;
    import com.sinosoft.one.mvc.web.annotation.rest.Get;

    @Path("$1")
    public class UserController {

    @Get("$2/$3")
    public String test(String str1,String str2,String str3){
    System.out.println("第一个参数:"+str1);
    System.out.println("第二个参数:"+str2);
    System.out.println("第三个参数:"+str3);
    return "@message";
    }
    }
</code></pre>

<p>修改了后我们在用${ctx}/{project_name}/account/user/test/demo来访问一下 ，看看能否请求到。访问后，可以看到控制台输出:</p>

<p><img src="http://i.imgur.com/PVccU6V.png" alt="" /></p>

<p>可以看到，参数为 user/test/demo正好和我们的"$"占位对应，这就说明了，我们的$1/$2/$3正确完成了他们的任务。</p>

<p>下边，我们修改一下访问路径，我们使用 ${ctx}/{project_name}/account/用户/测试/演示实例  来访问一下，控制台输出如下:</p>

<p><img src="http://i.imgur.com/jJsbltB.png" alt="" /></p>

<p>可以看到，参数为 用户/测试/演示实例  正好和我们的"$"占位对应，这就说明了，我们的$1/$2/$3正确完成了他们的任务。</p>

<h3 id="2.2.7">2.2.7 模块规约</h3>

<p>你是不是觉得默认的package映射规则有些呆板、冗长？如果项目中设定的包路径过长，那么url的匹配路径将长的无法想象？不要急，我们提供了解决这些问题的方案。</p>

<p>下边就举例说明一下具体的使用方法</p>

<p>假设我们有一个方法的全路径是</p>

<pre><code>com.sinosoft.one.demo.controllers.payment.ecommerce.PaymentController$payment(...)
</code></pre>

<p>按照我们上边介绍url默认匹配规则，这个方法的对应url路径就是</p>

<pre><code>http://{ip}:{port}/{webappName}/payment/ecommerce/payment/payment
</code></pre>

<p>从url路径中我们可以看到 payment/ecommerce是为了匹配package路径而存在，而它们使我们的url看起很长，写起来也很麻烦，那么我们有没有办法简写payment/ecommerce甚至在url中去掉payment/ecommerce这个映射路径呢，答案是肯定的。</p>

<p>我们要在的仅仅是在PaymentController所在的包下便创建一个mvc.property文件,然后再该属性文件中定义我们的package路径就可以了。如下</p>

<pre><code>//这里可以设置package路径,这里我们直接将package路径设置为根目录
    module.path=/
</code></pre>

<p>目录结构如下</p>

<p><img src="http://i.imgur.com/ymhsNcZ.png" alt="" /></p>

<p>到这里，我们原来的url路径</p>

<pre><code>http://{ip}:{port}/{webappName}/payment/ecommerce/payment/payment
</code></pre>

<p>就变为了</p>

<pre><code>http://{ip}:{port}/{webappName}/payment/payment
</code></pre>

<p>可以看到，在新的url中package路径payment/ecommerce没有了，因为我们把payment/ecommerce定义为了 "/" 根目录</p>

<p>以下是mvc.property中可以设置的属性及作用</p>

<pre><code>module.ignored 设置的值为true/false,如果这个属性值为true代表这个目录以及子目录不作为module
    module.path Mvc将使用这个属性的值作为所在module的path,可以使${parent.module.path}引用上一次级module的path
</code></pre>

<h2 id="2.3">2.3 参数的绑定</h2>

<p>在Web-Platform中，我们在方法的参数列表中使用@Param("paramName")来绑定参数</p>

<p><p/>
<strong>注意：</strong>
在参数的绑定中我们是根据@Param("paramName")的paramName和页面元素的name属性做匹配的</p>

<pre><code>public String login(@Param("paramName")boolean flag,@Param("name") String name，@Param("user") User user,@Param("userList") userList,Invocation inv){
    if(flag){
    //TODE:someting.
    }
    }
</code></pre>

<h3 id="2.3.1">2.3.1 基本类型的参数绑定</h3>

<p>Web-Platform支持8种基本数据类型的绑定</p>

<pre><code>boolean：只有1和true表示"ture",0和其他的均表示为"false"。

    float/double：默认将传递过来的数字精确到一位小数，如果数字本身精确为更高，则保持不变

    int/short/long：如果传递的参数大小大于或小于int/short/long类型值的范围或者传递的不是整数，那么传递过来的值将使用默认值0，既如果我传递的参数大小为2147483648，那么得到的结果为0

    chart：仅能接收单字符(英文或中文字符)

    byte： 仅能绑定 -128至127的整数
</code></pre>

<p><strong>示例：</strong>
    <strong><em><p>前台页面写法</p></em></strong></p>

<pre><code>&lt;input type="text" name="flag"&gt;
</code></pre>

<p><strong><em><p>后台controllers写法</p></em></strong></p>

<pre><code>public String test(@Param("flag") boolean flag,Invocation inv){
    if(flag){
    return "welcome";
    }else{
    return "error";
    }
    }
</code></pre>

<h3 id="2.3.2">2.3.2 Map和集合类型的参数绑定</h3>

<p>List类型的绑定：只支持List&lt;String&gt;,不支持List&lt;自定义对象&gt;</p>

<pre><code>//在后台controller里边，我们定义的方式和普通类型是一样的，如下：
    public String test(@Param("strList") List&lt;String&gt; strList,Invocation inv){
    //TODO:sometion.
    }

    //在前台jsp页面中的写法，我们需要注意一下，如下:
    &lt;!-- Web-Platform会按照顺序将下边的input标签中的值绑定到后台的List中--&gt;
    &lt;td&gt;&lt;input type="text" name="strList"&gt;&lt;/td&gt;
    &lt;td&gt;&lt;input type="text" name="strList"&gt;&lt;/td&gt;
    &lt;td&gt;&lt;input type="text" name="strList"&gt;&lt;/td&gt;

    //直接在将参数拼接到get类型的请求中
    http://localhost:9000/showcase/test?userList=listData_1&amp;userList=listData_2
</code></pre>

<p>Map类型的绑定：与List差不多，只支持Map&lt;String,String&gt;，不支持Map&lt;String,自定义对象&gt;</p>

<pre><code>//后台controller中的写法与List没什么区别，如下所示

    public String test(@Param("mapData") Map&lt;String,String&gt; mapData,Invocation inv){
    return "index";
    }

    //这里是jsp页面的写法
    &lt;!--我们用“:”来将map对象和它的key值分开 --&gt;
    &lt;td&gt;&lt;input type="text" name="mapData:key1"&gt;&lt;/td&gt;
    &lt;td&gt;&lt;input type="text" name="mapData:key2"&gt;&lt;/td&gt;
    &lt;td&gt;&lt;input type="text" name="mapData:key3"&gt;&lt;/td&gt;

    //直接在将参数拼接到get类型的请求中
    http://localhost:9000/showcase/test?mapData:key1=data_1&amp;mapData:key2=data_2
</code></pre>

<h3 id="2.3.3">2.3.3 枚举类型的参数绑定</h3>

<p>我们首先创建一个枚举类</p>

<pre><code>public enum CourseType {
    ENGLISH,MATH,CHINESE,OTHER
    }
</code></pre>

<p>下边写我们的controller</p>

<pre><code>public String test(@Param("courseType")CourseType courseType,Invocation inv){
    return "welcome";
    }
</code></pre>

<p>最后，我们将我们的JSP页面定义出来</p>

<pre><code>&lt;td&gt;&lt;input type="text" name="courseType"&gt;&lt;/td&gt;
</code></pre>

<h3 id="2.3.4">2.3.4 java bean类型的参数绑定</h3>

<p>Web-Platform支持自定义对象的属性绑定，下边我们来举例说明一下</p>

<p>首先我们定义一下Student、Course类</p>

<pre><code>public class Student {

    private Long id;

    private String name;

    private Integer age;

    private Date birthday;

    private Course mathCourse;

    private Course englishCourse;

    private List&lt;Course&gt; otherCourses;
    //@todo getter and setter
    }

    public class Course {

    //见前面的enum示例
    private CourseType type;

    private String name;

    private Float score;

    //@todo getter and setter
    }
</code></pre>

<p>下面我们编写controller</p>

<pre><code>@Path("")
    public class DataBindController {

    //JavaBean的绑定
    /*
    mvc会自动根据表单的name属性匹配Student的属性。
    对于嵌套属性只需要用'.'来表示嵌套关系即可 例如 mathCourse.score
    对于List&lt; Course &gt;类型还要加上属性的下标 例如 courses[0].score
    如果form表单只是一个JavaBean的映射可以不用@Param()注解，
    如果form表单是多个JavaBean的映射那就必须增加@Param("beanName")注解，并且在input的name属性增加对于的'beanName.'前缀
    */
    public String test(@Param("student")Student student,Invocation inv){
    return "welcome";
    }
    }
</code></pre>

<p>最后，我们来编写JSP页面</p>

<pre><code>&lt;form action="${ctx}/test" method="get"&gt;
    编号：&lt;input name="student.id" id="id" type="text" /&gt;&lt;br /&gt; 姓名：&lt;input
    name="student.name" id="name" type="text" /&gt;&lt;br /&gt; 年龄：&lt;input
    name="student.age" id="age" type="text" /&gt;&lt;br /&gt; 出生日期：&lt;input
    name="student.birthday" id="birthday" type="text" /&gt;&lt;br /&gt; 数学成绩：&lt;input
    name="student.mathCourse.score" id="mathScore" type="text" /&gt;&lt;br /&gt;
    英语成绩：&lt;input name="student.englishCourse.score" id="englishScore" type="text" /&gt;&lt;br /&gt;
    &lt;hr /&gt;
    其他成绩1：&lt;input name="student.otherCourses[0].score" type="text" /&gt;&lt;br /&gt;
    其他成绩2：&lt;input name="student.otherCourses[1].score" type="text" /&gt;&lt;br /&gt;
    其他成绩3：&lt;input name="student.otherCourses[2].score" type="text" /&gt;&lt;br /&gt;
    其他成绩4：&lt;input name="student.otherCourses[3].score" type="text" /&gt;&lt;br /&gt;
    &lt;input type="submit" value="Form提交" /&gt;

    &lt;/form&gt;
</code></pre>

<h2 id="2.4">2.4 控制器的返回路径</h2>

<p>在Web-Platform的web应用程序中，通过使用controller的方法返回值方式作为视图的返回方式。对于普通的url请求（非ajax），通过在controller的方法中返回string进行视图跳转。同时项目结构的约定，被使用到路径返回规则中。</p>

<h3 id="2.4.1">2.4.1 如何定位返回页面</h3>

<p>MVC中的视图的存放路径是被约束的，统一放置于views文件夹下，在前面章节中已经进行描述。每个controller方法处理完成后需要返回视图，首先要确定controllers的包结构与mvc项目中视图文件夹中的结构一致。通过包结构的约定，以及controller的返回值确定视图的返回。</p>

<p>例如：
    在controllers包下有一个account子包。</p>

<p><img src="http://i.imgur.com/Jg6Kz0o.png" alt="" />
    图2-4-1</p>

<p>同时在views目录下也有一个同名的account子包。</p>

<p><img src="http://i.imgur.com/H1A3Ge3.png" alt="" />
    图2-4-2</p>

<p>account子包中的controler的视图将返回views的account子包下的页面。</p>

<p>而controller方法中通过返回字符串的形式返回，该字符串返回值则是具体视图去掉的名称。</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;
    @Path("user")
    public class UserController {

    @Get("list")
    public String list(Invocation inv) {
    List&lt;User&gt; users = accountManager.getAllUser();
    inv.addModel("users", users);
    return "userList";
    }
    }
</code></pre>

<p>以上代码是示例图片2-4-1中的UserController，表示的是account包下UserController的list方法，通过返回字符串"userList",返回到对应示例图片2-4-2中views包下的子包account中的userList.jsp。</p>

<p>目前可以支持回别的VIEWS根目录下的JSP（不支持返回其他子包下的视图），通过返回相对路径的形式即可，这样的返回需要写明视图后缀.jsp。</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;
    @Path("user")
    public class UserController {

    @Get("list")
    public String list(Invocation inv) {
    List&lt;User&gt; users = accountManager.getAllUser();
    inv.addModel("users", users);
    return "/userList.jsp";
    }
    }
</code></pre>

<h3 id="2.4.2">2.4.2 转发</h3>

<p>在Web-Platform中通过转发有两种方式，虽然都是使用在controller返回字符串的形式，但是在转发时可以返回一个URL路径的字符串，例如return "/mvc/home/test/hello" 或者 "a:/mvc/home/test/hello"，都是进行转发。以‘a:’开头代表本控制器内的方法</p>

<h3 id="2.4.3">2.4.3 重定向</h3>

<p>在Web-Platform中通过在ontroller的方法返值的字符串中使用"r:XXX/XXX/XXX......"的方式进行转发。</p>

<pre><code>package com.sinosoft.one.demo.controllers.account;
    @Path("user")
    public class UserController {

    @Get("delete/{id}")
    public String delete(@Param("id") Long id, Invocation inv) {
    accountManager.deleteUser(id);
    inv.addFlash("message", "删除用户成功");
    return "r:/account/user/list";
    }
    }
</code></pre>

<p>清单中的"r:/account/user/list"，就是代表着重定向到"/account/user/list" URL上,同时该URL也会对应到MVC另一个controller的方法</p>

<h3 id="2.4.4">2.4.4 无参数类型的返回值方式</h3>

<p>如果我们的controller不需要返回视图，那么controller的方法只需返回void即可。</p>

<h2 id="2.5">2.5 Invocation</h2>

<p>Invocation封装了框架对控制器方法的一次调用相关的信息：请求和响应对象、目标控制器方法、方法参数值等。Invocation主要用来处理数据的传递，比如：页面和后台之间的数据传递，重定向后数据的传递，以及传递仅本次调用可见、和视图渲染无关的一些参数等。</p>

<p>注意:当不存在请求转发,一个用户请求只存在一个调用实例;当用户请求可能被转发时,转发前和转发后的控制器方法调用是不同的调用,则一个用户请求将不只包含了一个调用实例.</p>

<h3 id="2.5.1">2.5.1 获取http内置对象</h3>

<pre><code>public HttpServletRequest getRequest();
    此方法用来返回本次调用的HttpServletRequest对象

    public HttpServletResponse getResponse();
    此方法用来返回本次调用的HttpServletResponse对象

    public ServletContext getServletContext();
    此方法用来返回ServletContext对象
</code></pre>

<h3 id="2.5.2">2.5.2 绑定数据</h3>

<p>Invocation常用绑定数据的方法有以下几个:</p>

<pre><code>public void addModel(Object value);
    public void addModel(String name, Object value);
</code></pre>

<p>例如在controller中定义如下方法：</p>

<pre><code>public String render(Invocation inv) {
    //在页面渲染业务数据
    inv.addModel("user", new User("1", "kylin"));
    // id=1, name=kylin
    return "userInfo";
    }
</code></pre>

<p>在jsp中可以用el表达式取出来：</p>

<pre><code>id = $｛user.id｝,name = $｛user.name｝渲染user的值
</code></pre>

<p>这俩方法都是将对象(object,array,collection等)加入到MVC中的Model中作为一个属性,通过它传递给View.将使用该对象的类名头字母小写的字符串作为名字.</p>

<p>不同的是:第一个方法中如果对象是数组,去数组元素的类的类名字头字母小写加上"List"作为名字，如果对象是集合元素,取其第一个元素的类的类名字头字母小写加上"List"作为名字,如果该值为空或者其集合长度为0的话,将被忽略.第二个方法就是键值对的组合.在前台可以直接使用el表达式来取.此方法采用servletReqeust的setAttributel来实现,所以可以用来传递转发后的数据.</p>

<pre><code>public Invocation setAttribute(String name, Object value);
    public Object getAttribute(String name);
</code></pre>

<p>这一对方法用来设置和调用一个和本次调用关联的属性,这个属性可以在多个拦截器中共享。这对方法仅能在本次调用中使用,如果出现转发则失效.
    例如在controller中定义如下方法：</p>

<pre><code>public String render(Invocation inv){
    inv.setAttribute("now","2014年03月05");
    return "welcome";
    }
</code></pre>

<p>在自定义的Inteceptor中可以这样来取：</p>

<pre><code>@Override
    protected Object after(Invocation inv, Object instruction) throws Exception {
    // 控制器方法调用之后，可以在这里做些你想做的
    String now = (String)inv.getAttribute("now");
    System.out.println(now);
    return super.after(inv, instruction);
    }

    public void addFlash(String name, String msg);
    这个方法用于向重定向跳转后的页面传递参数，比如提示信息.前台可以直接通过el表达式来获取值。
</code></pre>

<h2 id="2.6">2.6 将数据返回视图</h2>

<p>控制器将数据返回时,ajax请求和非ajax请求所用的方法不同。ajax请求统一用Reply来返回,非ajax请求是将数据装载进Invocation里,然后再取。</p>

<h3 id="2.6.1">2.6.1 Ajax请求</h3>

<h4>2.6.1.1 返回JSON数据</h4>

<p>使用Replys.with(Object).as(Json.class)来返回,前台使用直接取用即可;</p>

<pre><code>Controller：
    @Post("getName")
    public Reply getName(){
    Person person = new Person();
    person.setName("aaa");
    return Replys.with(person).as(Json.class);
    }
    Jsp:
    姓名:&lt;input id="name"/&gt;&lt;button onclick="getName();"&gt;获取&lt;/button&gt;
    &lt;script type="text/javascript"&gt;
    function getName(){
    $.ajax({
    type:"post",
    url:"${ctx}/getName",
    dataType:"json",
    success:function (data) {
    $("#name").text(data.name);
    },
    error:function () {
    alert("error");
    }
    });
    }
</code></pre>

<h4>2.6.1.2 返回XML数据</h4>

<p>对于Ajax请求,使用Replys.with(Object).as(Xml.class)来返回,前台返回的是xmlDocument对象，用js来取值。</p>

<pre><code>Controller：
    @Post("getName")
    public Reply getName(){
    Person person = new Person();
    person.setName("aaa");
    return Replys.with(person).as(Xml.class);
    }
    Jsp:
    &lt;script type="text/javascript"&gt;
    function getName(){
    $.ajax({
    type:"post",
    url:"${ctx}/getName",
    dataType:"xml",
    success:function (data) {
    alert($(data).find("name").text());
    },
    error:function () {
    alert("error");
    }
    });
    }
    &lt;/script&gt;
</code></pre>

<h4>2.6.1.3 返回简单字符</h4>

<p>对于Ajax请求,使用Replys.with(str);或者
    Replys.simple().success("str");来返回。</p>

<pre><code>Controller:
    @Post("getStr")
    public Reply getStr(){
    return  Replys.simple().success("hello World");
    }
    Jsp:
    $(function(){
    $.ajax({
    type:"post",
    url:"${ctx}/getStr",
    dataType:"json",
    success:function (data) {
    alert(data.message)
    },
    error:function () {
    alert("error");
    }
    });
    }
    );
</code></pre>

<h3 id="2.6.2">2.6.2 非Ajax请求</h3>

<p>对于非Ajax的请求,数据装载的媒介都是Invocation,所以不管是什么数据都可以直接放入即可。</p>

<h4>2.6.2.1 返回对象数据</h4>

<p>使用Invocation的addModel放入非常简单,前台用el表达式和jstl标签取值。</p>

<pre><code>实体对象Company是一个复杂的对象，里面包含集合，map，对象等对象：
    public class Company {

    private String id;
    private String name;
    private List&lt;Department&gt; departmentList = new ArrayList&lt;Department&gt;();
    private Person leader;
    private Map&lt;String,Department&gt; departmentLeader = new HashMap&lt;String,Department&gt;();

    }
    controller写法：
    @Get("company")
    public String getCompany(Invocation inv){
    Person header = new Person();
    header.setName("header");
    Department department = new Department();
    department.setName("department");
    Company company = new Company();
    company.setName("com");
    company.setLeader(header);
    company.getDepartmentList().add(department);
    company.getDepartmentLeader().put("supervisor",department);
    inv.addModel("company",company);
    return "company";
    }
    jsp取值，要用到jstl的迭代来对集合和map取值：
    ${company.name}
    ${company.leader.name}

    &lt;c:forEach  items="${company.departmentLeader}" var="item"&gt;
    &lt;c:out value="${item.key}" /&gt;
    &lt;c:out value="${item.value.name}" /&gt;
    &lt;/c:forEach&gt;
</code></pre>

<h4>2.6.2.2 返回非对象类型</h4>

<p>对于非Ajax请求，采用的都是将键值对放入到Invocation中去，前台使用el表达式根据键来取得值。</p>

<pre><code>Controller写法:
    @Get("json")
    public String getJson(Invocation inv){

    inv.addModel("json",5);
    return "json";
    }
    JSP取值:
    &lt;body&gt;
    ${json}
    &lt;/body&gt;
</code></pre>

<h4>2.6.2.3 返回数据流(返回类型为void,直接通过数据流写数据)</h4>

<p>代码示例:</p>

<pre><code>public void test(Invocation inv) throws IOException {
    PrintWriter pw = inv.getResponse().getWriter();
    pw.append("输入数据");
    pw.flush();
    }
</code></pre>
</div>


<!-- Button Groups
================================================== -->
<div class="bs-docs-section">

    <h1 id="3">3. 视图(view)</h1>

    <h2 id="3.1">3.1 Jsp</h2>

    <h3>3.1.1 Form</h3>

    <p>web-platform支持原生的form表单提交，我们建议使用原生的form表单。</p>

    <h3>3.1.2 标签</h3>

    <p>Web-Platform提供了3个标签，flash、msg、pipe,下边我们来逐一介绍一下</p>

    <ul>
        <li><p>flash标签：flash使用来取出写入cooki的值得，具体使用请参照<a href="#">Invocation.addFlash</a></p></li>
        <li><p>msg标签：详见参数校验章节</p></li>
        <li><p>pipe标签：详见pipe章节</p></li>
    </ul>


    <h2 id="3.2">3.2 Velocity</h2>

    <p>Web-Platform可以很友好的支持Velocity模板，基本上Velocity模板的使用和JSP页面的使用是一样的，您只需要设置好Velocity模板，就可以把这个vm文件当作JSP一样使用了，它的放置位置，请求方式和JSP是一样的，您不需要任何其他的额外设置。</p>

    <p>示例代码</p>

    <ul>
        <li><p>控制器</p>

<pre><code>public String test(Invocation inv){
    inv.addModel("name", "test");
    inv.addModel("date", new Date());
    return "test";//如果存在与jsp重名velocity模板，我们只要带上vm后缀就可以了
    }
</code></pre></li>
        <li><p>velocity模板</p>

            <p>test.vm</p>

<pre><code>##这是一行注释，不会输出
    #*这是多行注释，不会输出
    多行注释*#
    // ---------- 1.变量赋值输出------------
    Welcome $name to Velocity!
    today is $date.
    tdday is $mydae.//未被定义的变量将当成字符串
</code></pre></li>
    </ul>


    <p>我们访问http://localhost:9000/demo/test/test,得到结果页如下</p>

    <p><img src="http://i.imgur.com/rz1Nmp6.png" alt="" /></p>

</div>


<!-- Split button dropdowns
================================================== -->
<div class="bs-docs-section">
    <h1 id="4">4. url管理</h1>

    <p>Web-Platform自带了url的管理，我们可以通过一些配置直接在页面行查询我们都有哪些url路径，那些jar包依赖等等。为了实现我们这个目的，我们只要做以下配置就可以</p>

    <ol>
        <li>设置 com.sinosoft.one.mvc.controllers.ToolsController的日志级别为debug</li>
    </ol>


    <p>示例：</p>

<pre><code>log4j.property
    ------------------------------------------------------------
    log4j.logger.com.sinosoft.one.mvc.controllers.ToolsController=debug
    ============================================================
    logback.xml
    ------------------------------------------------------------
    &lt;logger name="com.sinosoft.one.mvc.controllers.ToolsController" level="debug" /&gt;
    ============================================================
</code></pre>

    <ol>
        <li><p>页面访问</p>

            <p>访问这些资源，我们直接在浏览器地址栏输入url地址就可以.格式为${ctx}/{project_name}/...</p></li>
    </ol>


    <p>示例</p>

<pre><code>${ctx}/{project_name}/mvc-info/startupInfo
</code></pre>

    <p>更多方法地址如下</p>

<pre><code>/mvc-info/startupInfo 项目启动信息
    /mvc-info/resources  打印出所有的资源信息
    /mvc-info/modules   同/mvc-info/module
    /mvc-info/method    这个url使用的时候需要带上参数[访问方式get/post..]=[从根路径开始的完整的url路径，如页面访问的时候是http://localhost:8080/demo/login,那么这里就需要带上/demo/login]
    示例：${ctx}/mvc-info/method?get=/demo/login
    /mvc-info/module  可以打印出所有的模块信息
    /mvc-info/tree 可以打印出所有url的节点信息
    /mvc-info/jar 同/mvc-info/resources
</code></pre>
</div>


<!-- Input groups
================================================== -->
<div class="bs-docs-section">
    <h1 id="5">5. 拦截器(Interceptor)</h1>

    <p>面向切面编程（AOP）方法可以让一个项目更加关注核心逻辑,拦截器目标是controller层提供各种在控制器执行前、执行后的代码切入，以达到各种可AOP的目标。</p>

    <h2 id="5.1">5.1 拦截器的位置</h2>

    <p>拦截器和控制器是分不开的,拦截器的拦截对象就是控制器,所以拦截器和控制器是在一起的,哪里有控制器,哪里就可以有拦截器.具体的说就是在controllers和子包下实现了ControllerInterceptorAdapter 的类都是拦截器.</p>

    <h2 id="5.2">5.2 拦截器的拦截条件</h2>

    <p>我们可以通过重写ControllerInterceptorAdapter的一些方法达到条件性的拦截，具体的拦截条件如下：</p>

    <ul>
        <li>getRequiredAnnotationClass:返回一个Annotation类型,表示这个拦截器只对此Annotation标注过的controller才生效.</li>
        <li>isForAction:定义满足某条件的才会被拦截.</li>
        <li>isForDispatcher:根据响应的情况判断是否拦截，比如说是正常请求、内部forward、还是include.

            <h2 id="5.3">5.3 拦截器的实现</h2></li>
    </ul>


    <p>我们提供了拦截适配器ControllerInterceptorAdapter，通过继承ControllerInterceptorAdapter并且以Interceptor结尾就可以很方便的自定义我们自己的拦截器。</p>

    <p>自定义过滤器在ApplicationContext中默认的存储名称为去掉Interceptor后，首字母小写。如TestInterceptor默认的名称就是test</p>

    <ul>
        <li><p>示例</p>

<pre><code>public class TestInterceptor extends ControllerInterceptorAdapter {
    }
</code></pre></li>
        <li><p>拦截器有4个重要的方法，下边我们来介绍一下。</p></li>
    </ul>


    <p>1.before：在controller执行前执行。</p>

    <p>2.after：在controller执行中（后）执行，如果一个返回抛出了异常，则不会进来。</p>

    <p>3.round：这才是真正的controller执行中执行，不过用得很少。</p>

    <p>4.afterCompletion：在controller执行后执行，不论是否异常，都会进来。</p>

    <p>例子：</p>

<pre><code>    public class TestInterceptor extends    ControllerInterceptorAdapter {

    //在controller执行前执行
    @Override
    protected Object before(Invocation inv) throws Exception {
    Date date = new Date();
    String dateStr = DateFormatUtils.format(date, "yyyy-MM-dd HH:mm:ss");
    inv.addModel("date", dateStr);
    return super.before(inv);
    }

    //这才是真正的controller执行中执行，不过用得很少。
    @Override
    protected Object round(Invocation inv, InvocationChain chain)
    throws Exception {
    return super.round(inv, chain);
    }

    //在controller执行中（后）执行，如果一个返回抛出了异常，则不会进来。
    @Override
    protected Object after(Invocation inv, Object instruction) throws Exception {
    String loginUserName = (String)inv.getRequest().getSession().getAttribute("loginUserName");
    if(loginUserName != null){
    inv.addModel("welInfo", "您好，"+loginUserName+"先生，今天天气不错！");
    }
    return super.after(inv, instruction);
    }

    //在controller执行后执行，不论是否异常，都会进来。
    @Override
    public void afterCompletion(Invocation inv, Throwable ex) throws Exception {
    super.afterCompletion(inv, ex);
    }

    }
</code></pre>

    <h3>5.3.1 Intercepted注解</h3>

    <p>使用@Intercepted主要是用来改变默认的行为,使只有某些拦截器才能拦截该控制器.</p>

    <p>开发者可以使用2种设置方式,一种是通过配置allow,表示只有在allow内的拦截器才能拦截到;</p>

    <p>另一种是通过配置deny,表示除了deny中的拦截器都要拦截到.</p>

    <p>如果没有配置allow以及deny表示所有拦截器都能拦截到。如果allow和deny同时配置,则只有同时满足deny和allow才能拦截到.</p>

    <p>allow和deny里面的字符串表示的是相关拦截器在applicationContext中的id或name。
        对拦截器本身是和controller在相同的package中的一些规定:Mvc会自动把它们放到module中来，它们的id则为它们的类名(首字母改小写)或者去掉最后"Interceptor"后留下的名字(同样首字母也要变为小写).</p>

    <p>当然,如果这些@ControllerInterceptor配置了@Component,则按照Comonent的规定定义它们的id.</p>

    <p>允许使用的过滤器：我们使用注解中的allow属性，然后添加我们自定义的过滤器即可</p>

<pre><code>@Intercepted(allow = { "test", "test1", "test2" })
</code></pre>

    <p>不允许使用的过滤器</p>

<pre><code>@Intercepted(deny  = { "test3", "test4", "test5" })
</code></pre>

    <h3>5.3.2 拦截器的顺序</h3>

    <p>拦截器可以通过两种方式定义顺序:</p>

    <ul>
        <li>通过在拦截器的构造方法中设置拦截器的优先级setPriority(int);数值越大优先级越高。</li>
        <li>通过增加interceptors-order.xml配置文件统一配置拦截器的顺序.</li>
    </ul>


    <p>如果即在构造方法中设置了优先级,又在interceptors-order.xml中配置了拦截器的顺序,那么以xml中配置的为准.interceptors-order.xml文件中,拦截器的顺序从上到下，interceptors-order.xml放在resources目录下即可.</p>

    <ul>
        <li><p>interceptors-order.xml(格式样例):</p>

<pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
    &lt;interceptors&gt;
    &lt;interceptor&gt;com.sinosoft.one.demo.controllers.Test2Interceptor&lt;/interceptor&gt;
    &lt;interceptor&gt;com.sinosoft.one.demo.controllers.TestInterceptor&lt;/interceptor&gt;
    &lt;/interceptors&gt;
</code></pre></li>
    </ul>
</div>


<!-- Navs
================================================== -->
<div class="bs-docs-section">
    <h1 id="6">6. 数据校验</h1>

    <p>数据校验发生在所有的应用层,是从视图层到持久层的共同任务.通常相同的验证逻辑发生在每一层,这样是非常耗时并且容易出错.为了避免这些验证的重复,开发人员开讲验证逻辑捆绑至参数上。</p>

    <h2 id="6.1">6.1 Web-Platform的数据校验</h2>

    <p>Web-Platform的数据校验采用将需要验证的属性直接捆绑至参数,并且可以很方便的将验证结果返回给前台页面.对于请求的类型MVC会自动识别Ajax或普通Http的请求,并进行不同的响应,mvc提供了一系列的校验条件和对应的消息,校验的消息可以自己指定.mvc的校验扩展了hibernate-validator,不但可以验证javaBean的属性还可以验证Controller方法里的参数。</p>

    <h2 id="6.2">6.2 @Validation中的规则</h2>

    <p>@validation注解是mvc的专用注解,用来给Controller方法里的参数增加验证,以及把验证信息返回给页面.Controller方法参数的验证有两种:第一种是直接用javax.validation里的各种注解来验证,这个可以用来验证单个属性.第二种是用mvc自己的注解后缀为Ex,总共有15个,如下所列.这种注解主要有俩参数,第一个参数是自定义验证信息,第2个参数是数组,里面是需要验证的参数。</p>

<pre><code>AssertFalseEx //必须是false
    AssertTrueEx //必须是true
    DecimalMaxEx //Decimal的最大值
    DecimalMinEx //Decimal的最小值
    DigitsEx //数字的范围
    FutureEx //必须是时间,并且比当前时间大
    MaxEx //数字最大值
    MinEx //数字最小值
    NotBlankEx //不能为空
    NotEmptyEx //字符串,集合,map不能为Null和empy
    NotNullEx //不能为""和null
    NullEx //必须是Null
    PastEx //必须是时间,并且比当前时间小
    PatternEx //字符串必须和所提供的正则表达式想匹配
    SizeEx //字符串,集合,数组,map必须和给定得size一样
</code></pre>

    <h2 id="6.3">6.3 参数的校验</h2>

    <p>只需在参数前面加上@Param和@Validation注解即可.用@Param("paramName"),用@Validation(errorPath = "validateParam")表示验证validateParam方法的参数.errorPath参数用来指定验证错误信息的显示页面,一般和参数的提交页面是同一个.</p>

<pre><code>Controller写法：
    @Post("param")
    public String validateParam(@Validation(errorPath = "validateParam")
    @Param("id") @NotNull @Min(2012)  Long id,
    @Param("name") @NotEmpty
    @Size(max=10,min=2,message = "参数的长度应该在{max},{min}之间") String name,
    Invocation inv) {
    inv.addModel("message", "操作成功");
    return "validateParam";
    }
    Jsp:
    &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %&gt;
    &lt;%@ taglib prefix="mvc" uri="http://mvc.one.sinosoft.com/validation/msg" %&gt;
    &lt;%--这里使用了MVC提供的errorMsg标签，用以显示验证过后的错误信息--%&gt;
    &lt;html&gt;
    &lt;head&gt;
    &lt;title&gt;对Param的数据校验&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
    &lt;h4&gt;${message}&lt;/h4&gt;
    &lt;p&gt;单个参数的验证&lt;/p&gt;
    &lt;form name="paramForm" action="/validate/param" method="post"&gt;
    编号：&lt;input name="id" type="text" /&gt;&lt;mvc:errorMsg property="id" /&gt;&lt;br/&gt;
    姓名：&lt;input name="name" type="text" /&gt;&lt;mvc:errorMsg property="name"/&gt;&lt;br/&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    &lt;/form&gt;
    &lt;/body&gt;
    &lt;/html&gt;
</code></pre>

    <p>还有一种用的mvc自定义个扩展注解,将在下面章节给大家介绍.</p>

    <h2 id="6.4">6.4 javabean的校验</h2>

    <p>javaBean的属性增加校验条件然后给ValidateController增加Bean校验的事例方法.可以使用hibernate-validator的所有对javaBean的验证,详细的参考<a href="http://docs.jboss.org/hibernate/stable/validator/reference/en-US/html_single/#validator-gettingstarted-uel">hibernate-validator</a>.这里我们主要简单的介绍JavaBean的验证和mvc的扩展注解一起使用。</p>

<pre><code>JavaBean示例:
    public class Student {

    //学生id不能为空并且最小2012
    @NotNull
    @Min(2012)
    private Long id;
    //学生姓名长度最小为2最大10，并且不能是空串
    //可以自己指定错误消息，而不采用默认的消息
    @NotEmpty
    @Size( min = 2, max = 10 ,message = "名字的长度应该在{min} - {max}之间")
    private String name;
    @Max(22)
    @Min(12)
    private Integer age;

    private Float mathScore;

    private Float englishScore;

    private Date birthday;

    //@TODO add Getter Setter *****
    }
    Controller示例：
    @Path("")
    public class ValidateController {


    //跳转到validateBean.jsp用
    @Get("bean")
    public String toBeanJsp() {

    return "validateBean";
    }

    //验证的条件采用Student中的配置
    @Post("bean")
    public String validateBean1( @Validation(errorPath = "validateBean") Student stu,
    Invocation inv) {
    inv.addModel("message", "操作成功");
    return "validateBean";
    }

    //验证的条件是临时指定的在@Validation配置，同时Student的验证条件依然生效
    @Post("config")
    public String validateBean2( @Validation(errorPath = "validateBean",
    notNull = @NotNullEx(props = {"age","birthday"}),
    max = @MaxEx(props = {"mathScore","englishScore"},value = 100),
    min = @MinEx(props = {"mathScore","englishScore"},value = 0),
    past = @PastEx(props = "birthday") ) Student stu,
    Invocation inv) {

    inv.addModel("message","操作成功");
    return "validateBean";
    }

    }
</code></pre>

    <h2 id="6.5">6.5 校验的错误信息</h2>

    <p>errorMessage用以显示验证过后的错误信息,使用时必须引入mvc的检验标签。errerMessage有property和type两个属性.property是必须填写的,表示显示哪个属性或参数的错误信息.type表示显示的类型有propertyPath、message、invalidValue三种.invalidValue:表示错误的值, message:表示错误信息, propertyPath:表示被校验的属性名称或参数名称</p>

<pre><code>&lt;%@ taglib prefix="mvc" uri="http://mvc.one.sinosoft.com/validation/msg" %&gt;
    &lt;mvc:errorMsg property="id" /&gt;
</code></pre>

    <h2 id="6.6">6.6 自定义的数据校验</h2>

    <p>详情请参见<a href="http://docs.jboss.org/hibernate/stable/validator/reference/en-US/html_single/#validator-gettingstarted-uel">hibernate-validator</a>.</p>
</div>


<!-- Navbar
================================================== -->
<div class="bs-docs-section">
    <h1 id="7">7 文件上传</h1>

    <p>one-web支持多种格式,多个文件的上传。您只需在页面上,上传表单要enctype="multipart/form-data",method="POST" 两个属性,表单里要有type为file的input用于选择文件，file类型的input个数不限。</p>

    <h2 id="7.1">7.1 单个文件的上传</h2>

    <p>单个文件的上传只要form中有file类型的input。</p>

    <p>单个文件的表单:</p>

<pre><code>&lt;form name="" action="uploade/save" method="post" enctype="multipart/form-data"&gt;
    &lt;label&gt;资料上传:&lt;/label&gt;
    &lt;div class="controls"&gt;
    &lt;input type="file" id="doc" name="fileName1"/&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    &lt;/div&gt;
    &lt;/form&gt;
</code></pre>

    <p>控制器代码：</p>

<pre><code>//@Param的参数和input的name相同
    @Post("save")
    public String save(@Param("fileName1") MultipartFile file,
    Invocation inv)  throws IllegalStateException, IOException  {
    //MultipartFile 提供了常用的文件操作方法
    file.getInputStream();
    file.getBytes();
    file.getName();
    file.transferTo(); //Transfer the received file to the given    destination file.
    return "@upload success";
    }
</code></pre>

    <h2 id="7.2">7.2 多个文件的上传</h2>

    <p>多文件的上传是依靠file类型的input 的name属性的前缀来区分的例如 name=doc1和name=doc2 可以用@Param("doc")同时获取。</p>

    <p>多文件的Form表单：</p>

<pre><code>&lt;form name="" action="uploade/save" method="post" enctype="multipart/form-data"&gt;
    &lt;label&gt;资料上传:&lt;/label&gt;
    &lt;div class="controls"&gt;
    &lt;input type="file" id="doc" name="doc1"/&gt;
    &lt;input type="file" id="doc2" name="doc2"/&gt;
    &lt;input type="file" id="doc3" name="filea"/&gt;
    &lt;input type="file" id="doc4" name="fileb"/&gt;
    &lt;input type="submit" value="Form提交" /&gt;
    &lt;/div&gt;
    &lt;/form&gt;
</code></pre>

    <p>控制器代码：</p>

<pre><code>@Post("save")
    public String save(@Param("doc") MultipartFile[] docs,//获取doc开头的多个文件
    @Param("file") MultipartFile[] files )//获取file开头的多个文件
    throws IllegalStateException, IOException  {
    ...
    return "@upload success";
</code></pre>

    <p>}</p>

    <h2 id="7.3">7.3 混合文件上传</h2>

    <p>混合模式就是上面两种上传的综合，只需要将两个方法的参数累加到一起，将form合并到一起即可。</p>

    <h2 id="7.4">7.4 上传所有文件</h2>

    <p>上传所有文件的方法为不在控制器的MultipartFile参数增加@Param注解.
        控制器代码：</p>

<pre><code>@Post("save")
    public String save( MultipartFile[] files //不加@Param注解获取所有file类型的input )
    throws IllegalStateException, IOException  {
    return "@upload success";
    }
</code></pre>
</div>


<!-- Breadcrumbs
================================================== -->
<div class="bs-docs-section">
    <h1 id="8">8. 异常处理</h1>

    <ul>
        <li><p>一般来说传统的编程都会到处去try，特别是java里，try来try去的。</p></li>
        <li><p>如果打开你的项目，每个java文件中的代码都有一堆的try，那这时候就是ErrorHandle上阵的时候了。</p></li>
        <li><p>ErrorHanler致力于：统一捕捉和处理各种异常，可区分对待和返回；统一的出错体验。</p></li>
        <li><p>非常类似做web开发时的500统一出错页面这样的东西。</p></li>
        <li><p>controllers包自己或其子包下都可以拥有独立的ControllerErrorHandler。    可以将异常让渡给上级模块的错误处理器处理</p></li>
    </ul>


    <h2 id="8.1">8.1 最简单的</h2>

<pre><code>//// 直接放在controllers包或其子包下
    public class ErrorHandler implements ControllerErrorHandler {
    public Object onError(Invocation inv, Throwable ex) throws Throwable {
    // TODO logger.error("handle err:", ex); 记录错误日志
    return "@error";
    }
    }
</code></pre>

    <h2 id="8.2">8.2 放在哪里才能生效？</h2>

    <ul>
        <li>放在controllers目录下，和controller们在一起。</li>
        <li>一般来讲，ErrorHandler都是用在web项目里，在最近层起作用。</li>
        <li>所有的方法都可以尽情地向处throws Exception了。不需要再try了</li>
    </ul>


    <h2 id="8.3">8.3 区分异常类型的</h2>

<pre><code>public class ErrorHandler implements ControllerErrorHandler {

    @Override
    public Object onError(Invocation inv, Throwable ex) {
    if (ex instanceof BizException) {
    BizException bizEx = (BizException) ex;
    String code = bizEx.getCode();
    // 在控制器所在的package中或WEB-INF目录下配置messages.xml，或者messages.property
    // 可配置多个，优先找控制器自己package的，然后是父package的，最后是WEB-INF的
    // messages.xml格式参考在下面
    MessageSource msgSource = inv.getApplicationContext();
    String msg = msgSource.getMessage(code, bizEx.getArgs(), inv.getRequest().getLocale());
    // 在jsp中使用${errorMsg}输出该错误
    inv.addModel("errorMsg", msg);
    return "/views/biz-500.jsp";
    }
    Log logger = LogFactory.getLog(inv.getControllerClass());
    logger.error("", ex);
    // forward to webapp/views/500.jsp
    return "/views/500.jsp";
    }
    }
</code></pre>

    <ul>
        <li><p>在控制器所在的package中或WEB-INF目录下配置messages.xml，或者messages.property</p></li>
        <li><p>可配置多个，优先找控制器自己package的，然后是父package的，最后是WEB-INF的</p>

<pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
    &lt;!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd"&gt;
    &lt;properties&gt;
    &lt;comment&gt;Rhyme&lt;/comment&gt;
    &lt;entry key="seven-eight"&gt;lay them straight&lt;/entry&gt;
    &lt;entry key="five-six"&gt;pick up sticks&lt;/entry&gt;
    &lt;entry key="nine-ten"&gt;a big, fat hen&lt;/entry&gt;
    &lt;entry key="three-four"&gt;shut the door&lt;/entry&gt;
    &lt;entry key="one-two"&gt;buckle my shoe&lt;/entry&gt;
    &lt;/properties&gt;
</code></pre></li>
    </ul>


    <h2 id="8.4">8.4 更好的区分不同的异常类型</h2>

<pre><code>package com.sinosoft.controllers;

    import net.sinosoft.one.web.ControllerErrorHandler;
    import net.sinosoft.one.web.Invocation;

    public class ErrorHandler implements ControllerErrorHandler {

    // 把方法第2个参数换上具体的异常类...这个onError就只处理所声明的这类异常
    public Object onError(Invocation inv, BizException bizEx) {
    // 略去具体的处理代码......
    return "/views/biz-500.jsp";
    }
    ...
    // 通用onError方法，处理其他onError无法处理的异常
    @Override
    public Object onError(Invocation inv, Throwable ex) {
    // 略去具体的处理代码......
    return "/views/500.jsp";
    }
    }
</code></pre>

    <h2 id="8.5">8.5 将异常让渡给上级模块的错误处理器处理</h2>

    <p>controllers自己或其子package下都可以拥有独立的ControllerErrorHandler。 如果在web调用过程中，控制器、拦截器等发生异常时，如果给定的module含有自己ControllerErrorHanlder时， 则由他处理；如果自己没有则调用上级的ControllerErrorHandler处理。</p>

    <p>但是如果所在的module有ControllerErrorHandler，如何在有必要的时候将异常抛给上级的ControllerErrorHandler呢？</p>

<pre><code>public class ErrorHandler implements ControllerErrorHandler {
    // 声明ParentErrorHandler,注意，这里不是ControllerErrorHandler
    // 万一上级没有ControllerErrorHandler, 这个字段也不会为空
    @Autowired
    ParentErrorHandler parent;

    // 处理这个处理器只想处理的
    public Object onError(Invocation inv, RuntimeException ex) throws Throwable {
    inv.getResponse().getWriter().write("&lt;pre&gt;RuntimeException&lt;br&gt;");
    ex.printStackTrace(inv.getResponse().getWriter());
    inv.getResponse().getWriter().write("&lt;/pre&gt;");
    return "";
    }

    // 通用的异常抛给上级ControllerErrorHanlder或上级的上级去处理
    @Override
    public Object onError(Invocation inv, Throwable ex) throws Throwable {
    return parent.onError(inv, ex);
    }
    }
</code></pre>

    <h2 id="8.6">8.6 异常处理的Adapter</h2>

    <p>以上parentErrorHanlder的逻辑，Web-Platform提供的ErrorHandlerAdpater类已经封装了</p>

    <p>建议您通过extends ErrorHandlerAdapter 实现错误处理器，而非直接实现ControllerErrorHandler</p>

    <ul>
        <li>处理这个处理器只想处理的</li>
        <li><p>通用的默认就会抛给上级模块的错误处理器处理</p>

<pre><code>public class ErrorHandler extends ErrorHandlerAdapter {

    public Object onError(Invocation inv, RuntimeException ex) throws Throwable {

    inv.getResponse().getWriter().write("&lt;pre&gt;RuntimeException&lt;br&gt;");
    ex.printStackTrace(inv.getResponse().getWriter());
    inv.getResponse().getWriter().write("&lt;/pre&gt;");
    return "";
    }
    }
</code></pre></li>
    </ul>
</div>


<!-- Labels
================================================== -->
<div class="bs-docs-section">
    <h1 id="9">9. Portal</h1>

    <p>portal做门户用的.简单来说,把一个网页分成了N个区域,每个区域由不同的action去执行,多线程并行提高cpu使用率.这样更加充分地使用多核cpu.可以更加方便多人协作时对项目进行模块划分,开发的时候,按照url一分,一个url一个模块,所有的页面都可以切成小的豆腐块.要使用portal,必须先在web.xml里声明所使用的线程池大小.
        web.xml配置:</p>

<pre><code>&lt;context-param&gt;
    &lt;param-name&gt;portalExecutorCorePoolSize&lt;/param-name&gt;
    &lt;param-value&gt;1024&lt;/param-value&gt;
    &lt;/context-param&gt;
</code></pre>

    <p>Controller配置：</p>

<pre><code>@Get("portal")
    public String portal(Portal portal) {
    portal.addWindow("p1", "/wp1");
    portal.addWindow("p2", "/wp2");
    return "portal";
    }

    @Get("wp1")
    public String portal1() {
    return "@this is p1";
    }

    @Get("wp2")
    public String portal2() {
    return "@this is p2";
    }
</code></pre>

    <p>jsp取值:</p>

<pre><code>&lt;%@ page contentType="text/html;charset=UTF-8" language="java" %&gt;
    &lt;html&gt;
    &lt;head&gt;
    &lt;title&gt;&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
    portal演示信息：
    &lt;br/&gt;
    ${p1}
    &lt;br/&gt;
    ${p2}
    &lt;/body&gt;
    &lt;/html&gt;
</code></pre>
</div>


<!-- Badges
================================================== -->
<div class="bs-docs-section">
    <h1 id="10">10. Pipe</h1>

    <p>pipe起源于facebook的工程师对他们网页提速的方案:将网页分解为Pagelets的小块（在one叫做window的小块）,然后通过后端多重管道运行,以达到性能的最佳.pipe巧妙使用了http 1.1连接有timeout的机制,充分使用一次http连接来传递数据.pipe可使用户在大多数浏览器中感受到延迟减少了一半.
        使用pipe很简单:</p>

<pre><code>controller写法:
    @Path("")
    public class PipeController {
    @Get("pipe")
    public String pipe(Pipe pipe) {
    pipe.addWindow("p1", "/wp1");
    pipe.addWindow("p2", "/wp2");
    return "pipe";
    }

    @Get("wp1")
    public String portal1() {
    return "@this is p1";
    }

    @Get("wp2")
    public String portal2() {
    return "@this is p2";
    }
    }
    Jsp写法:
    &lt;%@ page contentType="text/html;charset=UTF-8"%&gt;
    &lt;%@ taglib uri="http://mvc.one.sinosoft.com/tags/pipe" prefix="mvcpipe"%&gt;
    &lt;%--注意标签的引入--%&gt;
    &lt;%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%&gt;
    &lt;c:set var="ctx" value="${pageContext.request.contextPath}" /&gt;
    &lt;!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"&gt;
    &lt;html&gt;
    &lt;head&gt;
    &lt;meta http-equiv="Content-Type" content="text/html; charset=UTF-8"&gt;
    &lt;title&gt;portal/pipe演示信息&lt;/title&gt;
    &lt;%--注意引入jquery和mvc-pipe--%&gt;
    &lt;script type="text/javascript" src="${ctx}/static/js/jquery-1.11.0.js"&gt;&lt;/script&gt;
    &lt;script type='text/javascript' src='${ctx}/static/js/mvc-pipe.js'&gt;&lt;/script&gt;
    &lt;/head&gt;
    &lt;body&gt;

    pipe演示信息：
    &lt;br&gt;
    &lt;div class="window"&gt;
    &lt;div class="title"&gt;用户&lt;/div&gt;
    &lt;div class="content" id="p1"&gt;&lt;/div&gt;
    &lt;/div&gt;

    &lt;div class="window"&gt;
    &lt;div class="title"&gt;权限&lt;/div&gt;
    &lt;div class="content" id="p2"&gt;&lt;/div&gt;
    &lt;/div&gt;
    &lt;input type="button" value="加载用户"onclick="showLazyContent('uuuu','p1');" &gt;&amp;nbsp;&amp;nbsp;&lt;input type="button" value="加载权限" onclick="showLazyContent('ytyy','p2');"&gt;

    &lt;/body&gt;
    &lt;/html&gt;
    &lt;mvcpipe:writes&gt;
    &lt;mvcpipe:write id = "uuuu" lazyLoad = "true" targetId="p1"/&gt;
    &lt;mvcpipe:write id = "ytyy" lazyLoad = "ture" targetId="p2" /&gt;
    &lt;/mvcpipe:writes&gt;
</code></pre>
</div>


<!-- Jumbotron
================================================== -->
<div class="bs-docs-section">
    <h1 id="11">11. 国际化</h1>

    <p>为了使应用程序能够兼容多种语言而不需要修改源代码我们就需要考虑国际化了。mvc中的国际化非常简单，只需要配置好语言文件就可以。前台我们使用spring的message标签就可以很方便的取,无需其他的配置.</p>

    <p>配置文件放在项目根目录下,不能放在子目录中，否则无法获取。</p>

    <p>语言文件例子(3个properties文件,文件前缀必须一致,后面是语言和国家)：</p>

<pre><code>messages.properties
    title=MVC Demo{i18n}

    welcome=Welcome to MVC Demo\!

    messages_en_US.properties
    title=(US) MVC Demo{i18n}

    welcome=(US)Welcome to  professional DEMO\!

    messages_zh_CN.properties
    title=MVC Demo{\国\际\化}

    welcome=\欢\迎\来\到 MVC
</code></pre>

    <p>Controller:</p>

<pre><code>@Path("")
    public class MsgController {

    @Get("msg")
    public String hello() {
    return "message";
    }
    }
</code></pre>

    <p>jsp：</p>

<pre><code>&lt;%@ page contentType="text/html;charset=UTF-8" language="java" %&gt;
    &lt;%@taglib uri="http://www.springframework.org/tags" prefix="mvc" %&gt;
    &lt;html&gt;
    &lt;head&gt;
    &lt;title&gt;&lt;mvc:message code="title" /&gt;&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
    &lt;h2 style="color:red;"&gt;&lt;mvc:message code="welcome" /&gt;&lt;/h2&gt;
    &lt;/body&gt;
    &lt;/html&gt;
</code></pre>
</div>

<!-- Wells
================================================== -->
<div class="bs-docs-section">
    <h1 id="12">附录</h1>

    <h2>Restful 介绍</h2>

    <p>REST（英文：Representational State Transfer，简称REST）描述了一个架构样式的网络系统，比如 web 应用程序。它首次出现在 2000 年 Roy Fielding 的博士论文中，他是 HTTP 规范的主要编写者之一。</p>

    <p>原则条件
        REST 指的是一组架构约束条件和原则。满足这些约束条件和原则的应用程序或设计就是 RESTful。</p>

    <p>Web 应用程序最重要的 REST 原则是，客户端和服务器之间的交互在请求之间是无状态的。从客户端到服务器的每个请求都必须包含理解请求所必需的信息。如果服务器在请求之间的任何时间点重启，客户端不会得到通知。此外，无状态请求可以由任何可用服务器回答，这十分适合云计算之类的环境。客户端可以缓存数据以改进性能。</p>

    <p>在服务器端，应用程序状态和功能可以分为各种资源。资源是一个有趣的概念实体，它向客户端公开。资源的例子有：应用程序对象、数据库记录、算法等等。每个资源都使用 URI (Universal Resource Identifier) 得到一个惟一的地址。所有资源都共享统一的界面，以便在客户端和服务器之间传输状态。使用的是标准的 HTTP 方法，比如 GET、PUT、POST 和 DELETE。Hypermedia 是应用程序状态的引擎，资源表示通过超链接互联。</p>

    <p>分层系统
        另一个重要的 REST 原则是分层系统，这表示组件无法了解它与之交互的中间层以外的组件。通过将系统知识限制在单个层，可以限制整个系统的复杂性，促进了底层的独立性。</p>

    <p>当 REST 架构的约束条件作为一个整体应用时，将生成一个可以扩展到大量客户端的应用程序。它还降低了客户端和服务器之间的交互延迟。统一界面简化了整个系统架构，改进了子系统之间交互的可见性。REST 简化了客户端和服务器的实现。</p>

    <p>更多信息，请参考: <a href="http://zh.wikipedia.org/wiki/REST" title="维基百科">http://zh.wikipedia.org/wiki/REST</a></p>
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
