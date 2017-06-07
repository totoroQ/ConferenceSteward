package com.conference.dao;

import java.util.List;

import com.conference.entity.Guide;

public interface GuideDao {

	int delete(Integer guideId);

    int insert(Guide guide);

    int update(Guide guide);
    
    Guide findByID(Integer guideId);

	List<Guide> findAll();

}