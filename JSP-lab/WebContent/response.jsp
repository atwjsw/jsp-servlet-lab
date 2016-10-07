<%@ page language="java" import="java.io.*" contentType="text/html; charset=utf-8"%>
<% 
	response.setContentType("text/html;charset=utf-8"); //设置响应的MIME类型
	
	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	//out.flush();
	
	PrintWriter outer = response.getWriter();
	outer.println("大家好，我是Response对象生成的输出流outer对象");
	//response.sendRedirect("login_success.jsp"); //请求重定向, request对象的信息是不会被传递的
	
	request.getRequestDispatcher("login_success.jsp").forward(request, response); //请求转发，request对象信息会转发
%>