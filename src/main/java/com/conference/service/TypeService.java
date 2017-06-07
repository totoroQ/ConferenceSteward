package com.conference.service;

import java.util.List;

import com.conference.entity.Type;

public interface TypeService {
	public List<Type> findAll();
	
	public int updateByPrimaryKey(Type type);

	public void addType(Type type);
	
	public  int deleteByPrimaryKey(Integer typeId);
	
	public Type findByID(Integer id);
	
	public Type findByTypeName(String typeName);
}
