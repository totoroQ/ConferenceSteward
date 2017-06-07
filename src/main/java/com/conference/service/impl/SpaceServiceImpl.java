package com.conference.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.conference.dao.SpaceDao;
import com.conference.entity.Space;
import com.conference.service.SpaceService;

@Service(value="spaceService")
@Transactional
public class SpaceServiceImpl implements SpaceService{

	@Autowired
	private SpaceDao spaceDao;
	
	public void add(Space space) {
		// TODO Auto-generated method stub
		spaceDao.insert(space);
	}

	public void update(Space space) {
		// TODO Auto-generated method stub
		spaceDao.update(space);
	}

	public void delete(Integer spaceId) {
		// TODO Auto-generated method stub
		spaceDao.delete(spaceId);
	}

	public Space findById(Integer spaceId) {
		// TODO Auto-generated method stub
		return spaceDao.findByID(spaceId);
	}

	public List<Space> findAll() {
		// TODO Auto-generated method stub
		return spaceDao.findAll();
	}

	public Space findSpTypeById(Integer spaceId) {
		// TODO Auto-generated method stub
		return spaceDao.findSpTypeByID(spaceId);
	}

}
