package com.atwjsw.jsp.dao;

import com.atwjsw.jsp.bean.User;

public class UserDAO {
	
	public boolean loginUser (User user) {
		
		if (user.getUsername().equals("admin")&& user.getPassword().equals("admin")) {
			return true;
		} else {
			return false;
		}		
	}
}
