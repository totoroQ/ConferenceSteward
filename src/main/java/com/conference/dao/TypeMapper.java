package com.conference.dao;


import com.conference.entity.Type;

import java.util.List;


public interface TypeMapper {
	 List<Type> findAll();
	
	 int updateByPrimaryKey(Type type);

	 void addType(Type type);
	
	 int deleteByPrimaryKey(Integer typeId);
	
	 Type findByID(Integer id);
	 
	 Type findByTypeName(String typeName);

}