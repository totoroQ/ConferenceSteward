package com.conference.entity;

import java.util.List;

public class User {

	private Integer userId;

    private String userName;

    private String userPassword;

    private String userSex;

    private Integer userAge;

    private String userEmail;

    private List<Scheme> schemesList;//方案

	
    
    public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public Integer getUserAge() {
		return userAge;
	}

	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public List<Scheme> getSchemesList() {
		return schemesList;
	}

	public void setSchemesList(List<Scheme> schemesList) {
		this.schemesList = schemesList;
	}
    
    
    


}