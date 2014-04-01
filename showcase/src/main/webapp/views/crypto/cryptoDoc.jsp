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
    <title>加密解密</title>
    
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
                    <li> <a href="#introduction">加密解密简介</a>
                    </li>
                    <li> <a href="#cryptoDemo">加密解密演示</a> </li>
                    <li> <a href="#environment">环境搭建</a>
                        <ul class="nav">
                            <li><a href="#addJar">添加依赖</a></li>
                            <li><a href="#modifyWeb">配置web.xml</a></li>
                            <li><a href="#addCryptoConfig">配置crypto_config.xml</a></li>
                        </ul>
                    </li>
                    <li> <a href="#formSubmit">form提交时的加密</a> </li>
                    <li> <a href="#ajaxSubmit">ajax提交时的加密</a> </li>
                    <li> <a href="#modifyCryptoConfig">动态修改crypto_config.xml</a> </li>                    
                </ul>
            </div>
        </div>
        <div class="col-md-9" role="main">
            <h1 id="introduction">加密解密简介</h1>
<p>加密解密整体来说分为两种：前端加密，后端解密；后端加密，前端解密。目前ONE平台的
加密解密组件支持：前端加密，后端解密。<br />
其中前端加密又分为：对form请求加密和对ajax请求加密两种。  
</p>
<h2 id="cryptoDemo">1. 加密解密演示</h2>
<p>案例分别演示了对form请求的加密和对ajax请求的加密，整个加密解密过程对开发人员透明。<br />
<a href="${ctx}/crypto/frontCrypto">案例演示</a></p>
<h2 id="environment">2. 环境搭建</h2>
<p id="addJar">2.1 对于非maven项目，需要添加相应的jar包：mvc-crypto-1.0.0-SNAPSHOT.jar;  对于maven项目，需要在pom.xml文件中添加如下依赖：<br />
pom.xml  
</p>
<pre><code>    &lt;dependency&gt;
        &lt;groupId&gt;com.sinosoft.one&lt;/groupId&gt;
        &lt;artifactId&gt;mvc-crypto&lt;/artifactId&gt;
        &lt;version&gt;1.0.0-SNAPSHOT&lt;/version&gt;
    &lt;/dependency&gt;
</code></pre>

<p id="modifyWeb">2.2 配置web.xml  
</p>
<pre><code>&lt;!-- CryptoSessionListener，用以生成密钥 --&gt;
&lt;listener&gt;  
    &lt;listener-class&gt;com.sinosoft.one.mvc.crypto.listener.CryptoSessionListener&lt;/listener-class&gt;  
&lt;/listener&gt;
&lt;!-- CryptoFilter begin 加密解密的核心过滤器--&gt;
&lt;filter&gt;
    &lt;filter-name&gt;cryptoFilter&lt;/filter-name&gt;
    &lt;filter-class&gt;com.sinosoft.one.mvc.crypto.filter.CryptoFilter&lt;/filter-class&gt;
    &lt;init-param&gt;
        &lt;param-name&gt;cryptoConfigLocation&lt;/param-name&gt;
        &lt;!-- crypto_config.xml是后台解密的配置文件 --&gt;
        &lt;param-value&gt;classpath:crypto/crypto_config.xml&lt;/param-value&gt;
    &lt;/init-param&gt;
&lt;/filter&gt;
&lt;filter-mapping&gt;
    &lt;filter-name&gt;cryptoFilter&lt;/filter-name&gt;
    &lt;url-pattern&gt;/*&lt;/url-pattern&gt;
    &lt;dispatcher&gt;REQUEST&lt;/dispatcher&gt;
    &lt;dispatcher&gt;FORWARD&lt;/dispatcher&gt;
    &lt;dispatcher&gt;INCLUDE&lt;/dispatcher&gt;
&lt;/filter-mapping&gt;
&lt;!-- CryptoFilter end --&gt;  
</code></pre>

<p id="addCryptoConfig">2.3 配置后端解密的配置文件crypto<em>config.xml。需要使用解密标签&lt;/uncrypto&gt;,解密标签只有一个属性“url”，url的值为对应的action的路径。需要注意的是：此url的值必须跟form或ajax的请求路径一致。<br />
整个解密过程对开发人员是透明的，后台得到的是已经解密过的数据。 <br />
crypto</em>config.xml  
</p>
<pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;  

    &lt;CryptoConfig xmlns=&quot;http://com.sinosoft.one/schema/mvc/cryptoconfig&quot;
        xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
        xsi:schemaLocation=&quot;http://com.sinosoft.one/schema/mvc/cryptoconfig &quot;&gt;
        &lt;!-- form提交时，后台的解密url --&gt;
        &lt;uncrypto url=&quot;/showcase/crypto/bgUncrypto&quot;/&gt;
        &lt;!-- ajax提交时，后台的解密url --&gt;
        &lt;uncrypto url=&quot;/showcase/crypto/ajaxBgUncrypto&quot;/&gt;
    &lt;/CryptoConfig&gt;
</code></pre>

<h2 id="formSubmit">3. from提交时的加密</h2>
<p>3.1  需要引用加密加密标签“&lt;%@ taglib uri=&quot;http://mvc.one.sinosoft.com/crypto/form&quot; prefix=&quot;f&quot; %&gt;”<br />
3.2  需要引用前端加密的JS：cryptocore.js和 crypto_codec.js。<br />
3.3  JSP的form表单中使用“onsubmit”属性来进行加密事件，在onsubmit中使用加密标签&lt;/cryptoForm&gt;对数据进行加密。<br />
加密标签&lt;/cryptoForm&gt;有两个属性，“formId”是当前form表单的id（必须项，所以form表单必须提供“id”属性值），“includes”指定哪些属性是需要加密的（必须项）。<br />
“includes”的值是需要加密的“name”属性的属性名，多个属性名之间使用“,”分隔。<br />
需要注意：form请求时，只支持对&lt;/input&gt;和&lt;/textarea&gt;标签的加密。</p>
<pre><code>&lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot;%&gt;
&lt;%@ taglib prefix=&quot;c&quot; uri=&quot;http://java.sun.com/jsp/jstl/core&quot;%&gt;
&lt;%@ taglib prefix=&quot;form&quot; uri=&quot;http://www.springframework.org/tags/form&quot;%&gt;
&lt;!-- form请求时，需要引用的加密标签 --&gt;
&lt;%@ taglib uri=&quot;http://mvc.one.sinosoft.com/crypto/form&quot; prefix=&quot;f&quot; %&gt;
&lt;c:set var=&quot;ctx&quot; value=&quot;${pageContext.request.contextPath}&quot; /&gt;
&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;
&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head&gt;
&lt;title&gt;前端加密&lt;/title&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;${ctx}/static/js/jquery-1.11.0.js&quot;&gt;&lt;/script&gt;
&lt;!-- 加密的核心JS，必须引用 --&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;${ctx}/static/js/crypto/cryptocore.js&quot;&gt;&lt;/script&gt;
&lt;!-- form提交时，需要引用的前台加密JS --&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;${ctx}/static/js/crypto/crypto_codec.js&quot;&gt;&lt;/script&gt;
&lt;script type=&quot;text/javascript&quot;&gt;

&lt;/head&gt;

&lt;body&gt;
    &lt;!-- action的路径需要crypto_config.xml文件中的路径一致 --&gt;
    &lt;form id=&quot;frontCrypto&quot; action=&quot;${ctx}/crypto/bgUncrypto&quot; method=&quot;post&quot;
        onsubmit=&quot;&lt;f:cryptoForm formId=&quot;frontCrypto&quot; includes=&quot;loginName,password,description&quot;/&gt;&quot;&gt;
        &lt;ul&gt;
            &lt;li&gt;用户名：&lt;input type=&quot;text&quot; id=&quot;loginName1&quot; name=&quot;loginName&quot; /&gt;&lt;/li&gt;
            &lt;li&gt;密 码：&lt;input type=&quot;password&quot; id=&quot;password1&quot; name=&quot;password&quot; /&gt;&lt;/li&gt;
            &lt;li&gt;描述：&lt;textarea id=&quot;description1&quot; name=&quot;description&quot;&gt;&lt;/textarea&gt;&lt;/li&gt;
        &lt;/ul&gt;
        &lt;input type=&quot;submit&quot; value=&quot;form前端加密&quot; /&gt;
    &lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</code></pre>

<h2 id="ajaxSubmit">4. ajax提交时的加密</h2>
<p>4.1  需要引用前端加密的JS：cryptocore.js和 enAndDe.js。<br />
4.2  调用$.packageAjax({})发送ajax请求，对数据进行加密。<br />
4.3  参数“crypto<em>attributies</em>names”为需要加密的属性名，多个属性名之间用“,”分隔。<br />
4.4  属性“isEncryption”的值为true，意为需要加密。<br />
4.5  前端ajax加密支持&lt;/input&gt;，&lt;/select&gt;，&lt;/radio&gt;，&lt;/textarea&gt;等多种JSP标签。<br />
注意：ajax前端加密时，需要在JSP页面中获得密钥（使用EL表达式：${sessionScope.crypto_key_attr_name}），且密钥的id属性值必须为“key”。</p>
<pre><code>&lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot;%&gt;
&lt;%@ taglib prefix=&quot;c&quot; uri=&quot;http://java.sun.com/jsp/jstl/core&quot;%&gt;
&lt;%@ taglib prefix=&quot;form&quot; uri=&quot;http://www.springframework.org/tags/form&quot;%&gt;

&lt;c:set var=&quot;ctx&quot; value=&quot;${pageContext.request.contextPath}&quot; /&gt;
&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;
&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head&gt;
&lt;title&gt;前端加密&lt;/title&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;${ctx}/static/js/jquery-1.11.0.js&quot;&gt;&lt;/script&gt;
&lt;!-- 加密的核心JS，必须引用 --&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;${ctx}/static/js/crypto/cryptocore.js&quot;&gt;&lt;/script&gt;
&lt;!-- ajax提交时，需要引用的前台加密JS --&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;${ctx}/static/js/crypto/enAndDe.js&quot;&gt;&lt;/script&gt;
&lt;script type=&quot;text/javascript&quot;&gt;
$(function(){
$(&quot;#uncryptoData&quot;).hide();
});

//Ajax前台加密
function ajaxSubmit() {
var _name = $(&quot;#ajaxName&quot;).val();
var _age = $(&quot;#ajaxAge&quot;).val();
var _gender = $(&quot;#ajaxGender&quot;).val();
var _sport = _sport = $(&quot;input:[type='radio']:checked&quot;).val();
var _address = $(&quot;#ajaxAddress&quot;).val();
$.packageAjax({
    type:&quot;POST&quot;, 
    url:&quot;${ctx}/crypto/ajaxBgUncrypto&quot;, //需要crypto_config.xml文件中的路径一致
    dataType:&quot;json&quot;, 
    data:{
        &quot;crypto_attributies_names&quot; : &quot;name,age,gender,sport,address&quot;,
        &quot;name&quot;:_name,
        &quot;age&quot;:_age,
        &quot;gender&quot;:_gender,
        &quot;sport&quot;:_sport,
        &quot;address&quot;:_address,
        &quot;idCard&quot;:&quot;1234567&quot;
    },
    isEncryption:true,
    success:function (data) {
        if (data != null) {
            $(&quot;#uncryptoName&quot;).val(data.name);
            $(&quot;#uncryptoAge&quot;).val(data.age);
            $(&quot;#uncryptoGender&quot;).val(data.gender);
            $(&quot;#uncryptoSport&quot;).val(data.sport);
            $(&quot;#uncryptoAddress&quot;).val(data.address);
            $(&quot;#uncryptoData&quot;).show();
        }
    },
    error:function () {
        alert(&quot;Ajax请求数据失败!&quot;);
    }
});
}
&lt;/script&gt;
&lt;/head&gt;

&lt;body&gt;

&lt;div&gt;
    &lt;h1&gt;Ajax前端加密&lt;/h1&gt;
    &lt;form id=&quot;ajaxFrontCrypto&quot;&gt;
        &lt;!-- ajax前端加密时，需要在JSP页面中获得密钥，且id属性值必须为“key”--&gt;
        &lt;input id=&quot;key&quot; value=&quot;${sessionScope.crypto_key_attr_name}&quot;
            type=&quot;hidden&quot; /&gt;
        &lt;div&gt;
            姓名：&lt;input type=&quot;text&quot; name=&quot;name&quot; id=&quot;ajaxName&quot; /&gt;
        &lt;/div&gt;
        &lt;div&gt;
            年龄：&lt;input class=&quot;input_one&quot; type=&quot;text&quot; name=&quot;age&quot; id=&quot;ajaxAge&quot; /&gt;
        &lt;/div&gt;
        &lt;div&gt;
            性别： &lt;select name=&quot;gender&quot; id=&quot;ajaxGender&quot;&gt;
                &lt;option value=&quot;男&quot;&gt;男&lt;/option&gt;
                &lt;option value=&quot;女&quot;&gt;女&lt;/option&gt;
            &lt;/select&gt;
        &lt;/div&gt;
        &lt;div&gt;
            兴趣爱好：&lt;input type=&quot;radio&quot; name=&quot;sport&quot; value=&quot;足球&quot; checked=&quot;checked&quot; /&gt;足球
            &lt;input type=&quot;radio&quot; name=&quot;sport&quot; value=&quot;游泳&quot; /&gt;游泳
        &lt;/div&gt;
        &lt;div&gt;
            家庭住址：
            &lt;textarea id=&quot;ajaxAddress&quot; name=&quot;address&quot;&gt;&lt;/textarea&gt;
        &lt;/div&gt;
        &lt;input type=&quot;button&quot; value=&quot;Ajax前端加密&quot; onclick=&quot;ajaxSubmit();&quot; /&gt;
    &lt;/form&gt;
&lt;/div&gt;
&lt;p&gt;&lt;/p&gt;
&lt;div id=&quot;uncryptoData&quot;&gt;
    &lt;h1&gt;Ajax后端解密后的数据：&lt;/h1&gt;
    &lt;form id=&quot;hasUncrypto&quot;&gt;
        &lt;div&gt;
            姓名：&lt;input type=&quot;text&quot; id=&quot;uncryptoName&quot; /&gt;
        &lt;/div&gt;
        &lt;div&gt;
            年龄：&lt;input type=&quot;text&quot; id=&quot;uncryptoAge&quot; /&gt;
        &lt;/div&gt;
        &lt;div&gt;
            性别：&lt;input type=&quot;text&quot; id=&quot;uncryptoGender&quot; /&gt;
        &lt;/div&gt;
        &lt;div&gt;
            兴趣爱好：&lt;input type=&quot;text&quot; id=&quot;uncryptoSport&quot; /&gt;
        &lt;/div&gt;
        &lt;div&gt;
            家庭住址：&lt;input type=&quot;text&quot; id=&quot;uncryptoAddress&quot; /&gt;
        &lt;/div&gt;
    &lt;/form&gt;
&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;  
</code></pre>

<h2 id="modifyCryptoConfig">5. 动态更新后台解密的配置文件（crypto_config.xml）</h2>
<p>5.1  CryptoConfig是加解密配置文件（crypto_config.xml）的加载结果类。<br />
5.2  CryptoConfig是单例的，服务启动后，只能通过调用加解密工具类CryptoConfigUpdateUtil.java的一系列方法，达到动态更新加解密配置文件的目的。</p>
<pre><code>package com.sinosoft.one;

import com.sinosoft.one.mvc.crypto.config.CryptoConfig;
import com.sinosoft.one.mvc.crypto.parser.CryptoConfigurationParser;
import com.sinosoft.one.mvc.crypto.util.CryptoConfigUpdateUtil;
import junit.framework.Assert;
import org.junit.Before;
import org.junit.Test;

/**
 * 加密解密文件动态更新测试
 */
public class CryptoConfigUpdateUtilTest {
private String configurationLocation = &quot;&quot;;
@Before
public void setUp() {
    configurationLocation = &quot;classpath:crypto/crypto_config.xml&quot;;
    new CryptoConfigurationParser().parserCryptoConfiguration(configurationLocation);
}

//动态增加两个解密路径
@Test
public void testSaveUnCryptoConfig() {
    CryptoConfigUpdateUtil.saveUnCryptoConfig(&quot;/testA/testA&quot;, &quot;/testB/testB&quot;);
    CryptoConfig cryptoConfig = CryptoConfig.getInstance();
    Assert.assertEquals(4, cryptoConfig.getUncryptoMap().size());
    new CryptoConfigurationParser().parserCryptoConfiguration(configurationLocation);
    Assert.assertEquals(4, cryptoConfig.getUncryptoMap().size());
}

//动态删除两个解密路径
@Test
public void testDeleteUnCryptoConfigs() {
    testSaveUnCryptoConfig();
    CryptoConfigUpdateUtil.deleteUnCryptoConfigs(&quot;/testA/testA&quot;, &quot;/testB/testB&quot;);
    CryptoConfig cryptoConfig = CryptoConfig.getInstance();
    Assert.assertEquals(2, cryptoConfig.getUncryptoMap().size());
}

}
</code></pre>
        </div>
    </div>
</div>

<!-- Footer
    ================================================== -->
<%@ include file="/static/layouts/footer.jsp"%>

<!-- JS and analytics only. -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<%-- <script src="${ctx}/static/js/jquery-1.11.0.js"></script> --%>

<!-- Bootstrap core JS file
 注意：此文件跟随官网最新版本更新，随时会有改变。建议使用下面v3.0.3版本的CDN链接！
-->
<%-- <script src="${ctx}/static/js/bootstrap/bootstrap.js"></script> --%>

<!-- Hi，如果你要在自己的网站上引入bootstrap JS文件的话，请使用当前最新版本v3.0.3的CDN链接，页面加载速度会更快！
<script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
-->

<%-- <script src="${ctx}/static/js/bootstrap/holder.min.js"></script>
<script src="${ctx}/static/js/bootstrap/highlight.min.js"></script>
<script >hljs.initHighlightingOnLoad();</script>
<script src="${ctx}/static/js/bootstrap/application.js"></script> --%>

<!-- Analytics
================================================== -->
<script type="text/javascript">

    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");

    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F3d8e7fc0de8a2a75f2ca3bfe128e6391' type='text/javascript'%3E%3C/script%3E"));

</script>
</body>
</html>
