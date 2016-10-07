<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.atwjsw.servlet.entity.*, java.util.*, java.text.*"%>
<% RegForm regForm = (RegForm)request.getAttribute("regForm"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册成功</title>
</head>
<body>
<h1>注册成功</h1>
<hr>
<form action="<%=basePath%>registration" method="post">
<table border="1">
<tr>
<td>用户名：</td>
<td><%=regForm.getUsername()%></td>
</tr>
<tr>
<td>邮箱：</td>
<td><%=regForm.getEmail()%></td>
</tr>
<tr>
<td>性别：</td>
<td><%=regForm.getGender()%></td>
</tr>
<tr>
<td>出生日期：</td>
<td>
<%  
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
	out.println(sdf.format(regForm.getBirthday()));
%>
</td>
</tr>
<tr>
<td>爱好：</td>
<td>
<%  String[] favorites = regForm.getFavorites();
	for (String f: favorites) {
		out.println(f + "&nbsp;&nbsp;");
	}
%>
</td>
</tr>
<tr>
<td>自我介绍：</td>
<td><%=regForm.getIntroduction()%></td>
</tr>
<tr>
<td>接受协议：</td>
<td><%=regForm.isAgreement()%></td>
</tr>
<tr>
<td colspan="2"><a href="registration.jsp">重新注册</a></td>
</tr>
</table>
</form>
</body>
</html>