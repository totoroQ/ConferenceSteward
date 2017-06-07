package com.conference.service;

import java.util.List;

import com.conference.entity.Guide;

public interface GuideService {
	
	public void add(Guide guide);
	
	public void update(Guide guide);
	
	public void delete(Integer guideId);
	
	public Guide findById(Integer guideId);
	
	public List<Guide> findAll();

}
