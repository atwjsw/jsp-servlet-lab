<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>通过登录页面展示get和post的差异</title>
</head>
<body>
	<h1>登录页面</h1>
	<hr>
	<!-- <form name="regForm" action="login_success.jsp" method="GET"> -->
 	<form name="regForm" action="response.jsp" method="POST">
	用户名：<input type="text" name="username"/>	
	<br>
	密码：<input type="password" name="password"/>	
	<br>
	<input type="hidden" name="userid" value="123456"/>
	爱好：	
	<br>	
	音乐：<input type="checkbox" name="interest" value="music"/>&nbsp;&nbsp;
	体育：<input type="checkbox" name="interest" value="sports"/>&nbsp;&nbsp;
	爬山：<input type="checkbox" name="interest" value="clibming"/>&nbsp;&nbsp;
	编程：<input type="checkbox" name="interest" value="coding"/>&nbsp;&nbsp;
	<br>	
	<a href="login_success.jsp?username=李四&password=123">测试URL传参数</a>
	<br>
	<input type="submit" value="提交"/>	
	</form>		
</body>
</html>