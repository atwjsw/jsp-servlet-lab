package com.atwjsw.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atwjsw.servlet.entity.RegForm;

public class RegistrationServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		//先声明变量
		String username, password, email, gender, introduction, agreement;
		Date birthday;
		String[] favorites;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		RegForm regForm = new RegForm();		
		
		try {
		username = req.getParameter("username");	
		password = req.getParameter("password");		
		email = req.getParameter("email");	
		gender = req.getParameter("gender");	
		introduction = req.getParameter("introduction");
		agreement = req.getParameter("agreement");					
		favorites = req.getParameterValues("favorites");			
		birthday = sdf.parse(req.getParameter("birthday"));
		
		regForm.setUsername(username);
		regForm.setPassword(password);
		regForm.setEmail(email);
		regForm.setGender(gender);
		regForm.setIntroduction(introduction);
		
		regForm.setFavorites(favorites);
		regForm.setBirthday(birthday);
		
		regForm.setAgreement((agreement!=null && agreement.equals("agreed"))? true:false);		
		
		req.setAttribute("regForm", regForm);
		req.getRequestDispatcher("reg_success.jsp").forward(req, resp);
		
		} catch (ParseException e) {			
			e.printStackTrace();
		}			
		
	}
}
