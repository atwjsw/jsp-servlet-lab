package com.atwjsw.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeCycleServlet1 extends HttpServlet {
	
	public LifeCycleServlet1() {
		System.out.println("执行ServletLifeCycle1的Constructor方法");
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("执行ServletLifeCycle1的doGet方法");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();		
		out.println("<strong>执行ServletLifeCycle1的doGet方法</strong><br>");
		System.out.println(this.getServletConfig().getInitParameter("load-on-startup"));
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	public void destroy() {
		System.out.println("执行ServletLifeCycle1的destroy方法");
	}

	@Override
	public void init() throws ServletException {
		System.out.println("执行ServletLifeCycle1的init方法");
	}
	
	

}
