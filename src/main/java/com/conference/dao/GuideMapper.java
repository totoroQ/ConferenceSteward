package com.conference.dao;

import com.conference.entity.Guide;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GuideMapper {

    int deleteByPrimaryKey(Integer guideId);

    int insert(Guide record);

    int insertSelective(Guide record);

 
    Guide selectByPrimaryKey(Integer guideId);

   
    int updateByPrimaryKeySelective(Guide record);

    int updateByPrimaryKey(Guide record);
}