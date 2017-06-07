package com.conference.dao;

import java.util.List;

import com.conference.entity.Space;

public interface SpaceDao {
    
	int delete(Integer spaceId);

    int insert(Space space);

    int update(Space space);
    
    Space findByID(Integer spaceId);

	List<Space> findAll();

	Space findSpTypeByID(Integer spaceId);
}
