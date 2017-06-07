package com.conference.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.conference.dao.TypeMapper;
import com.conference.entity.Type;
import com.conference.service.TypeService;


@Service(value = "typeService")
@Transactional
public class TypeServiceImpl implements TypeService {

	@Autowired
	private TypeMapper typeMapper;
	
	public List<Type> findAll() {
		// TODO Auto-generated method stub
		return typeMapper.findAll();
	}

	public int updateByPrimaryKey(Type type) {
		// TODO Auto-generated method stub
		return typeMapper.updateByPrimaryKey(type);
	}

	public void addType(Type type) {
		typeMapper.addType(type);
		
	}

	public int deleteByPrimaryKey(Integer typeId) {
		// TODO Auto-generated method stub
		return typeMapper.deleteByPrimaryKey(typeId);
	}

	public Type findByID(Integer id) {
		// TODO Auto-generated method stub
		return typeMapper.findByID(id);
	}

	public Type findByTypeName(String typeName) {
		// TODO Auto-generated method stub
		return typeMapper.findByTypeName(typeName);
	}

}
