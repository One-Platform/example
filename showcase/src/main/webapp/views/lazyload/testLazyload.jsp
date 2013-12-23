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

</head>

<body>
<p style="font-weight: bold; color: red;">四、确认投保</p>
&lt;textarea disabled="disabled" &gt;根据您输入的信息，您的保额为3000元。&lt;/textarea&gt; <br /><br />
<input class="btn btn-default" type="button" value="下一步" onclick="showLazyContent('fv_step', 'left_div');" />
</body>
</html>

