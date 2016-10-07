package com.atwjsw.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		System.out.println(username + "   " + password);
				
		if (username.trim().equals("张三") && password.trim().equals("admin")) {
			req.getSession().setAttribute("loginUser", username);
			req.getRequestDispatcher("/login_s.jsp").forward(req, resp);	
		} else {
			req.getRequestDispatcher("../login_f.jsp").forward(req, resp);	
		}		
			
	}
}
