<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet课程1-13阶段案例登录成功页面</title>
</head>
<body>
	<h1>Servlet课程1-13阶段案例登录成功页面</h1>
	<hr>
	<h1>欢迎您！ <%=session.getAttribute("loginUser") %></h1>
</body>
</html>