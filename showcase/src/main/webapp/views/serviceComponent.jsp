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
    <title>服务支撑</title>
    
    <%@ include file="/static/layouts/base.jsp"%>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png" />
</head>
<body>

<!-- header -->
<%@ include file="/static/layouts/componentHeader.jsp"%>

<!-- Docs page layout -->
<div class="bs-header" id="content"> 
	<div class="container">
			<h1>服务支撑</h1>
			<p>详细介绍服务支撑组件，包括使用场景、案例，等等。</p>
		</div>   
    
</div>
<div class="container projects">
    <div class="projects-header page-header">
        <h2>服务支撑相关组件推荐</h2>
      </div>
      <div class="row">
        <div class="col-sm-6 col-md-2 ">
          <div class="thumbnail">
            <a href="${ctx}/webservices/webservice" title="WebService" target="_blank" ><img class="lazy" src="${ctx}/static/images/window/sinosoft.jpg" width="150" height="150" data-src="${ctx}/static/images/window/sinosoft.jpg" alt="WebService"></a>
            <div class="caption">
              <h3> 
                <a href="${ctx}/webservices/webservice" title="WebService" target="_blank" >WebService</a>
              </h3>
            </div>
          </div>
        </div>

          <div class="col-sm-6 col-md-2 ">
              <div class="thumbnail">
                  <a href="${ctx}/rule/rule" title="规则引擎" target="_blank" ><img class="lazy" src="${ctx}/static/images/window/sinosoft.jpg" width="150" height="150" data-src="${ctx}/static/images/window/sinosoft.jpg" alt="规则引擎"></a>
                  <div class="caption">
                      <h3>
                          <a href="${ctx}/rule/rule" title="规则引擎" target="_blank" >规则引擎</a>
                      </h3>
                  </div>
              </div>
          </div>
          
          <div class="col-sm-6 col-md-2 ">
          <div class="thumbnail">
            <a href="${ctx}/views/batch/batch.jsp" title="批处理引擎" target="_blank" ><img class="lazy" src="${ctx}/static/images/component/batch.png" width="150" height="150" data-src="${ctx}/static/images/component/batch.png" alt="批处理引擎"></a>
            <div class="caption">
              <h3> 
                <a href="${ctx}/views/batch/batch.jsp" title="批处理引擎" target="_blank" >批处理引擎</a>
              </h3>
            </div>
          </div>
        </div>
    </div>


</div>
   </div>
<!-- Footer -->
<%@ include file="/static/layouts/footer.jsp"%>


</body>
</html>
