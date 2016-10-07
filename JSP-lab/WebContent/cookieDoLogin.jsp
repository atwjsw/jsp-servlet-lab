<%@ page language="java" import="java.net.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookie登录处理页面</title>
</head>
<body>
	<h1>Cookie登录处理页面</h1>
	<hr>
	<%	
		request.setCharacterEncoding("utf-8");
		String[] nopassword = request.getParameterValues("nopassword");
		if (nopassword!=null && nopassword.length>0) {
			System.out.println("checkbox checked" + nopassword[0]);
			//保存Cookie.
			//使用URLEncoder解决无法在Cookie当中保存中文字符串问题
			String username = URLEncoder.encode(request.getParameter("username"), "utf-8");
			String password = URLEncoder.encode(request.getParameter("password"), "utf-8");
			Cookie ucookie = new Cookie("username", username);
			Cookie pcookie = new Cookie("password", password);
			ucookie.setMaxAge(864000);
			pcookie.setMaxAge(864000);
			response.addCookie(ucookie);
			response.addCookie(pcookie);
		} else {
			Cookie[] cookies = request.getCookies();
			if (cookies!=null && cookies.length > 0) {
				for (Cookie c: cookies) {
					if (c.getName().equals("username") || c.getName().equals("password")){
					c.setMaxAge(0);	
					response.addCookie(c);
					}
				}
			}
		}
	
	%>
	<a href="cookie_login_s.jsp" target="_blank">查看用户信息</a>
</body>
</html>