<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
</head>
<body>
<h1>登录页面</h1>
<hr>
<form action="<%=path%>/servlet/LoginServlet" method="post">
<table>
<tr>
<td><label for="username">用户名：</label></td>
<td><input type="text" id="username" name="username"/></td>
</tr>
<tr>
<td><label for="password">密码：</label></td>
<td><input type="password" id="password" name="password"/></td>
</tr>
<tr>
<td><button type="submit">登录</button></td>
<td><button type="reset">取消</button></td>
</tr>
</table>
</form>
</body>
</html>