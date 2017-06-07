package com.conference.dao;

import com.conference.entity.Comment;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommentMapper {

    int deleteByPrimaryKey(Integer commentId);

    int insert(Comment record);

    int insertSelective(Comment record);

 
    Comment selectByPrimaryKey(Integer commentId);

 
    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}