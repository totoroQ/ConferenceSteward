package com.conference.dao;

import com.conference.entity.Pack;
import com.conference.entity.Page;
import com.conference.entity.Scheme;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;
@Repository(value="packMapper")
public interface PackMapper {

		 List<Pack> findAll();
		
		 int updateByPrimaryKey(Pack pack);
	
		 void addPack(Pack pack);
		
		 int deleteByPrimaryKey(Integer packageId);
	
	
		 Pack findByID(Integer id);
		 
		 Pack selectByPrimaryKey(Integer id);
		 
		 Pack selectByPackName(String packName);
	 
	 	/* int selectPackPageCount();//后台查询方案记录总数
		
		 Page<Pack> selectPackByPage(HashMap<String,Object> map);//后台分页操作
		
		
		
		 int selectPackPageCountByValue(String value);//查找关键字对应的总记录数
		
		 List<Pack> selectPackPageByValue(HashMap<String,Object> map);//根据关键字分页
*/
}