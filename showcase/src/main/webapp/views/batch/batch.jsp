<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>批处理引擎</title>

<!-- Bootstrap core CSS
     注意：此文件跟随官网最新版本更新，随时会有改变。建议使用下面v3.0.3版本的CDN链接！
    -->
<%@ include file="/static/layouts/base.jsp"%>
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
<link rel="shortcut icon"
	href="${ctx}/static/images/bootstrap/favicon.png" />
</head>
<body>
	<a class="sr-only" href="#content">Skip to main content</a>

	<!-- Docs master nav -->
	<%@ include file="/static/layouts/componentHeader.jsp"%>

	<!-- Docs page layout -->
	<div class="bs-header" id="content">
		<div class="container">
			<h2>批处理引擎spring batch</h2>
			<p>
				简要介绍<strong>spring batch</strong>，以及如何下载、使用、真实案例，等等。
			</p>
		</div>
	</div>

	<!-- Callout for the old docs link -->
	<div class="container bs-docs-container">
		<div class="row">
			<div class="col-md-3">
				<div class="bs-sidebar hidden-print" role="complementary">
					<ul class="nav bs-sidenav">
						<li><a href="#a">介绍</a>
							
						</li>
							
						<li><a href="#b">真实案例</a>
							<ul class="nav">
								<li><a href="#b1">案例1</a></li>
							</ul>
						</li>
						
					</ul>
				</div>
			</div>

			<div   class="col-md-9" role="main">
				 
				<h2 id="a">介绍</h2>
				<p >Spring Batch 是一个轻量级的，完全面向Spring
					的批处理框架，可以应用于企业级大量的数据处理系统。SpringBatch 以POJO 和大家熟知的Spring
					框架为基础，使开发者更容易的访问和利用企业级服务。Spring Batch
					可以提供大量的，可重复的数据处理功能，包括日志记录/跟踪，事务管理，作业处理统计工作重新启动、跳过，和资源管理等重要功能。</p>
				<p id="a1">
					<strong>功能包含</strong>
				</p>
				<ol>
					<li>通过简单spring配置,实现大批量的数据操作作业。</li>
					<li>大规模的批处理作业并行工作</li>
					<li>可手动或是有计划的重启作业</li>
					<li>错误数据的局部处理，如跳过记录、回滚</li>
				</ol>
				<div id="b"></div>
				<h2 >真实案例</h2>
				<h3 id="b1">案例1</h3>
				<p>在保险业务系统中会经常出现这样场景，需要将保单或者投保单中被保险人信息，通过导入excle文件，最后转存到数据库中。这样的作业可能会涉及多个文件并且几千上万，或者上百万的数据操作。看看使用spring
					batch如何快速、简单、并且高性能的的实现。</p>
				<p>首先加入spring batch 的maven依赖，目前使用的是3.0.0.M2版本。</p>
				<pre>
					<code>&lt;dependency&gt;
    &lt;groupId&gt;org.springframework.batch&lt;/groupId&gt;
    &lt;artifactId&gt;spring-batch-core&lt;/artifactId&gt;
    &lt;version&gt;3.0.0.M2&lt;/version&gt;
&lt;/dependency&gt;
</code>
				</pre>

				<p>因为需要进行读写excel的操作，还需加入excel操作的依赖。</p>
				<pre>
					<code>&lt;dependency&gt;
    &lt;groupId&gt;org.springframework.batch&lt;/groupId&gt;
    &lt;artifactId&gt;spring-batch-excel&lt;/artifactId&gt;
    &lt;version&gt;1.3.0-SNAPSHOT&lt;/version&gt;
&lt;/dependency&gt;
</code>
				</pre>

				<p>之后添加在spring配置文件中，加入以下配置。</p>
				<p>首先是spring配置文件的文件头：</p>
				<pre>
					<code>&lt;beans xmlns=&quot;http://www.springframework.org/schema/beans&quot;
xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns:context=&quot;http://www.springframework.org/schema/context&quot;
xmlns:tx=&quot;http://www.springframework.org/schema/tx&quot; xmlns:onejpa=&quot;http://com.sinosoft.one/schema/data/jpa&quot;
xsi:schemaLocation=&quot;http://www.springframework.org/schema/beans 
http://www.springframework.org/schema/beans/spring-beans-3.1.xsd  
http://www.springframework.org/schema/context 
http://www.springframework.org/schema/context/spring-context-3.1.xsd  
http://www.springframework.org/schema/tx 
http://www.springframework.org/schema/tx/spring-tx-3.1.xsd
http://com.sinosoft.one/schema/data/jpa 
http://com.sinosoft.one/schema/data/jpa/one-data-jpa.xsd&quot;
default-autowire=&quot;byName&quot;&gt;
</code>
				</pre>

				<p>
					spring batch的主要配置：
					<!-- spring batch 库 -->
					<bean id="jobRepository"
						class="org.springframework.batch.core.repository.support.MapJobRepositoryFactoryBean">
					<property name="isolationLevelForCreate" value="ISOLATION_DEFAULT" />
					<!-- <property name="transactionManager" ref="transactionManager"></property> -->
					</bean>
					<!-- spring batch 启动bean -->
					<bean id="jobLauncher"
						class="org.springframework.batch.core.launch.support.SimpleJobLauncher">
					<property name="jobRepository" ref="jobRepository" /> </bean>
				</p>
				<pre>
					<code>&lt;!-- spring batch job参数 --&gt;
&lt;bean id=&quot;jobParameterBulider&quot; class=&quot;org.springframework.batch.core.JobParametersBuilder&quot; /&gt;

&lt;!-- 注册器 --&gt;
&lt;bean id=&quot;jobRegistry&quot;
    class=&quot;org.springframework.batch.core.configuration.support.MapJobRegistry&quot;&gt;
&lt;/bean&gt;

&lt;!-- 操作器 --&gt;
&lt;bean id=&quot;jobOperator&quot;
    class=&quot;org.springframework.batch.core.launch.support.SimpleJobOperator&quot;&gt;
    &lt;property name=&quot;jobExplorer&quot;&gt;
        &lt;bean
            class=&quot;org.springframework.batch.core.explore.support.JobExplorerFactoryBean&quot;&gt;
            &lt;property name=&quot;dataSource&quot; ref=&quot;dataSource&quot; /&gt;
        &lt;/bean&gt;
    &lt;/property&gt;
    &lt;property name=&quot;jobRepository&quot; ref=&quot;jobRepository&quot; /&gt;
    &lt;property name=&quot;jobRegistry&quot; ref=&quot;jobRegistry&quot; /&gt;
    &lt;property name=&quot;jobLauncher&quot; ref=&quot;jobLauncher&quot; /&gt;
&lt;/bean&gt;
</code>
				</pre>

				<p>然后是spring batch的任务配置：</p>
				<p>新建一个批量任务job:</p>
				<p>这个job就是真正执行批量任务的单元</p>
				<pre>
					<code>&lt;batch:job id=&quot;exceldatabaseJob&quot; &gt;
    &lt;batch:step id=&quot;exceldatabasestep&quot;&gt;
        &lt;batch:tasklet transaction-manager=&quot;transactionManager&quot;
            start-limit=&quot;1&quot;&gt;
            &lt;batch:chunk reader=&quot;excelItemReader&quot; processor=&quot;excelItemProcessor&quot;
                writer=&quot;databaseWriter&quot; commit-interval=&quot;10&quot; skip-limit=&quot;100&quot;&gt;
                &lt;batch:skippable-exception-classes&gt;
                    &lt;batch:exclude class=&quot;java.lang.RuntimeException&quot; /&gt;
                    &lt;batch:include class=&quot;java.io.FileNotFoundException&quot; /&gt;
                    &lt;batch:include
                        class=&quot;org.springframework.batch.item.file.transform.IncorrectTokenCountException&quot; /&gt;
                    &lt;batch:include class=&quot;java.lang.IllegalStateException&quot; /&gt;
                    &lt;batch:include
                        class=&quot;org.springframework.batch.item.excel.ExcelFileParseException&quot; /&gt;
                    &lt;batch:include
                        class=&quot;org.springframework.batch.item.file.FlatFileParseException&quot; /&gt;
                &lt;/batch:skippable-exception-classes&gt;
            &lt;/batch:chunk&gt;  
        &lt;/batch:tasklet&gt;
    &lt;/batch:step&gt;
&lt;/batch:job&gt;
</code>
				</pre>

				<p>会发现job由step（步骤组成），job里至少有一个或者多个step。而step中包含了一个tasklet（任务），而tasklet下又包含了一个chunk（块）。在chunk中会描述有如下描述：</p>
				<pre>
					<code>reader=&quot;excelItemReader&quot; processor=&quot;excelItemProcessor&quot; writer=&quot;databaseWriter&quot;
</code>
				</pre>

				<p>reader、processor、writer三个节点就是该批量任务中，exceldatabasestep步骤下具体的数据流转节点，由于spring
					batch是spring中的一个项目，他完全实现了spring的规范，如上三个节点即是三个spring
					bean。也就是说实现、定义了这三个bean后,即可完成批量任务的读-操作-写操作。所以我们需要定义这三个bean。</p>
				<p>reader节点的bean：</p>
				<pre>
					<code>&lt;bean id=&quot;excelItemReader&quot; class=&quot;org.springframework.batch.item.excel.poi.PoiItemReader&quot;&gt;
    &lt;property name=&quot;resource&quot; value=&quot;file:src/main/resources/Insured_0707.xls&quot; /&gt;
    &lt;property name=&quot;currentRow&quot; value=&quot;1&quot; /&gt;&lt;!-- 开始的行数 0为第一行 --&gt;
    &lt;property name=&quot;rowMapper&quot;&gt;
        &lt;bean class=&quot;org.springframework.batch.item.excel.mapping.ExcelRowMapper&quot;&gt;
            &lt;property name=&quot;lineTokenizer&quot; ref=&quot;lineTokenizer&quot;&gt;
            &lt;/property&gt;
            &lt;property name=&quot;fieldSetMapper&quot;&gt;
                &lt;bean
                    class=&quot;org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper&quot;&gt;
                    &lt;property name=&quot;prototypeBeanName&quot; value=&quot;prpInsured&quot;&gt;&lt;/property&gt;
                &lt;/bean&gt;
            &lt;/property&gt;
        &lt;/bean&gt;
    &lt;/property&gt;
&lt;/bean&gt;

&lt;!-- pojo类 prpInsured 定义 --&gt;
&lt;bean id=&quot;prpInsured&quot; class=&quot;com.sinosoft.one.showcase.batch.model.PrpInsured&quot; scope=&quot;prototype&quot;&gt;&lt;/bean&gt;
&lt;!-- lineTokenizer --&gt;
&lt;!-- spring batch 可自动将一行数据转化为pojo类，需要指定pojo类的的属性 --&gt;
&lt;!-- 本例中根据excel列左至右按循序匹配pojo类的属性--&gt;
&lt;bean id=&quot;lineTokenizer&quot;
class=&quot;org.springframework.batch.item.file.transform.DelimitedLineTokenizer&quot;&gt;
    &lt;property name=&quot;names&quot;&gt;
        &lt;list&gt;
            &lt;value&gt;PRPINSUREDCODE&lt;/value&gt;
            &lt;value&gt;birthday&lt;/value&gt;
            &lt;value&gt;name&lt;/value&gt;
            &lt;value&gt;sex&lt;/value&gt;
            &lt;value&gt;occupationCode&lt;/value&gt;
            &lt;value&gt;certificateType&lt;/value&gt;
            &lt;value&gt;certificateNo&lt;/value&gt;
            &lt;value&gt;insuredType&lt;/value&gt;
            &lt;value&gt;occupationName&lt;/value&gt;
            &lt;value&gt;isRepeat&lt;/value&gt;
        &lt;/list&gt;
    &lt;/property&gt;
&lt;/bean&gt;
</code>
				</pre>

				<p>processor节点的bean:</p>
				<p>处理操作的节点需要自己定义，并编写自己所需的逻辑代码，只需实现 ItemProcessor 接口即可。</p>
				<pre>
					<code>@Component(&quot;excelItemProcessor&quot;)
public class ExcelProcessor implements ItemProcessor&lt;PrpInsured, PrpInsured&gt; {

    public PrpInsured process(PrpInsured prpInsured) {
        System.out.println(prpInsured.getId());
        return prpInsured;
    }
}
</code>
				</pre>

				<p>同理如果batch自带读写操作等自带的类无法达到需求时，读，写，操作三个节点bean我们都可以自定义，本例中的写入数据操作就是需要自己编写。当然spring
					batch也提供了对数据库操作的支持。</p>
				<p>processor节点的bean:</p>
				<pre>
					<code>@Component
public class DatabaseWriter implements ItemWriter&lt;PrpInsured&gt; {
    @Autowired
    private PrpInsuredRepository prpInsuredRepository;

    public void write(List&lt;? extends PrpInsured&gt; prpInsureds) {

        System.out.println(&quot;save&quot;);
        for (PrpInsured prpInsured : prpInsureds) {      
            System.out.println(prpInsured.getId());
        }
        prpInsuredRepository.save(prpInsureds);
    }
}
</code>
				</pre>

				<p>同样也需要实现ItemWriter接口。而读操作则为ItemReader。
					这样一个从excel中批量读取数据转存进数据库的操作既以完成。</p>
				<p>本例中的excel数据：
					<img alt="" src="${ctx}/static/images/batch-excel.gif">
				</p>
				<p>点击按钮继续进行该批量任务</p>
				<p>点击查看已经保存到数据库中的记录</p>
				<h3>案例2</h3>
				<h3>案例3</h3>
			</div>
		</div>
	</div>
	<%@ include file="/static/layouts/footer.jsp"%>
	<script type="text/javascript">
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");

		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3F3d8e7fc0de8a2a75f2ca3bfe128e6391' type='text/javascript'%3E%3C/script%3E"));
	</script>
</body>
</html>