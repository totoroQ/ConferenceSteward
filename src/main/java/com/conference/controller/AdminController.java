package com.conference.controller;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.conference.entity.Admin;
import com.conference.entity.User;

import com.conference.service.AdminService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	
	/**
	 * 注册
	 */
	@RequestMapping(value="/insert")
	public ModelAndView register(Admin admin){
		
		ModelAndView mv = new ModelAndView();
		
		try {
			adminService.insertAdmin(admin);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.setViewName("front/login");
		
		return mv;
	}
	
	
	/**
	 * 登陆
	 */
	@RequestMapping(value = "/select")
	public ModelAndView login(Admin admin,HttpServletRequest request,HttpSession session){
		
		ModelAndView mv = new ModelAndView();
		
		admin = (Admin) session.getAttribute("admin");
		
		
		try {
			Admin a = adminService.login(admin);
			
			if(a!=null){
				//存session
				session.setAttribute("a", a);
				mv.setViewName("back/index");
				return mv;   
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.setViewName("front/login");
		return mv;
		
	}
	
	
	
	
	/**
	 * 跳转注册页面
	 */
	@RequestMapping(value="/toRegister")
	public ModelAndView toRegister(){
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("back/bg-register");
		
		return mv;
	}
	

	/**
	 * 加载main页面
	 */
	@RequestMapping(value="/main")
	public ModelAndView toMain(){
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("back/main");
		
		return mv;
	}
	
	
	/**
	 * 跳转后台添加用户页面
	 */
	@RequestMapping(value="/toAddUser")
	public ModelAndView toAddUser(){
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("back/bg-adduser");
		
		return mv;
	}
	
}
