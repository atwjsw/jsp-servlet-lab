package com.atwjsw.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/servlet/ObjectServlet")
public class ObjectServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//PrintWriter out = resp.getwriter();
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession();
		session.setAttribute("user", "admin");
		ServletContext ctx =  req.getServletContext();
		ctx.setAttribute("counter", 999);
		//PageContext		
		this.getServletConfig();
		this.getServletContext();
		
	}
}
