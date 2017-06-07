package com.conference.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.conference.dao.ConferenceMapper;
import com.conference.entity.Conference;

import com.conference.service.ConferenceService;

@Service(value = "conferenceService")
@Transactional
public class ConferenceServiceImpl implements ConferenceService {

	@Autowired
	private ConferenceMapper conferenceMapper;
	
	public List<Conference> findAll() {
		
		return conferenceMapper.findAll();
	}

	public int updateByPrimaryKey(Conference conference) {
		
		return conferenceMapper.updateByPrimaryKey(conference);
	}

	public void addConference(Conference conference) {
		conferenceMapper.addConference(conference);
		
	}

	public int deleteByPrimaryKey(Integer conferenceId) {
		// TODO Auto-generated method stub
		return conferenceMapper.deleteByPrimaryKey(conferenceId);
	}

	public Conference findByID(Integer id) {
		// TODO Auto-generated method stub
		return conferenceMapper.findByID(id);
	}

}
