<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>登录成功</h1>
	<% request.setCharacterEncoding("utf8"); %>
	<%=request.getParameter("username")%>
	<br>
	<%	
		request.setAttribute("password", "secret");
		String password= request.getParameter("password"); 
		if (password.equals("123")) {
			out.println(password);
		}
	%>
	<br>
	<%
	
		String[] interests = request.getParameterValues("interest");
		if (interests!=null) {
		for (String s: interests) {
			out.println(s + "&nbsp;&nbsp;");
		}
		}
	%>
	<br>
	<%=request.getAttribute("password")%>
	<br>
	request.getScheme():<%=request.getScheme() %>	
	<br>
	request.getServerName(): <%=request.getServerName() %>
	<br>
	<%=request.getServerPort() %>
	<br>
	request.getContextPath():<%=request.getContextPath() %>
	<br>
	basePath:<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/" %>
	<br>
	request.getRealPath("get_post.jsp"):<%=request.getRealPath("get_post.jsp") %>
	<br>
	request.getContentType():<%=request.getContentType() %>
	<br>
	request.getProtocol():<%=request.getProtocol() %>
	<br>	
</body>
</html>