package com.conference.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.conference.dao.PackMapper;
import com.conference.entity.Pack;
import com.conference.entity.Page;
import com.conference.entity.Scheme;
import com.conference.service.PackService;


@Service(value = "packService")
@Transactional
public class PackServiceImpl implements PackService {
	
	@Autowired
	private PackMapper packMapper;

	 

	public void addPack(Pack Packs) {
		// TODO Auto-generated method stub
		packMapper.addPack(Packs);
	}
	
	public List<Pack> findAll(){
		return packMapper.findAll();
	}

	public int deleteByPrimaryKey(Integer PackId) {
		// TODO Auto-generated method stub
		return packMapper.deleteByPrimaryKey(PackId);
	}
	
	

	public Pack findByID(Integer id) {
		// TODO Auto-generated method stub
		Pack pack = packMapper.findByID(id);
		return pack;
	}

	

	public int updateByPrimaryKey(Pack pack) {
		// TODO Auto-generated method stub
		return packMapper.updateByPrimaryKey(pack);
	}

	public Pack selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return packMapper.selectByPrimaryKey(id);
	}

	public Pack selectByPackName(String packName) {
		// TODO Auto-generated method stub
		return packMapper.selectByPackName(packName);
	}
	
	
	/**
	 * 查询方案记录总数
	 *//*
	public int selectPackPageCount() {
		// TODO Auto-generated method stub
		return packMapper.selectPackPageCount();
	}
	
	*//**
	 * 分页
	 *//*
	public Page<Pack> selectPackByPage(Integer pageIndex) throws Exception {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		Page<Pack> page = new Page<Pack>();
		
		//封装当前页数
		page.setPageIndex(pageIndex);
		
		//每页显示的数据
		int pageSize = 5;
		page.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = packMapper.selectPackPageCount();
		page.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
		Double num = Math.ceil(tc/pageSize);//向上取整
		page.setTotalPage(num.intValue());
		
		map.put("start", (pageIndex-1)*pageSize);
		map.put("size", page.getPageSize());
		
		//封装每页显示的数据
		Page<Pack> sList= packMapper.selectPackByPage(map);
		
		return page;
	}

	
	
	*//**
	 * 模糊家分页
	 *//*
	public int selectPackPageCountByValue(String value) {
		
		return packMapper.selectPackPageCountByValue(value);
	}

	*//**
	 * 模糊加分页
	 *//*
	public Page<Pack> selectPackPageByValue(Integer pageIndex, String value)
			throws Exception {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		Page<Pack> page = new Page<Pack>();
		
		//封装当前页数
		page.setPageIndex(pageIndex);
		
		//每页显示的数据
		int pageSize = 5;
		page.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = packMapper.selectPackPageCountByValue(value);
		page.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
		Double num = Math.ceil(tc/pageSize);//向上取整
		page.setTotalPage(num.intValue());
		
		map.put("value", value);
		map.put("start", (pageIndex-1)*pageSize);
		map.put("size", page.getPageSize());
		
		//封装每页显示的数据
		List<Pack> sList= packMapper.selectPackPageByValue(map);
		page.setList(sList);
		
		return page;
	}
*/
	

	


	

}
