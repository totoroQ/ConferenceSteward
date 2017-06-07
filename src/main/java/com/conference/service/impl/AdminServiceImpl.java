package com.conference.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.conference.dao.AdminMapper;
import com.conference.entity.Admin;
import com.conference.entity.User;
import com.conference.service.AdminService;


@Service(value = "adminService")
@Transactional
public class AdminServiceImpl implements AdminService {

	
	@Autowired(required=false)
	private AdminMapper adminMapper;
	
	
	/**
	 * 注册
	 */
	public int insertAdmin(Admin admin) throws Exception {
		
		return adminMapper.insertAdmin(admin);
	}
	
	
	/**
	 * 登陆
	 */
	public Admin login(Admin admin) throws Exception {
		
		return adminMapper.login(admin);
	}

	
	

}
