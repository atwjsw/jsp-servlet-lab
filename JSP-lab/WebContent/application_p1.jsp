<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>application内置对象</title>
</head>
<body>
<h1>applicaiton内置对象</h1>
<% 
	application.setAttribute("username", "admin");
	application.setAttribute("password", "pass1234");
	application.setAttribute("age", 20);
%>

<br>
Session ID：<%=session.getId() %><br>	
username：<%=application.getAttribute("username") %><br>
password：<%=application.getAttribute("password") %><br>
age：<%=application.getAttribute("age") %><br>
page对象：<%=page.toString() %>
</body>
</html>