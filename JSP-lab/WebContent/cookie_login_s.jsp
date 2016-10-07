<%@ page language="java" import="java.net.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookie登录成功页面</title>
</head>
<body>
	<h1>Cookie登录成功页面</h1>
	<hr>
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
	<h1>用户名： <%=username %></h1>
	<br>
	<h1>密码： <%=password %></h1>
	<br>
	</body>
</html>