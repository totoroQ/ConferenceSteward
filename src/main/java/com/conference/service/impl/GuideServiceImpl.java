package com.conference.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.conference.dao.GuideDao;
import com.conference.entity.Guide;
import com.conference.service.GuideService;

@Service(value="guideService")
@Transactional
public class GuideServiceImpl implements GuideService{

	@Autowired
	private GuideDao guideDao;
	
	public void add(Guide guide) {
		// TODO Auto-generated method stub
		guideDao.insert(guide);
	}

	public void update(Guide guide) {
		// TODO Auto-generated method stub
		guideDao.update(guide);
	}

	public void delete(Integer guideId) {
		// TODO Auto-generated method stub
		guideDao.delete(guideId);
	}

	public Guide findById(Integer guideId) {
		// TODO Auto-generated method stub
		return guideDao.findByID(guideId);
	}

	public List<Guide> findAll() {
		// TODO Auto-generated method stub
		return guideDao.findAll();
	}


}
