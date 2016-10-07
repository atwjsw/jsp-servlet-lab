<%@ page language="java" import="com.atwjsw.jsp.bean.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JavaBean使用Demo</title>
</head>
<body>
<h1>1. 使用普通方法调用Bean</h1>
<hr>
	<% 
		User user = new User(); 
		user.setUsername("admin");
		user.setPassword("123456");
	%>
用户名：	<%=user.getUsername() %>
<br>
密码：	<%=user.getPassword() %>
<h1>2. 使用jsp:useBean方法调用Bean</h1>
<hr>
<%-- <jsp:useBean id="myUser" class="com.atwjsw.jsp.bean.User" scope="request"/> --%>
<%-- <jsp:useBean id="myUser" class="com.atwjsw.jsp.bean.User" scope="session"/> --%>
<jsp:useBean id="myUser" class="com.atwjsw.jsp.bean.User" scope="page"/> 
用户名：	<%=myUser.getUsername() %>
<br>
密码：	<%=myUser.getPassword() %>
<h1>3. 使用jsp:setProperty方法设置Bean数据</h1>
<hr>
<!-- 根据表单匹配全部属性 -->
<%-- <jsp:setProperty name="myUser" property="*"/> --%>
<!-- 根据表单匹配部分属性 -->
<%-- <jsp:setProperty name="myUser" property="username"/> --%>
<!-- 直接赋值,与表单无关 -->
<%-- <jsp:setProperty name="myUser" property="password" value="setpassword"/> --%>
<!-- 通过URL传参方式赋值 -->
<jsp:setProperty name="myUser" property="username"/>
<jsp:setProperty name="myUser" property="password" value="myPass"/>
<!-- 通过JSP表达式来获取Java属性值 -->
用户名：	<%=myUser.getUsername() %>
<br>
密码：	<%=myUser.getPassword() %>
<hr>
<h1>4. 使用jsp:getProperty标签来获取Java属性值 </h1>
<hr>
<!-- 通过jsp:getProperty标签来获取Java属性值 -->
用户名：	<jsp:getProperty name="myUser" property="username"/>
<br>
密码：	<jsp:getProperty name="myUser" property="password"/>
<br>
<a href="scope.jsp">JavaBean作用域测试页面</a>
<% request.getRequestDispatcher("scope.jsp").forward(request, response); %>
</body>
</html>