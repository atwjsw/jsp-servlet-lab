<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="loginUser" class="com.atwjsw.jsp.bean.User" scope="page"/> 
<jsp:useBean id="userDao" class="com.atwjsw.jsp.dao.UserDAO" scope="page"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>5-12阶段案例登录处理页面</title>
</head>
<body>
	<h1>5-12阶段案例登录处理页面</h1>
	<hr>
	<jsp:setProperty property="*" name="loginUser"/>
	<%
		if (userDao.loginUser(loginUser)) {			
			session.setAttribute("loginUser", loginUser.getUsername());
			request.getRequestDispatcher("login_s.jsp").forward(request, response);
		} else {
			response.sendRedirect("login_f.jsp");
		}
	%>
</body>
</html>