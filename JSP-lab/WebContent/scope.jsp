<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试JavaBean的四个作用域</title>
</head>
<body>
<h1>测试JavaBean的四个作用域</h1>
<h2>测试原理：1. login.jsp提交表单数据到javabean.jsp 2.javabean.jsp创建JavaBean 
（jsp：Usebean)并赋值，并设置不同的scope. 跳转到scope.jsp. 3. scope.jsp获取JavaBean并显示属性值
 </h2>
<hr>
<jsp:useBean id="myUser" class="com.atwjsw.jsp.bean.User" scope="page"/>
用户名：	<jsp:getProperty name="myUser" property="username" />
<br>
密码：	<jsp:getProperty name="myUser" property="password" />


</body>
</html>