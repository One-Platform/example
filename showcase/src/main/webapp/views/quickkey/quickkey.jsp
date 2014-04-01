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
<title>自定义快捷键</title>
    <!-- Bootstrap core CSS
     注意：此文件跟随官网最新版本更新，随时会有改变。建议使用下面v3.0.3版本的CDN链接！
    -->
    <link href="${ctx}/static/css/bootstrap/bootstrap.css" rel="stylesheet">

    <!-- Documentation extras -->
    <link href="${ctx}/static/css/bootstrap/docs.css" rel="stylesheet" />
    <link href="${ctx}/static/css/bootstrap/github.min.css" rel="stylesheet" />
    <link href="${ctx}/static/css/bootstrap/bootstrap_master.css" rel="stylesheet" />
    <!--[if lt IE 9]>
    <script src="../docs-assets/js/ie8-responsive-file-warning.js"></script>
    <![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>

    <script src="${ctx}/static/js/bootstrap/html5shiv.min.js"></script>
    <script src="${ctx}/static/js/bootstrap/respond.min.js"></script>
    <![endif]-->
    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png" />
    <script type="text/javascript" src="${ctx}/static/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/mousetrap.js"></script>


<script type="text/javascript">
    Mousetrap.bind('/', function(){
        alert("触发快捷键/所对应的回调方法！");
    });
    Mousetrap.bind('ctrl+b', function() {
        alert("触发ctrl+b组合键所对应的回调方法！");
    });
    Mousetrap.bind('* a', function(){
        alert("触发* a序列快捷键对应的回调事件。");
    });
    Mousetrap.bind(['ctrl+q', 'ctrl+e'], function() {
        alert("多组快捷键对应同一个回调方法！");
    });
    Mousetrap.bind(['alt+q', 'tab'], function() {
        alert("多组快捷键对应同一个回调方法！");
    });
    Mousetrap.bind("w", function() {
        alert("keyup事件类型，w快捷键对应的回调函数！");
    }, "keyup");
    //我们都知道ctrl+s是保存，但是试试现在的ctrl+s快捷键？
    Mousetrap.bind("ctrl+s", function(e, combo) {
        var e = e || event;
        if(e.preventDefault) {
            e.preventDefault();
        }
    });
</script>
</head>

<body>
<a class="sr-only" href="#content">Skip to main content</a>

<!-- Docs master nav -->
<%@ include file="/static/layouts/header.jsp"%>

<!-- Docs page layout -->
<div class="bs-header" id="content">
    <div class="container">
        <h1>自定义快捷键</h1>
        <p>介绍Mousetrap的使用方法，案例等等。</p>
    </div>
</div>

<!-- Callout for the old docs link -->
<div class="container bs-docs-container">
    <div id="one" class="row">
        <div class="col-md-3">
            <div class="bs-sidebar hidden-print" role="complementary">
                <ul class="nav bs-sidenav">
                    <li> <a href="#one">1、需要引入的js文件</a></li>
                    <li> <a href="#two">2、QuickStrap</a></li>
                    <li> <a href="#three">3、组合键（一）</a></li>
                    <li> <a href="#four">4、组合键（二）</a></li>
                    <li> <a href="#five">5、序列快捷键</a></li>
                    <li> <a href="#six">6、基本约定介绍</a></li>
                    <li> <a href="#seven">7、bind方法及回调函数参数介绍</a></li>
                    <li> <a href="#eight">8、组织浏览器的默认行为</a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-9" role="main" style="margin-top: 26px;">
<p>Mousetrap是一款非常简单易用的绑定键盘快捷键的js库。支持IE7+,firefox,Chrome,Safari等主流浏览器。还等什么?扔掉鼠标，根据文档提示，享受快捷键带来的便捷吧!</p>
<h4 id="two">1、需要引入的js文件</h4>
<pre><code>&lt;script type=&quot;text/javascript&quot; src=&quot;js/mousetrap.js&quot;&gt;&lt;/script&gt;
</code></pre>

<h4>2、QuickStrap</h4>
<p>Mousetrap.bind方法是你将使用的主要方法。它将给一个被指定的快捷键组合，绑定一个回调方法，此方法就是快捷键所触发的方法。请看下面的代码：  
</p>
<pre><code id="three">Mousetrap.bind('/', function(){
    alert(&quot;触发快捷键/所对应的回调方法！&quot;)；
})
</code></pre>

<h4>3、组合键(一)</h4>
<p>试试下面的例子：</p>
<pre><code id="four">Mousetrap.bind('ctrl+b', function(){
    alert(&quot;触发ctrl+b组合键所对应的回调方法！&quot;);
})
</code></pre>

<h4>4、组合键(二)</h4>
<p>如果你想让多组快捷键对应同一个回调事件，你可以试试下面的例子：</p>
<pre><code id="five">Mousetrap.bind(['ctrl+q', 'ctrl+e'], function(){
    alert(&quot;多组快捷键对应同一个回调方法！&quot;);
})
</code></pre>

<h4>5、序列快捷键</h4>
<p>我们可以设置一套有序的快捷键，只有当你按照设置的按键顺序依次按下对应的按键，回调方法才会触发。</p>
<pre><code id="six">//先按下*键再按下a键。
//注意！！！  
//（1）*键不能直接按下数字键8，而是需要你按下shift+8。  
//（2）序列键的组合是有顺序的，想要触发序列键对应的回调事件，你就必须按照你规定的顺序依次按下对应的按键。  
//（3）想要触发序列组合键对应的回调事件，按下该序列中每个键的间隔不要太长，我们会在你按下第一个快捷键之后间隔比较短的时间重置该快捷键序列触发时间，那样你就得重新按一边快捷键了。  
Mousetrap.bind('* a', function(){  
    alert(&quot;触发* a序列快捷键对应的回调事件。&quot;)  
}); 
</code></pre>

<h4>6、基本约定介绍</h4>
<p>无规矩不成方圆，本着尽量灵活的原则，我们介绍下控件的一些简单的约定：<br />
（1）修饰键：修饰键指的是在组合键中可以和其他按键或者自身组合的按键。它包含shift，ctrl，alt，option，meta和mac中的command键。修饰键的主要作用是可以和其他的按键用 +这个符号链接，形成组合键，像上边的例子或类似于ctrl+s这样的。<br />
（2）特殊键的对应符号：tab，backspace(删除键)，enter(回车键)，capslock(大写键)，space（空格键），pageup，pagedown，end，home，left(光标左移动键)，up（光标上移动键）， right（光标右移动键），down（光标下移动键），ins，del。其他的按键键盘上写的什么您可对应输入。特殊键之所以以叫特殊键，是因为这些按键在不同的键盘上所标注的值可能是不一样的， 所以我们把他们的值统一起来，以免引起不必要的错误。除此之外特殊键再无其他特殊的地方。<br />
（3）注意，只有修饰键才可以和其他的按键用加号相连。当然修饰键也可以单独或自身之间用加号相连使用。</p>
<pre><code id="seven">Mousetrap.bind(['alt+q', 'tab'], function() {
    alert(&quot;多组快捷键对应同一个回调方法！&quot;);  
});
</code></pre>
<h4 >7、bind方法及回调函数参数介绍</h4>
<p>bind方法参数有两个：<br />
（1）用户定义的快捷键<br />
（2）回调函数<br />
回调函数参数有两个：<br />
（1）e：此参数类似于event对象，常用用这个参数获得触发的按键对应的code和阻止默认事件的执行。<br />
（2）combo：此参数的值是bind方法的第一个参数的值。</p>
<pre><code id="eight">Mousetrap.bind(&quot;w&quot;, function() {
    alert(&quot;keyup事件类型，w快捷键对应的回调函数！&quot;);  
}, &quot;keyup&quot;);      
//我们都知道ctrl+s是保存，但是试试现在的ctrl+s快捷键？  
Mousetrap.bind(&quot;ctrl+s&quot;, function(e, combo) {  
    var e = e || event;  
    if(e.preventDefault)  
        e.preventDefault();  
}); 
</code></pre>

<h4>8、阻止浏览器默认行为</h4>
<p>这通常不是一个好的实践，但是有时你可能想去覆盖浏览器中键盘组合的这个默认的行为。<br />
默认情况下，如果你聚焦在textarea,input框,select时，为了防止意外情况发生，所有的键盘事件将不会触发。<br />
例如，假设当你聚焦到一个表单输入框进行输入操作时，不想触发任何快捷键，或者在某个textarea中，你有一段文本，当你按下ctrl+s时去调用ajax或其他事件去保存它，而不是触发浏览器本身对应的保存事件。你可以用下面的这两种方式去对应实现：<br />
	<textarea class="mousetrap" style="width:300px;height:70px;">
		拿textarea举例，如果该标签上没有mousetrap这个class，就可以实现：当你聚焦到该输入框上时，不会触发mousetrap的定义的任何快捷键。
	</textarea>
	<span style="padding-left:20px;"></span>
	<textarea style="width:300px; height:70px;">
		拿textarea举例，如果该标签上有mousetrap这个class,就可以实现：当你聚焦到该输入框上时，会触发所有你定义的快捷键。试试下面代码中的例子：
	</textarea></p>
<pre><code>//我们都知道ctrl+s是保存，但是试试现在的ctrl+s快捷键？  
Mousetrap.bind(&quot;ctrl+s&quot;, function(e, combo) {  
    alert(combo);  
    e.preventDefault; //另外还有一种方式就是写return false；来代替这一行。  
});  
//当您给这个textarea加上mousetrap这个class的时候，您聚焦在textarea上时，键盘事件就可以触发了。  
&lt;textarea name=&quot;message&quot; class=&quot;mousetrap&quot;&gt;  
</code></pre>
        </div>
    </div>
</div>

<!-- Footer================================================== -->
<%@ include file="/static/layouts/footer.jsp"%>

<script src="${ctx}/static/js/bootstrap/bootstrap.js"></script>
<script src="${ctx}/static/js/bootstrap/application.js"></script>

</body>
</html>

