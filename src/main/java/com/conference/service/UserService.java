package com.conference.service;

import java.util.HashMap;
import java.util.List;

import com.conference.entity.Page;
import com.conference.entity.User;

public interface UserService {

	public int insertUser(User user) throws Exception;//注册
	
	public User login(User user) throws Exception;//登陆
	
	public List<User> findAll() throws Exception;//查询所有用户信息
	
	public int deleteById(Integer userId) throws Exception;//根据主键删除
	
	public int update(User user) throws Exception; //更新
	
	public User findById(Integer userId) throws Exception;//更具id查询
	
	
	public List<User> findByUserName(String value) throws Exception;//根据用户名模糊查询
	
	
	public int selectUserPageCount()throws Exception;//查询用户记录总数
	
	public Page<User> selectUserByPage(Integer pageIndex) throws Exception;//分页
	
	
	public int selectUserPageCountByValue(String value) throws Exception;//查找关键字对应的总记录数
	
	public Page<User> selectUserPageByValue(Integer pageIndex,String value) throws Exception;//根据关键字分页
	
	
}
