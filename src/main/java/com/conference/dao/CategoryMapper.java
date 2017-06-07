package com.conference.dao;

import com.conference.entity.Category;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CategoryMapper {


    int deleteByPrimaryKey(Integer categoryId);

    int insert(Category record);

    int insertSelective(Category record);


    Category selectByPrimaryKey(Integer categoryId);

 
    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);
}