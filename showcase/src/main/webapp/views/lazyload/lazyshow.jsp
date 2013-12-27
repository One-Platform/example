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
<title>延迟加载说明文档</title>
    <link href="${ctx}/static/css/bootstrap/bootstrap.css" rel="stylesheet">
    <!-- Documentation extras -->
    <link href="${ctx}/static/css/bootstrap/docs.css" rel="stylesheet" />
    <link href="${ctx}/static/css/bootstrap/github.min.css" rel="stylesheet" />
    <link href="${ctx}/static/css/bootstrap/bootstrap_master.css" rel="stylesheet" />
    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png" />
    <script type="text/javascript" src="${ctx}/static/js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/sinosoft.lazyload.js"></script>
</head>

<body>
<%@ include file="/static/layouts/header.jsp"%>

<!-- Docs page layout -->
<div class="bs-header" id="content">
    <div class="container">
        <h1>延迟加载</h1>
        <p>加快页面响应速度，优化客户体验。</p>
    </div>
</div>

<!-- Callout for the old docs link -->
<div class="container bs-docs-container">
    <div id="one" class="row">
        <div class="col-md-3">
            <div class="bs-sidebar hidden-print" role="complementary">
                <ul class="nav bs-sidenav">
                    <li> <a href="#one">1、需要引入的js</a></li>
                    <li> <a href="#two">2、jsp页面示例</a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-9" role="main" style="margin-top: 26px;">
<%--<p id="one">--%>
    <%--浏览器在初始化页面的时候，不管该html元素是否隐藏，都会去解析。但是，当你把页面的某些元素放进textarea中的时候，浏览器会把该html元素仅仅当做字符处理。我们的延迟加载正是利用这个原理，--%>
    <%--在页面加载的时候，把不是在初始化的时候必须展示出来的元素放在textarea中，等到用的时候再通过我们的控件把这些元素进行加载。通过这种方式，提高页面的加载速度。--%>
<%--</p>--%>
<p>
    本组件主要是针对页面操作或展示上含有多个步骤，多个标签页等业务场景。例如车险的网销；页面比较大，分屏展示等等。
</p>
<h4>1、需要引入的js</h4>
<pre id="two"><code>&lt;script type=&quot;text/javascript&quot; src=&quot;./js/sinosoft.lazyload.js&quot;&gt;&lt;/script&gt;
</code></pre>
<h4>2、jsp页面示例</h4>
<p>注意：<br />
(1)如果延迟加载的内容含有textarea，需要你对textarea进行转义，否则会出现错误。<br />
(2)延迟加载的用法是调用showLazyContent这个方法，需要传入的两个参数分别是包含延迟加载内容的textarea的id，需要将延迟加载的内容加载到目标元素的id。</p>
<pre><code>&lt;p&gt;以网购车险为例，假设购车步骤分为填写车辆信息，获得精确报价，填写个人信息，确认投保，支付这五个步骤。那么我们用延迟加载的方法就是，初始化的时候只加载第一步有关的页面，其他步骤的页面或html元素放到textarea中，需要的时候再去加载。&lt;/p&gt;
&lt;div id=&quot;left_div&quot; class=&quot;col-md-12&quot;&gt;
&lt;p style=&quot;color: red; font-weight: bold;&quot;&gt;一、填写车辆信息&lt;/p&gt;
&lt;form role=&quot;form&quot;&gt;
&lt;div class=&quot;form-group&quot;&gt;
	&lt;label for=&quot;exampleInputEmail2&quot;&gt;车牌号&lt;/label&gt;
	&lt;input type=&quot;text&quot; class=&quot;form-control&quot; id=&quot;exampleInputEmail2&quot; placeholder=&quot;请填写车牌号&quot;&gt;
&lt;/div&gt;
&lt;div class=&quot;form-group&quot;&gt;
	&lt;label for=&quot;exampleInputPassword2&quot;&gt;车主姓名&lt;/label&gt;
	&lt;input type=&quot;password&quot; class=&quot;form-control&quot; id=&quot;exampleInputPassword2&quot; placeholder=&quot;请填写车主姓名&quot;&gt;
&lt;/div&gt;
&lt;/form&gt;
&lt;input class=&quot;btn btn-default&quot; type=&quot;button&quot; value=&quot;下一步&quot; onclick=&quot;showLazyContent('sec_step', 'left_div')&quot; /&gt;
&lt;/div&gt;

&lt;textarea id=&quot;sec_step&quot; class=&quot;lazyload&quot;&gt;
	&lt;p style=&quot;color:red; font-weight: bold;&quot;&gt;二、获得精确报价&lt;/p&gt;
	&lt;p&gt;根据您填写的车辆信息，您的车辆价格为&lt;b style=&quot;color: red;&quot;&gt;14000&lt;/b&gt;元。&lt;/p&gt;
	&lt;input class=&quot;form-control&quot; type=&quot;text&quot; value=&quot;价格不对？请您输入正确价格&quot;  /&gt;&lt;br /&gt;
	&lt;input class=&quot;btn btn-default&quot; type=&quot;button&quot; value=&quot;下一步&quot; onclick=&quot;showLazyContent('th_step', 'left_div');&quot; /&gt;
&lt;/textarea&gt;
&lt;textarea id=&quot;th_step&quot; class=&quot;lazyload&quot;&gt;
	&lt;p style=&quot;color:red; font-weight: bold;&quot;&gt;三、填写个人信息&lt;/p&gt;
	&lt;div class=&quot;form-group&quot;&gt;
		&lt;label for=&quot;idenfityId&quot;&gt;身份证号&lt;/label&gt;
		&lt;input type=&quot;password&quot; class=&quot;form-control&quot; id=&quot;idenfityId&quot; placeholder=&quot;请输入身份证号&quot;&gt;
	&lt;/div&gt;
	&lt;input class=&quot;btn btn-default&quot; type=&quot;button&quot; value=&quot;下一步&quot; onclick=&quot;showLazyContent('fr_step', 'left_div');&quot; /&gt;
&lt;/textarea&gt;
&lt;textarea id=&quot;fr_step&quot; class=&quot;lazyload&quot;&gt;
	&lt;%@ include file=&quot;/views/lazyload/testLazyload.jsp&quot; %&gt;
&lt;/textarea&gt;
&lt;textarea id=&quot;fv_step&quot; class=&quot;lazyload&quot;&gt;
	&lt;p style=&quot;color:red; font-weight: bold&quot;&gt;五、支付&lt;/p&gt;
	&lt;div&gt;支付页面....&lt;/div&gt;
	&lt;div class=&quot;form-group&quot;&gt;
		&lt;label for=&quot;note&quot;&gt;备注&lt;/label&gt;
		&lt;textarea class="form-control" id="note" rows="3"&gt;
请填写您对我们的服务评价，我们会仔细阅读每一份评价，谢谢！
                    &lt;/textarea&gt;
	&lt;/div&gt;
&lt;/textarea&gt;
</code></pre>
            <p>以网购车险为例，假设购车步骤分为填写车辆信息，获得精确报价，填写个人信息，确认投保，支付这五个步骤。
                那么我们用延迟加载的方法就是，初始化的时候只加载第一步有关的页面，其他步骤的页面或html元素放到textarea中，需要的时候再去加载。
            </p>
            <div id="left_div" class="col-md-12">
                <p style="color: red; font-weight: bold;">一、填写车辆信息</p>
                <form role="form">
                    <div class="form-group">
                        <label for="exampleInputEmail2">车牌号</label>
                        <input type="text" class="form-control" id="exampleInputEmail2" placeholder="请填写车牌号">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword2">车主姓名</label>
                        <input type="password" class="form-control" id="exampleInputPassword2" placeholder="请填写车主姓名">
                    </div>
                </form>
                <input class="btn btn-default" type="button" value="下一步" onclick="showLazyContent('sec_step', 'left_div')" />
            </div>
            <textarea id="sec_step" class="lazyload">
                <p style="color:red; font-weight: bold;">二、获得精确报价</p>
                <p>根据您填写的车辆信息，您的车辆价格为<b style="color: red;">14000</b>元。</p>
                <input class="form-control" type="text" value="价格不对？请您输入正确价格"  /><br />
                <input class="btn btn-default" type="button" value="下一步" onclick="showLazyContent('th_step', 'left_div');" />
            </textarea>
            <textarea id="th_step" class="lazyload">
                <p style="color:red; font-weight: bold;">三、填写个人信息</p>
                <div class="form-group">
                    <label for="idenfityId">身份证号</label>
                    <input type="password" class="form-control" id="idenfityId" placeholder="请输入身份证号">
                </div>
                <input class="btn btn-default" type="button" value="下一步" onclick="showLazyContent('fr_step', 'left_div');" />
            </textarea>
            <textarea id="fr_step" class="lazyload">
                <%@ include file="/views/lazyload/testLazyload.jsp" %>
            </textarea>
            <textarea id="fv_step" class="lazyload">
                <p style="color:red; font-weight: bold">五、支付</p>
                <div>支付页面....</div>
                <div class="form-group">
                    <label for="note">备注</label>
                    &lt;textarea class="form-control" id="note" rows="3"&gt;
请填写您对我们的服务评价，我们会仔细阅读每一份评价，谢谢！
                    &lt;/textarea&gt;
                </div>
            </textarea>
        </div>
    </div>
</div>

<!-- Footer ================================================== -->
<%@ include file="/static/layouts/footer.jsp"%>

<script src="${ctx}/static/js/bootstrap/bootstrap.js"></script>
<script src="${ctx}/static/js/bootstrap/application.js"></script>
</body>
</html>

