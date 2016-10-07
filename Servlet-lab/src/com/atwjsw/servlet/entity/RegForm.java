package com.atwjsw.servlet.entity;

import java.util.Date;
import java.util.List;

public class RegForm {
	
	private String username;
	private String password;
	private String email;
	private String gender;
	private Date birthday;
	private String[] favorites;
	private String introduction;
	private boolean agreement;	
	
	public RegForm() {		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	public String[] getFavorites() {
		return favorites;
	}
	public void setFavorites(String[] favorites) {
		this.favorites = favorites;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public boolean isAgreement() {
		return agreement;
	}
	public void setAgreement(boolean agreement) {
		this.agreement = agreement;
	}	
}
