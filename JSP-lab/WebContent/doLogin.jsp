<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>4-11阶段案例登录处理页面</title>
</head>
<body>
	<h1>4-11阶段案例登录处理页面</h1>
	<hr>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		System.out.println(username.equals("admin") && password.equals("admin"));
		if (username.trim().equals("admin") && password.trim().equals("admin")) {			
			session.setAttribute("loginUser", username);
			request.getRequestDispatcher("login_s.jsp").forward(request, response);
		} else {
			response.sendRedirect("login_f.jsp");
		}
	%>
</body>
</html>