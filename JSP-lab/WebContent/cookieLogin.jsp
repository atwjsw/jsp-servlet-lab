<%@ page language="java" import="java.net.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookie登录页面</title>
</head>
<body>
	<h1>Cookie登录页面</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String username = "";
		String password = "";
		Cookie[] cookies = request.getCookies();
		for (Cookie c: cookies) {
			if (c.getName().equals("username")) {
				username = URLDecoder.decode(c.getValue(),"utf-8");
			}
			if (c.getName().equals("password")) {
				password = URLDecoder.decode(c.getValue(),"utf-8");
			}			
		}
	%>
	<hr>
		<form name="regForm" action="cookieDoLogin.jsp" method="POST">
		<label for="username">用户名:</label> 
		<input type="text" name="username" id="username" value="<%=username %>" /> 
		<br> 
		<label for="password">密码:</label> 
		<input type="password" name="password" id="password" value="<%=password %>"/>
		<br> 
		<label for="nopassword">十天内免登录:</label> 
		<input type="checkbox" name="nopassword" id="nopassword" value="np" />
		<br>
		<input type="submit" value="提交" />
	</form>
</body>
</html>