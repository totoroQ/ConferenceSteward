package com.conference.dao;

import com.conference.entity.Scheme;
import com.conference.entity.User;


import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository(value="SchemeMapper")
public interface SchemeMapper {
	
	int insertScheme(Scheme scheme);//增加方案

	int deleteSchemeById(Integer schemeId);//根据主键删除
	
	List<Scheme> schemeList();//后台管理员查看所有方案
	
	List<Scheme> findSchemeByUserId(Integer userId);//根据用户id查看个人方案列表
	
	Scheme findSchemeById(Integer schemeId);//根据方案id查询
	
	int updateScheme(Scheme scheme);//根据id进行更新
	
	int updateSchemeCheck(Scheme scheme);//根据id进行后台审核结果更新
	
	List<Scheme> findBySchemeName(String value);//根据方案名模糊查询
	
	int selectSchemePageCount();//后台查询方案记录总数
	
	List<Scheme> selectSchemeByPage(HashMap<String,Object> map);//后台分页操作
	
	
	int selectSchemePageCountByUser(Integer userId);//前台查询用户记录总数
	
	List<Scheme> selectSchemeByPageByUser(HashMap<String,Object> map);//前台分页操作
	
	
	int selectSchemePageCountByValue(String value);//查找关键字对应的总记录数
	
	List<Scheme> selectSchemePageByValue(HashMap<String,Object> map);//根据关键字分页
	
	
	
  
}