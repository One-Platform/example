<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html lang="zh-CN">
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>WEBSERVICE</title>

    <!-- Bootstrap core CSS
     注意：此文件跟随官网最新版本更新，随时会有改变。建议使用下面v3.0.3版本的CDN链接！
    -->
    <%@ include file="/static/layouts/base.jsp"%>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png" />
</head>
<body>
<a class="sr-only" href="#content">Skip to main content</a>

<!-- Docs master nav -->
<%@ include file="/static/layouts/componentHeader.jsp"%>

<!-- Docs page layout -->
<div class="bs-header" id="content">
    <div class="container">
        <h1>起步</h1>
        <p>简要介绍Bootstrap，以及如何下载、使用，基本模版和案例，等等。</p>
    </div>
</div>

<!-- Callout for the old docs link -->
<div class="container bs-docs-container">
<div class="row">
<div class="col-md-3">
    <div class="bs-sidebar hidden-print" role="complementary">
        <ul class="nav bs-sidenav">
            <li> <a href="#a">Rule规则引擎</a></li>
            <li> <a href="#b">如何使用规则引擎</a></li>
            <li> <a href="#c">rule提供的方法</a> </li>
        </ul>
    </div>
</div>
<div class="col-md-9" role="main">
    <h4 id="a">Rule规则引擎</h4>

    <p>使用规则引擎可以通过降低实现复杂业务逻辑的组件的复杂性，降低应用程序的维护和可扩展性成本。</p>

    <h4>何时使用规则引擎？</h4>

    <p>并非所有应用程序都应使用规则引擎。如果业务逻辑代码包括很多 if-else 语句，则应考虑使用一个规则引擎。维护复杂的 Boolean 逻辑可能是非常困难的任务，而规则引擎可以帮助您组织该逻辑。当您可以使用声明方法而非命令编程语言表达逻辑时，变化引入错误的可能性会大大降低。
        如果代码变化可能导致大量的财政损失，则也应考虑规则引擎。许多组织在将已编译代码部署到托管环境中时具有严格的规则。例如，如果需要修改 Java 类中的逻辑，在更改进入生产环境之前，将会经历一个冗长乏味的过程：</p>

    <ul>
        <li>必须重新编译应用程序代码。</li>
        <li>在测试中转环境中删除代码。</li>
        <li>由数据质量审核员检查代码。</li>
        <li>由托管环境架构师批准更改。</li>
        <li>计划代码部署。</li>
    </ul>


    <p>即使对一行代码的简单更改也可能花费组织的几千美元。如果需要遵循这些严格规则并且发现您频繁更改业务逻辑代码，则非常有必要考虑使用规则引擎。
        对客户的了解也是该决策的一个因素。尽管您使用的是一个简单的需求集合，只需 Java 代码中的简单实现，但是您可能从上一个项目得知，您的客户具有在开发周期期间甚至部署之后添加和更改业务逻辑需求的倾向（以及财政和政治资源）。如果从一开始就选择使用规则引擎，您可能会过得舒服一些。</p>

    <h4 id="b">如何使用规则引擎</h4>

    <p>1.需要在pom中增加依赖</p>

<pre><code>&lt;dependency&gt;
    &lt;groupId&gt;com.sinosoft.one&lt;/groupId&gt;
    &lt;artifactId&gt;rule&lt;/artifactId&gt;
    &lt;version&gt;1.0.1-SNAPSHOT&lt;/version&gt;
    &lt;/dependency&gt;
</code></pre>

    <p>2.在工程下的resources里加入drools.properties</p>

<pre><code>drools.agent.newInstance=false
    drools.agent.scanDirectories=true
    drools.resource.scanner.interval=3
    drools.resource.urlcache=c:/temp
</code></pre>

    <ul>
        <li>第一个表示规则集改变时是否重新生成一个新的知识库，默认是true。</li>
        <li>第二个表示是否扫描新增加的文件，默认是true。</li>
        <li>第三个表示扫描间隔，以秒为单位，默认是60.表示每60s去扫描一次规则配置文件。</li>
        <li>第四个表示如果得到的是远程资源，存储的临时缓存地址。当知识库加载的是远程资源时，当远程服务停止，会以最后一次正确的规则运行。</li>
    </ul>


    <p>3.编写决策表</p>
        <img src="${ctx}/static/images/rule/quickPriceRule-shandong_xls.jpg" height="500" width="1000"/>
    <br/>
        <img src="${ctx}/static/images/rule/quickPriceRule-shandong_xls1.jpg" height="500" width="1000"/>
    <p>4.编写规则流（可选）</p>
        <img src="${ctx}/static/images/rule/Java_EE_-_showcase_src_test_resources_comboRules_comboRuleFlow_rf_-_Eclipse_-__Users_bin_Desktop_eclipseworkspace.jpg" height="500" width="1000"/>

    <p>如果不同的条件需要适配不同的规则，则可以通过规则流来控制。下面有个最简单的例子。使用drools提供的Eclipse插件画图。</p>

    <p>5.编写xml</p>

<pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
    &lt;change-set xmlns='http://drools.org/drools-5.0/change-set'
    xmlns:xs='http://www.w3.org/2001/XMLSchema-instance'
    xs:schemaLocation='http://drools.org/drools-5.0/change-set.xsd http://anonsvn.jboss.org/repos/labs/labs/jbossrules/trunk/drools-api/src/main/resources/change-set-1.0.0.xsd'&gt;
    &lt;add&gt;
    &lt;resource source='classpath:quickPriceRules/quickPriceRule-shenzhen.xls'
    type="DTABLE"&gt;
    &lt;decisiontable-conf input-type="XLS"
    worksheet-name="Tables" /&gt;
    &lt;/resource&gt;
    &lt;resource source='classpath:quickPriceRules/quickPriceRule-shandong.xls'
    type="DTABLE"&gt;
    &lt;decisiontable-conf input-type="XLS"
    worksheet-name="Tables" /&gt;
    &lt;/resource&gt;
    &lt;resource source="classpath:quickPriceRules/quickPriceRuleFlow.rf" type="DRF"&gt;&lt;/resource&gt;
    &lt;/add&gt;
    &lt;/change-set&gt;
</code></pre>

    <p>resource表示要引入的资源包括决策表和规则流等。</p>

    <p id="c">rule提供了4个方法供外部使用。</p>

<pre><code>//读取配置文件并匹配事实
    public void executeRules(String changeSetFilePath, Object... facts);
    //读取配置文件和规则流并匹配事实
    public void executeRules(String ruleFlowName, String changeSetFilePath,
    Object... facts);
    //读取配置文件，匹配事实并把结果写到global对象里
    public void executeRulesWithGlobal(Object global, String changeSetFilePath,
    Object... facts);
    //读取配置文件，规则留匹配事实并把结果写到global对象里
    public void executeRulesWithGlobal(String ruleFlowName, Object global,
    String changeSetFilePath, Object... facts);
</code></pre>
</div>
</div>
</div>
<%@ include file="/static/layouts/footer.jsp"%>
<script type="text/javascript">

    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");

    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F3d8e7fc0de8a2a75f2ca3bfe128e6391' type='text/javascript'%3E%3C/script%3E"));

</script>
</body>
</html>