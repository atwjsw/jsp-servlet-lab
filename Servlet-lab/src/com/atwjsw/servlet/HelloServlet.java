package com.atwjsw.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进行doGet处理");		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		out.println("<strong>Hello Servlet</strong><br>");
		out.println("Hello Servlet");
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("进行doPost处理");		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		out.println("<strong>Hello Servlet doPost</strong><br>");
		out.println("Hello Servlet doPost");
		
	}
}
