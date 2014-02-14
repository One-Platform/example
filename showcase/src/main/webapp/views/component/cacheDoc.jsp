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
    <title>缓存服务</title>
    
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
        <h1>缓存服务</h1>
        <p>详细介绍缓存组件的使用方法。</p>
    </div>
</div>

<!-- Callout for the old docs link -->
<div class="container bs-docs-container">
    <div class="row">
        <div class="col-md-3">
            <div class="bs-sidebar hidden-print" role="complementary">
                <ul class="nav bs-sidenav">
                    <li> <a href="#introduction">缓存组件简介</a></li>
                    <li> <a href="#environment">环境搭建</a></li>
                    <li> <a href="#quickstart">使用说明</a>
                        <ul class="nav">
                            <li><a href="#buildcache">构建cache</a></li>
                            <li><a href="#cacheparameters">缓存参数</a></li>
                            <li><a href="#callinterfaces">接口调用</a>
                            	<ul class="nav">
                            	<li><a href="#cacheInterface">Cache接口</a></li>
                            	<li><a href="#LoadingCacheInterface">LoadingCache接口</a></li>
                        		</ul>
                        	</li>
                        </ul>
                    </li>                    
                </ul>
            </div>
        </div>
        <div class="col-md-9" role="main">
     	<h1 id="introduction">缓存组件简介</h1>
<p>本缓存组件是一个轻量级的缓存框架，吞吐量大，性能高，接口简单易用。当前的版本只支持本地内存缓存，在后续的版本中会陆续支持磁盘缓存，分布式缓存，远程缓存等。</p>
<h2 id="environment">1 环境搭建</h2>
<p>对于非maven项目，需要添加相应的jar包：one-cache-0.0.1-beta.jar; 对于maven项目，需要在pom.xml文件中添加如下依赖：<br />
pom.xml</p>
<pre><code>&lt;dependency&gt;
    &lt;groupId&gt;com.sinosoft.one&lt;/groupId&gt;
    &lt;artifactId&gt;one-cache&lt;/artifactId&gt;
    &lt;version&gt;0.0.1-beta&lt;/version&gt;
&lt;/dependency&gt;
</code></pre>

<h2 id="quickstart">2 使用说明</h2>
<h3 id="buildcache">2.1 构建cache</h3>
<p>缓存会自填充，即：如果当前缓存中有指定的key对应的value，且该value有效，那么直接返回value；如果没有指定的key，那么调用给定的查询方法去获取value，返回value并填充缓存。提供了两种构建缓存的方式：<br />
1.使用CacheLoader，针对整个cache定义一个原子操作，根据给定的key获取value。<br />
2.使用Callable，此方式比较灵活，允许在get的时候指定如何获取value。</p>
<pre><code>/**
 * 方式1：使用CacheLoader，需要重写原子操作load(Objece key)。
 */
private Cache&lt;String, String&gt; loaderCache=CacheBuilder.newBuilder()
        .maximumSize(10)
        .expireAfterWrite(100, TimeUnit.SECONDS)
        .expireAfterAccess(80, TimeUnit.SECONDS)
        .refreshAfterWrite(50, TimeUnit.SECONDS)
        .build(
                new CacheLoader&lt;String, String&gt;() {
                    @Override
                    public String load(String key) throws Exception {
                        return &quot;your query&quot;;
                    }

                }
            );

/**
 * 方式2：使用Callable，不需要指定原子操作，调用get时再指定。
 */
private Cache&lt;String, String&gt; callableCache=CacheBuilder.newBuilder()
        .maximumSize(10)
        .expireAfterWrite(100, TimeUnit.SECONDS)
        .expireAfterAccess(80, TimeUnit.SECONDS)
        .refreshAfterWrite(50, TimeUnit.SECONDS)
        .build();

public void callableExample() throws ExecutionException{
    /**
     * 在get方法内，重写Callable.call()。
     */
    String callableValue=callableCache.get(&quot;key&quot;, new Callable&lt;String&gt;() {
        @Override
        public String call() throws Exception {
            return &quot;your query&quot;;
        }
    });
}
</code></pre>

<h3 id="cacheparameters">2.2 缓存参数介绍</h3>
<p>1.可以选择性的调用CacheBuilderSelector的某些方法，为自己的缓存设置一些基本参数。<br />
2.缓存暂不支持选择清除策略，默认为LRU（最近最少使用）。</p>
<pre><code>/**
 * 默认的CacheBuilderSelector
 * 
 * 构造一个默认的CacheBuilderSelector，即：没有任何形式的缓存自动移除策略。
 * @return
 */
public CacheBuilderSelector&lt;Object, Object&gt; newBuilder();
/**
 * 缓存的最大条目数
 * 
 * @param size
 * @return
 */
public CacheBuilderSelector&lt;K, V&gt; maximumSize(long size);
/**
 * 写后多长时间过期
 * 
 * 指定一条缓存条目被创建（或最近一次更新）后经过多长时间自动被移除缓存。
 * 当时间设置为0时，说明缓存立即过期。这在测试时是很有用的，可以暂时禁用缓存而不用修改代码。
 * 过期的缓存条目会在缓存日常维护时进行清理。
 * @param duration
 * @param unit
 * @return
 */
public CacheBuilderSelector&lt;K, V&gt; expireAfterWrite(long duration, TimeUnit unit);
/**
 * 读后多长时间过期
 * 
 * 指定一条缓存条目被创建（或最近一次更新，或最后一次访问）后经过多长时间自动被移除缓存。
 * 访问时间可以通过调用缓存的读写操作来重置：Cache.get(Object)，Cache.put(K, V)。
 * 当时间设置为0时，说明缓存立即过期。这在测试时是很有用的，可以暂时禁用缓存而不用修改代码。
 * 过期的缓存条目会在缓存日常维护时进行清理。
 * @param duration
 * @param unit
 * @return
 */
public CacheBuilderSelector&lt;K, V&gt; expireAfterAccess(long duration, TimeUnit unit);
/**
 * 写后多长时间刷新
 * 
 * 指定缓存的条目被创建以后，每过多长时间自动刷新一次，通过调用CacheLoader.reload()来执行。
 * 如果构建缓存时不指定这一项，那么可以通过调用Cache.refresh()来手动刷新。
 * CacheLoader.reload()的默认实现是同步的，这会阻塞其他的缓存操作，所以建议用户使用异步的实现来覆盖CacheLoader.reload()。
 * 当请求到的是一个旧缓存条目时，刷新操作会自动执行。这会调用CacheLoader.reload()，如果成功，返回新的value，否则返回旧的value。
 * @param duration
 * @param unit
 * @return
 */
public CacheBuilderSelector&lt;K, V&gt; refreshAfterWrite(long duration, TimeUnit unit);
/**
 * 构建缓存
 * 
 * 构建一个缓存，要么使用指定的key返回已经加载过的value，要么使用指定的CacheLoader的原子方法来自动填充缓存。
 * 如果此时有另一个线程正则加载该key的value，只需等待这个线程完成，然后返回已经加载的value。
 * 多个线程可以同时加载不同的keys对应的values。
 * 这个方法不会改变CacheBuilder实例的状态，所以它可以被多次调用，来创建多个独立的缓存。
 * @param loader
 * @return
 */
public &lt;K1 extends K, V1 extends V&gt; Cache&lt;K1, V1&gt; build(
          CacheLoader&lt;? super K1, V1&gt; loader);
</code></pre>

<h3 id="callinterfaces">2.3 缓存的接口调用</h3>
<p>缓存构建完成后，只需调用Cache和LoadingCache接口提供的方法，就可以进行相应的缓存操作。  
</p>
<p id="cacheInterface">2.3.1 Cache接口提供了缓存基本的增删改查操作，在调用时再指定原子操作，是Callable方式的。</p>
<pre><code>package com.sinosoft.one.cache;

import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

/**
 * 缓存接口，提供对缓存的基本操作。
 * 
 * @version 0.0.1
 * @date 2013/12/26
 * @author ZFB
 *
 */
public interface Cache&lt;K, V&gt; {

    /**
     * 从缓存中获取指定key的键值对
     * 
     * @param key
     *        指定的key
     * @return V
     *        返回该指定key所关联的value；如果缓存中不存在该key所关联的value，那么返回null
     */
    V getIfPresent(Object key);
    /**
     * 存入缓存
     * 
     * @param key
     * @param value
     */
    void put(K key, V value);

    /**
     * 存入缓存，批量操作
     * 
     * 批量存入缓存，效果等同于多次调用put(K key, V value)。
     * 如果此方法在执行过程中，map内的键值对被修改了，那么此方法的行为就不可预知了。
     * @param m
     */
    void putAll(Map&lt;? extends K,? extends V&gt; m);

    /**
     * 获取指定的缓存条目
     * 
     * 
     * @param key
     * @param valueLoader
     * @return
     * @throws ExecutionException
     */
    V get(K key, Callable&lt;? extends V&gt; valueLoader) throws ExecutionException;

    /**
     * 删除指定条目
     * 
     * @param key
     */
    void remove(Object key);

    /**
     * 批量删除缓存条目
     * 
     * @param keys
     */
    void removeAll(Iterable&lt;?&gt; keys);

    /**
     * 删除所有的缓存条目
     */
    void removeAll();

    /**
     * 正常情况下不建议使用此方法，会影响缓存的性能。
     * 因为这会重启一个线程来执行清理缓存的操作，这个线程会进行锁操作，这会阻塞其他的线程进行“写缓存”操作。
     * 因此这个方法适用于“写缓存”操作非常少的场景（如果确实需要调用的话）。
     */
    void cleanUp();
}
</code></pre>

<p id="LoadingCacheInterface">2.3.2 LoadingCache接口扩展了Cache接口，在构建缓存时需要提供默认的原子操作，是CacheLoader方式的。</p>
<pre><code>package com.sinosoft.one.cache;

import java.util.Map;
import java.util.concurrent.ExecutionException;

public interface LoadingCache&lt;K, V&gt; extends Cache&lt;K, V&gt; {

    /**
     * 获得指定的缓存条目
     * 
     * @param key
     * @return
     * @throws ExecutionException
     */
    V get(K key) throws ExecutionException;

    /**
     * 批量获取指定的缓存条目
     * 
     * @param keys
     * @return
     * @throws ExecutionException
     */
    Map&lt;K, V&gt; getAll(Iterable&lt;? extends K&gt; keys) throws ExecutionException;

    /**
     * 重新加载指定key的值。
     * 加载新value的过程中，如果该key的旧value没有被清除，那么它依然有效。此时如果有请求的话，那么旧的value会被返回。
     * 如果新value加载成功，那么它会取代旧value。
     * 加载新value的过程中，如果发生异常，那么该key的旧value会被保留，异常会被吞噬并且记入log。
     * 如果当前的缓存包括了指定key的键值对，那么会调用CacheLoader.reload()加载新value，否则调用CacheLoader.load()。
     * 如果进行refresh操作时，发现有另外一个线程正在进行这个操作，那么当前线程什么也不做，直接返回。
     * &lt;p&gt;注意：如果没有覆写CacheLoader.reload()，那么这个操作是同步的；建议以异步方式覆写CacheLoader.reload()。
     * @param key
     */
    void refresh(K key);

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
<%-- <script src="${ctx}/static/js/jquery-1.7.1.js"></script> --%>

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
<!-- <script type="text/javascript">

    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");

    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F3d8e7fc0de8a2a75f2ca3bfe128e6391' type='text/javascript'%3E%3C/script%3E"));

</script> -->
</body>
</html>
