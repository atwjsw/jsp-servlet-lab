<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>servlet和JSP跳转路径测试</title>
</head>
<body>
	<h1>servlet和JSP跳转路径测试</h1>
	<hr>
	<h3>1. 超链接跳转 - 相对路径 ：相对于现有资源位置，从现有JSP页面所处位置开始算，以下的JSP在WebRoot的下一级目标</h3>
	<h3><a href="../servlet/PathDemoServlet">超链接跳转 - 相对路径</a></h3>
	<hr>
	<h3>2. 超链接跳转 - 绝对路径 ：相对于主机根目录位置。一般通过Basepath或path来补齐</h3>
	<h3><a href="<%=path%>/servlet/PathDemoServlet">超链接跳转 - 绝对路径</a></h3>
	
</body>
</html>