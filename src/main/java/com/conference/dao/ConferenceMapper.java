package com.conference.dao;

import com.conference.entity.Conference;


import java.util.List;

import org.springframework.stereotype.Repository;
@Repository(value="conferenceMapper")
public interface ConferenceMapper {
	 List<Conference> findAll();
	
	 int updateByPrimaryKey(Conference conference);

	 void addConference(Conference conference);
	
	 int deleteByPrimaryKey(Integer conferenceId);
	
	 Conference findByID(Integer id);
    
}