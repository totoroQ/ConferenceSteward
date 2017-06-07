package com.conference.entity;

import java.util.Date;

/**
 * 方案
 * @author SJQ
 *
 */
public class Scheme {
    
	private Integer schemeId;
	
	private String schemeName;

    private String schemeCity;

    private String typeName;

    private Integer schemeDuration;

    private Integer schemeNumber;

    private Float schemeBudget;

    private String schemeCheck = "未审核";

    
    private Integer userId;
    
    private Integer adminId;

	public Integer getSchemeId() {
		return schemeId;
	}

	public void setSchemeId(Integer schemeId) {
		this.schemeId = schemeId;
	}

	public String getSchemeName() {
		return schemeName;
	}

	public void setSchemeName(String schemeName) {
		this.schemeName = schemeName;
	}

	public String getSchemeCity() {
		return schemeCity;
	}

	public void setSchemeCity(String schemeCity) {
		this.schemeCity = schemeCity;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Integer getSchemeDuration() {
		return schemeDuration;
	}

	public void setSchemeDuration(Integer schemeDuration) {
		this.schemeDuration = schemeDuration;
	}

	public Integer getSchemeNumber() {
		return schemeNumber;
	}

	public void setSchemeNumber(Integer schemeNumber) {
		this.schemeNumber = schemeNumber;
	}

	public Float getSchemeBudget() {
		return schemeBudget;
	}

	public void setSchemeBudget(Float schemeBudget) {
		this.schemeBudget = schemeBudget;
	}

	public String getSchemeCheck() {
		return schemeCheck;
	}

	public void setSchemeCheck(String schemeCheck) {
		this.schemeCheck = schemeCheck;
	}


	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	
    
    
   
    
    
	
   
}