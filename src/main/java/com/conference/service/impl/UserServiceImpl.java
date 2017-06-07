package com.conference.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.conference.dao.UserMapper;
import com.conference.entity.Page;
import com.conference.entity.User;
import com.conference.service.UserService;

@Service(value = "userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired(required=false)
	private UserMapper userMapper;
	
	/**
	 * 注册
	 */
	public int insertUser(User user) throws Exception {
		
		return userMapper.insertUser(user);
	}

	/**
	 * 登陆
	 */
	public User login(User user) throws Exception{
		
		return userMapper.login(user);
	}

	/**
	 * 查询所有用户信息
	 */
	public List<User> findAll() throws Exception {
		
		return userMapper.findAll();
	}

	/**
	 * 删除
	 */
	public int deleteById(Integer userId) {
		
		return userMapper.deleteById(userId);
	}

	/**
	 * 更新
	 */
	public int update(User user) throws Exception {
		
		return userMapper.update(user);
	}

	/**
	 * 根据id查询单个用户
	 */
	public User findById(Integer userId) throws Exception {
		
		return userMapper.findById(userId);
	}

	
	/**
	 * 根据用户名模糊查询
	 */
	public List<User> findByUserName(String value) throws Exception {
		// TODO Auto-generated method stub
		return userMapper.findByUserName(value);
	}

	/**
	 * 查询用户记录总数
	 */
	public int selectUserPageCount() throws Exception {
		// TODO Auto-generated method stub
		return userMapper.selectUserPageCount();
	}

	/**
	 * 分页
	 */
	public Page<User> selectUserByPage(Integer pageIndex) throws Exception {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		Page<User> page = new Page<User>();
		
		//封装当前页数
		page.setPageIndex(pageIndex);
		
		//每页显示的数据
		int pageSize = 5;
		page.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = userMapper.selectUserPageCount();
		page.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
		Double num = Math.ceil(tc/pageSize);//向上取整
		page.setTotalPage(num.intValue());
		
		map.put("start", (pageIndex-1)*pageSize);
		map.put("size", page.getPageSize());
		
		//封装每页显示的数据
		List<User> uList= userMapper.selectUserByPage(map);
		page.setList(uList);
		
		return page;
	}

	

	/**
	 * 查找关键字对应的总记录数
	 */
	
	public int selectUserPageCountByValue(String value) throws Exception {

		return userMapper.selectUserPageCountByValue(value);
	}
	
	
	/**
	 * 根据关键字分页
	 */
	public Page<User> selectUserPageByValue(Integer pageIndex, String value)
			throws Exception {
		
	
		HashMap<String, Object> map = new HashMap<String, Object>();
		Page<User> page = new Page<User>();
		
		//封装当前页数
		page.setPageIndex(pageIndex);
		
		//每页显示的数据
		int pageSize = 5;
		page.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = userMapper.selectUserPageCountByValue(value);
		page.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
		Double num = Math.ceil(tc/pageSize);//向上取整
		page.setTotalPage(num.intValue());
		
		
		map.put("value", value);
		map.put("start", (pageIndex-1)*pageSize);
		map.put("size", page.getPageSize());
		//封装每页显示的数据
		List<User> uList= userMapper.selectUserPageByValue(map);
		
		//page.setValue(value);
		page.setList(uList);
		
		return page;
		
	}

	
}
