package com.conference.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/base")
public class MainConroller {
	@RequestMapping(value = "/main")
	public ModelAndView main(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/main");
		return mv;
	}
	
	
	@RequestMapping(value = "/packList")
	public ModelAndView packList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/packList");
		return mv;
	}
	
	
	@RequestMapping(value = "/contactUs")
	public ModelAndView contactUs(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("front/lianxiwomen");
		return mv;
	}
	
	@RequestMapping(value = "/showPackList")
	public ModelAndView showPackList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("front/huiyitaocansousuo");
		return mv;
	}
	
	@RequestMapping(value = "/conferenceList")
	public ModelAndView conferenceList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/conferenceList");
		return mv;
	}
	
	@RequestMapping(value = "/typeList")
	public ModelAndView typeList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/typeList");
		return mv;
	}
	
	@RequestMapping(value = "/changdiguanli")
	public ModelAndView changDiGuanLi(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/changdiguanli");
		return mv;
	}
	
	
/*	@RequestMapping(value = "/addPack")
	public ModelAndView addPack(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pack/addLoad");
		return mv;
	}*/
	
	@RequestMapping(value = "/fanganguanli")
	public ModelAndView fangAnGuanLi(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/fanganguanli");
		return mv;
	}
	
	@RequestMapping(value = "/fanganxiangqing")
	public ModelAndView fangAnXiangQing(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/fanganxiangqing");
		return mv;
	}
	
	
	@RequestMapping(value = "/gerenxinxiguanli")
	public ModelAndView geRenXinXiGuanLi(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/gerenxinxiguanli");
		return mv;
	}
	
	@RequestMapping(value = "/huiguanjiaketang")
	public ModelAndView huiGuanJiaKeTang(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/huiguanjiaketang");
		return mv;
	}
	
	
	
	
	@RequestMapping(value = "/huiyuandingdanguanli")
	public ModelAndView huiYuandDingDanGuanLi(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/huiyuandingdanguanli");
		return mv;
	}
	
	
	@RequestMapping(value = "/huiyuanfanganguanli")
	public ModelAndView huiYuanFangAnGuanLi(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/huiyuanfanganguanli");
		return mv;
	}
	
	
	@RequestMapping(value = "/huiyuanshoucangguanli")
	public ModelAndView huiYuanShouCangGuanLi(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/huiyuanshoucangguanli");
		return mv;
	}
	
	
	
}
