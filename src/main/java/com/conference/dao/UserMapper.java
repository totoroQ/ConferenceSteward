package com.conference.dao;

import com.conference.entity.Page;
import com.conference.entity.User;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository(value="UserMapper")
public interface UserMapper {
	
	int insertUser(User user);//注册
	
	User login(User user);//登陆
	
	List<User> findAll();//查询所有用户信息
	
	int deleteById(Integer userId);//根据主键删除
	
	int update(User user); //更新
	
	User findById(Integer userId);//更具id查询

	List<User> findByUserName(String value);//根据用户名模糊查询
	
	
	int selectUserPageCount();//查询用户记录总数
	
	List<User> selectUserByPage(HashMap<String,Object> map);//分页操作
	
	
	int selectUserPageCountByValue(String value);//查找关键字对应的总记录数
	
	List<User> selectUserPageByValue(HashMap<String,Object> map);//根据关键字分页

	
	
	
	
}