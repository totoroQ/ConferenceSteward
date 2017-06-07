package com.conference.service;



import java.util.HashMap;
import java.util.List;

import com.conference.entity.Pack;
import com.conference.entity.Page;



public interface PackService {
	
	//public int deleteByPrimaryKey(Integer packageId);

	
	public List<Pack> findAll();
	
	public int updateByPrimaryKey(Pack pack);

	public void addPack(Pack pack);
	
	int deleteByPrimaryKey(Integer packageId);
	
	public Pack findByID(Integer id);
	
	public Pack selectByPrimaryKey(Integer id);
	
	
	public Pack selectByPackName(String packName);
	 
	
	/*public int selectPackPageCount();//后台查询方案记录总数
		
	public Page<Pack> selectPackByPage(Integer pageIndex);//后台分页操作
	
	
	
	
	
	
	
	public int selectPackPageCountByValue(String value);//查找关键字对应的总记录数
	
	public Page<Pack> selectPackPageByValue(HashMap<String,Object> map);//根据关键字分页
*/

    
 



}
