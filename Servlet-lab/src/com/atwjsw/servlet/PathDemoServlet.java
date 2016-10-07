package com.atwjsw.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PathDemoServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进行doGet处理");		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();		
		//out.println("<strong>Path Demo Servlet</strong><br>");
		//重定向绝对路径。/对应于主机名
		//System.out.println(request.getContextPath() + "/path/destination.jsp");
		//response.sendRedirect(request.getContextPath() + "/path/destination.jsp");
		//重定向相对路径。相对于目前资源
		//response.sendRedirect("../path/destination.jsp");	
		//请求转发-绝对路径。/相对于当前ContextRoot
		//request.getRequestDispatcher("/path/destination.jsp").forward(request, response);
		//请求转发-相对路径。/相对于当前资源。
		request.getRequestDispatcher("../path/destination.jsp").forward(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("进行doPost处理");		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		out.println("<strong>Path Demo Servlet doPost</strong><br>");		
	}
}
