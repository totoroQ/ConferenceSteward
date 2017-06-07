package com.conference.service;

import java.util.List;

import com.conference.entity.Page;
import com.conference.entity.Scheme;
import com.conference.entity.User;


public interface SchemeService {
	
	public int insertScheme(Scheme scheme) throws Exception;//增加方案
	
	public int deleteSchemeById(Integer schemeId) throws Exception;//根据主键删除
	
	public List<Scheme> schemeList() throws Exception;//后台管理员查看所有方案
	
	public List<Scheme> findSchemeByUserId(Integer userId) throws Exception;//根据用户id查看个人方案列表
	
	public Scheme findSchemeById(Integer schemeId) throws Exception;//根据方案id查询
	
	public int updateScheme(Scheme scheme) throws Exception;//根据id进行更新
	
	public int updateSchemeCheck(Scheme scheme)throws Exception;//根据id进行后台审核结果更新
	
	public List<Scheme> findBySchemeName(String value) throws Exception;//根据方案名模糊查询
	
	
	public int selectSchemePageCount()throws Exception;//后台查询方案记录总数
	
	public Page<Scheme> selectSchemeByPage(Integer pageIndex) throws Exception;//前台分页
	
	
	public int selectSchemePageCountByUser(Integer userId)throws Exception;//后台查询方案记录总数
	
	public Page<Scheme> selectSchemeByPageByUser(Integer pageIndex,Integer userId) throws Exception;//前台分页
	
	
	public int selectSchemePageCountByValue(String value) throws Exception;//模糊字对应的总记录数
	
	public Page<Scheme> selectSchemePageByValue(Integer pageIndex,String value) throws Exception;//根据模糊分页
	
	
	
}
