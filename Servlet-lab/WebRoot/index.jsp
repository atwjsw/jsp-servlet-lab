<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>欢迎页面</title>
</head>
<body>
	<h1>第一个Servlet小例子</h1>
	<h2><a href="servlet/HelloServlet">Get方式请求HelloServlet</a></h2>
	<hr>
	<form action="servlet/HelloServlet" method="post">
		<input type="submit" value="Post方式请求HelloServlet"/>
	</form>
	<hr>
	<h2><a href="servlet/LifeCycleServlet1">Get方式请求LifeCycleServlet1</a></h2>
	<hr>
	<h2><a href="servlet/LifeCycleServlet2">Get方式请求LifeCycleServlet2</a></h2>
	<hr>
	<h2><a href="servlet/InitParamServlet">InitParamServlet演示获取初始参数</a></h2>
</body>
</html>