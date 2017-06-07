package com.conference.service;

import java.util.List;

import com.conference.entity.Space;

public interface SpaceService {
	
	public void add(Space space);
	
	public void update(Space space);
	
	public void delete(Integer spaceId);
	
	public Space findById(Integer spaceId);
	
	public List<Space> findAll();

	public Space findSpTypeById(Integer spaceId);
	

}
