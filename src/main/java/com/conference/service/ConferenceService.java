package com.conference.service;

import java.util.List;

import com.conference.entity.Conference;


public interface ConferenceService {
	public List<Conference> findAll();
	
	public int updateByPrimaryKey(Conference conference);

	public void addConference(Conference conference);
	
	public  int deleteByPrimaryKey(Integer conferenceId);
	
	public  Conference findByID(Integer id);
}
