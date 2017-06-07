package com.conference.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.conference.dao.SchemeMapper;
import com.conference.entity.Page;
import com.conference.entity.Scheme;
import com.conference.entity.User;
import com.conference.service.SchemeService;

@Service(value = "schemeService")
@Transactional
public class SchemeServiceImpl implements SchemeService {

	
	@Autowired
	private SchemeMapper schemeMapper;
	
	/**
	 * 新增方案
	 */
	public int insertScheme(Scheme scheme) throws Exception {
		
		return schemeMapper.insertScheme(scheme);
	}

	/**
	 * 根据id删除方案
	 */
	public int deleteSchemeById(Integer schemeId) throws Exception {
		
		System.out.println(schemeId);
		
		return schemeMapper.deleteSchemeById(schemeId);
	}

	/**
	 * 后台管理员查看所有方案
	 */
	public List<Scheme> schemeList() {
		
		return schemeMapper.schemeList();
	}

	/**
	 * 根据用户id查看个人方案列表
	 */
	public List<Scheme> findSchemeByUserId(Integer userId) throws Exception {
		
		
		return schemeMapper.findSchemeByUserId(userId);
	}

	/**
	 * 根据方案id查询
	 */
	public Scheme findSchemeById(Integer schemeId) throws Exception {
		
		return schemeMapper.findSchemeById(schemeId);
	}

	
	/**
	 * 根据id进行更新
	 */
	public int updateScheme(Scheme scheme) throws Exception {
		
		return schemeMapper.updateScheme(scheme);
	}

	/**
	 * 根据id进行后台审核结果更新
	 */
	public int updateSchemeCheck(Scheme scheme) throws Exception {
		
		return schemeMapper.updateSchemeCheck(scheme);
	}

	/**
	 * 根据方案名模糊查询
	 */
	public List<Scheme> findBySchemeName(String value) throws Exception {
		
		return schemeMapper.findBySchemeName(value);
	}
	
	
	/**
	 * 查询方案记录总数
	 */
	public int selectSchemePageCount() throws Exception {
		// TODO Auto-generated method stub
		return schemeMapper.selectSchemePageCount();
	}
	
	/**
	 * 分页
	 */
	public Page<Scheme> selectSchemeByPage(Integer pageIndex) throws Exception {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		Page<Scheme> page = new Page<Scheme>();
		
		//封装当前页数
		page.setPageIndex(pageIndex);
		
		//每页显示的数据
		int pageSize = 5;
		page.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = schemeMapper.selectSchemePageCount();
		page.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
		Double num = Math.ceil(tc/pageSize);//向上取整
		page.setTotalPage(num.intValue());
		
		map.put("start", (pageIndex-1)*pageSize);
		map.put("size", page.getPageSize());
		
		//封装每页显示的数据
		List<Scheme> sList= schemeMapper.selectSchemeByPage(map);
		page.setList(sList);
		
		return page;
	}

	
	/**
	 * 前台
	 */
	public int selectSchemePageCountByUser(Integer userId) throws Exception {
		
		return schemeMapper.selectSchemePageCountByUser(userId);
	}

	
	
	/**
	 * 前台
	 */
	public Page<Scheme> selectSchemeByPageByUser(Integer pageIndex,Integer userId)
			throws Exception {
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		Page<Scheme> page = new Page<Scheme>();
		
		//封装当前页数
		page.setPageIndex(pageIndex);
		
		//每页显示的数据
		int pageSize = 5;
		page.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = schemeMapper.selectSchemePageCountByUser(userId);
		page.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
		Double num = Math.ceil(tc/pageSize);//向上取整
		page.setTotalPage(num.intValue());
		
		map.put("userId", userId);
		map.put("start", (pageIndex-1)*pageSize);
		map.put("size", page.getPageSize());
		
		//封装每页显示的数据
		List<Scheme> sList= schemeMapper.selectSchemeByPageByUser(map);
		page.setList(sList);
		
		return page;
		
		
		
		
		
		
	}

	/**
	 * 模糊家分页
	 */
	public int selectSchemePageCountByValue(String value) throws Exception {
		
		return schemeMapper.selectSchemePageCountByValue(value);
	}

	/**
	 * 模糊加分页
	 */
	public Page<Scheme> selectSchemePageByValue(Integer pageIndex, String value)
			throws Exception {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		Page<Scheme> page = new Page<Scheme>();
		
		//封装当前页数
		page.setPageIndex(pageIndex);
		
		//每页显示的数据
		int pageSize = 5;
		page.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = schemeMapper.selectSchemePageCountByValue(value);
		page.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
		Double num = Math.ceil(tc/pageSize);//向上取整
		page.setTotalPage(num.intValue());
		
		map.put("value", value);
		map.put("start", (pageIndex-1)*pageSize);
		map.put("size", page.getPageSize());
		
		//封装每页显示的数据
		List<Scheme> sList= schemeMapper.selectSchemePageByValue(map);
		page.setList(sList);
		
		return page;
	}

	


}
