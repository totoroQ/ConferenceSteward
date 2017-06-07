package com.conference.service;

import com.conference.entity.Admin;
import com.conference.entity.User;

public interface AdminService {
	
	
	public int insertAdmin(Admin admin) throws Exception;//注册
	
    public Admin login(Admin admin) throws Exception;//登陆
    
    
}
