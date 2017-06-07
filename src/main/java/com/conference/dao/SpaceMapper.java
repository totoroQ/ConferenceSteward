package com.conference.dao;

import com.conference.entity.Space;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SpaceMapper {

    int deleteByPrimaryKey(Integer spaceId);

    int insert(Space record);

    int insertSelective(Space record);

  
    Space selectByPrimaryKey(Integer spaceId);


    int updateByPrimaryKeySelective(Space record);

    int updateByPrimaryKey(Space record);
}