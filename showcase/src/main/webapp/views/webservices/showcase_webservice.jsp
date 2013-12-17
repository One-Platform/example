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
            <li> <a href="#a">webservice介绍</a></li>
            <li> <a href="#b">cxf介绍</a></li>
            <li> <a href="#c">服务端开发</a> </li>
            <li> <a href="#d">map适配器编写</a> </li>
            <li> <a href="#e">cxf客户端编写 </a></li>
            <!--<li> <a href="#f">wsdl2java配置</a>-->
            </li>
            <li> <a href="#g">xfire客户端编写</a></li>
        </ul>
    </div>
</div>
<div class="col-md-9" role="main">
    <h1 id="a">Web Services</h1>

    <p>Web Services 可以将应用程序转换为网络应用程序,
        通过使用 Web Services，您的应用程序可以向全世界发布信息，或提供某项功能,Web Services 可以被其他应用程序使用。
        Web Service 是一种跨平台，跨语言分布式系统间整合的解决方案。
        基本的 Web Services 平台是 XML+HTTP。
        现在比较流行的services框架有CXF,XFIRE等。</p>

    <h2 id="b">CXF</h2>

    <p>Apache CXF = Celtix + XFire，开始叫 Apache CeltiXfire，后来更名为 Apache CXF 了，以下简称为 CXF。CXF 继承了 Celtix 和 XFire 两大开源项目的精华，提供了对 JAX-WS 全面的支持，并且提供了多种 Binding 、DataBinding、Transport 以及各种 Format 的支持，并且可以根据实际项目的需要，采用代码优先（Code First）或者 WSDL 优先（WSDL First）来轻松地实现 Web Services 的发布和使用。使用cxf发布web services非常简单。</p>

    <p id="c">服务端编写：</p>

    <p>首先，引入pom依赖，在web.xml中增加cxfservlet接着可以编写我们的webservices接口和实现类。在application.xml中配置要发布的Webservice。代码可见showcase中的webservices中cxf包下。
        cxf默认的databing是jaxb，对基本数据类型和javabean类型都支持。集合类型也支持，比如list和set.但是对map类型的支持比较特殊，tomcat下需要我们自己编写一个适配器来进行适配，若不写将不会得到map的值，如果把map作为一个javaBean的属性，则必须对整个javabean进行适配。WebLogic10.3.6下不用编写适配器但是不支持直接返回map，可以在javabean中把map作为一个属性返回。</p>
    <a href="http://localhost:9000/showcase/services/DemoWebService?wsdl">wsdl示例</a>

    <p id="d">下面是一个map适配器的例子：</p>

<pre><code>JAXB可以在变量上添加@XmlJavaTypeAdapter标注，指定对该变量专门的适配器进行处理。 适配器继承XmlAdapter类，并覆盖了marshal和unmarshal方法，分别用于对象到XML的映射和XML到对象的映射。

    使用XmlAdapter可以实现对Map类型的映射。

    比如对于要通过CXF发布的WebService接口方法上，可以增加标注：

    @XmlJavaTypeAdapter(MapAdapter.class)
    Map&lt;String,User&gt; getUserMap();

    Integer setUserMap(@XmlJavaTypeAdapter(MapAdapter.class)Map&lt;String,User&gt; users);
    其中的MapAdapter就是自己实现的Map适配器，代码如下：

    MapAdapter.java
    MapEntity是自己定义的一个简单结构，用于保持Map中的key-value关系：
    @XmlType(name="MapConvertor")
    @XmlAccessorType(XmlAccessType.FIELD)
    public class UserMap {

    @XmlElement(nillable = false, name = "entry")
    List&lt;MapEntity&gt; entry = new ArrayList&lt;MapEntity&gt;();

    public List&lt;MapEntity&gt; getEntry() {
    return entry;
    }

    @XmlAccessorType(XmlAccessType.FIELD)
    static class MapEntity{
    //Map keys cannot be null
    @XmlElement(required = true, nillable = false)
    String key;
    ArrayList&lt;User&gt; value;

    ArrayList&lt;User&gt; getValue() {
    return value;
    }

    void setValue(ArrayList&lt;User&gt; value) {
    this.value = value;
    }

    String getKey() {
    return key;
    }

    void setKey(String key) {
    this.key = key;
    }
    }

    }


    public class MapAdapter extends XmlAdapter&lt;UserMap, Map&lt;String,ArrayList&lt;User&gt;&gt;&gt;{

    @Override
    public Map unmarshal(UserMap userMap) throws Exception {
    Map&lt;String,ArrayList&lt;User&gt;&gt; map = new HashMap&lt;String, ArrayList&lt;User&gt;&gt;();
    for(UserMap.MapEntity mapEntity:userMap.getEntry()){
    map.put(mapEntity.getKey(),mapEntity.getValue());
    }
    return map;
    }

    @Override
    public UserMap marshal(Map&lt;String,ArrayList&lt;User&gt;&gt; map) throws Exception {
    UserMap userMap = new UserMap();
    for(Map.Entry&lt;String,ArrayList&lt;User&gt;&gt; e:map.entrySet()){
    UserMap.MapEntity mapEntity = new UserMap.MapEntity();
    mapEntity.setKey(e.getKey());
    mapEntity.setValue(e.getValue());
    userMap.getEntry().add(mapEntity);
    }
    return userMap;
    }

    }
    经过这样的处理，就能够实现Map与XML之间的映射。
</code></pre>

    <p id="e">客户端编写：
        1.CXF客户端</p>

    <p id="f">使用wsdl2java工具可以很方便的生成客户端。
        wsdl2java的配置如下：</p>

<pre><code>新建CXF_HOME      C:\ProgramFiles\apache-cxf-2.7.2(存放路径)

    在CLASSPATH          %CXF_HOME%\lib

    在PATH中添加           %CXF_HOME%\bin


    验证：

    操作   win+R    ---&gt; cmd  ---&gt;  回车   ---》 wsdl2java -v
    结果 显示  wsdl2java - Apache CXF 2.7.2
    证明配置成功
</code></pre>

    <p>在命令行中敲
        wsdl2java -d src(这个是你客户端要存放的路径，可以放在工程的src下如:D:/workspace/HelloWorld/src/java) -client(生成客户端调试代码) wsdl(这个是你wsdl的地址如:http://localhost:8080/demo/services/DemoWebService?wsdl)
        即可看到生成的客户端。</p>

    <p>调用参考client中的main方法。</p>

    <p id="g">2.XFIRE客户端</p>

    <p>使用ant工具可以很方便的生成客户端。所需jar包:xfire-distribution-1.2.6.zip中的xfire-all-1.2.6.jar和lib下面的所有包，还有 xalan-j_2_7_1-bin.zip中的 xalan.jar.
        新建一个java工程在工程下创建如下文件夹：</p>

<pre><code>xfire： 创建xfire文件夹
    Wsgen: 在xfire下创建WsGen文件夹
    WsGen:创建client文件夹、lib文件夹、build.xml文件
    XFireWsgen/xfire/WsGen/client：存放的是生成的客户端代码， 需在build.xml文件中进行配置
    XFireWsgen/xfire/WsGen/lib：存放的是上面所述依赖的jar包， 并且需在build.xml文件中进行配置
    XFireWsgen/xfire/WsGen/build.xml 根据此文件，通过ANT出客户端
</code></pre>

    <p>build.xml</p>

<pre><code>&lt;project name="xfireclient"  default="wsgen"&gt;

    &lt;path id="classpathId"&gt;

    &lt;fileset file="${basedir}/lib/*.jar"&gt;

    &lt;include name="*.jar"/&gt;

    &lt;/fileset&gt;

    &lt;/path&gt;



    &lt;target name="clean" description="Prepare for clean build"&gt;

    &lt;delete dir="${basedir}/client"/&gt;

    &lt;mkdir dir="${basedir}/client"/&gt;

    &lt;/target&gt;



    &lt;taskdef classpathref="classpathId" name="wsgen" classname="org.codehaus.xfire.gen.WsGenTask"&gt;&lt;/taskdef&gt;

    &lt;target name="wsgen" depends="clean"&gt;
    &lt;taskdef name='WsGenTask' classname="org.codehaus.xfire.gen.WsGenTask" classpathref="classpathId"/&gt;

    &lt;WsGenTask outputDirectory="${basedir}/client" wsdl="http://localhost:9000/showcase/services/DemoWebService?wsdl" binding="jaxb" package="com.sinosoft.one.demo.webservice" overwrite="true"/&gt;
    &lt;/target&gt;

    &lt;/project&gt;
</code></pre>

    <p>在IDE中运行build.xml就可以创建好客户端，具体调用如下：</p>

<pre><code>DemoWebServiceClient demoWebServiceClient = new DemoWebServiceClient();
    String url = "http://localhost:9000/demo/services/DemoWebService?wsdl";
    Response response = demoWebServiceClient.getDemoWebServiceImplPort(url).getDepartment(new Request());
</code></pre>

    <p>至此cxf服务端开发和对接cxf,xfire完成。</p>

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