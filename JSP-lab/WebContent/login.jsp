<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>4-11阶段案例登录页面</title>
</head>
<body>
	<h1>4-11阶段案例登录页面</h1>
	<hr>
		<form name="regForm" action="doLogin.jsp" method="POST">
		<!-- <form name="regForm" action="javabean.jsp?myPass=myPassword" method="POST"> -->
		<label for="username">用户名:</label> 
		<input type="text" name="username" id="username" /> 
		<br> 
		<label for="password">密码:</label> 
		<input type="password" name="password" id="password" />
		<br> 
		<input type="submit" value="提交" />
	</form>
</body>
</html>