package com.conference.dao;

import com.conference.entity.Admin;
import com.conference.entity.User;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository(value="AdminMapper")
public interface AdminMapper {


    int insertAdmin(Admin admin);//注册
	
    Admin login(Admin admin);//登陆
    
    
    
}