package com.conference.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.conference.entity.Guide;
import com.conference.entity.Space;
import com.conference.service.GuideService;

@Controller
@RequestMapping(value="/guide")
public class GuideController {
	
	@Autowired
	private GuideService guideService;
	
	@RequestMapping(value="/guideList")
	public ModelAndView guideList(){
		List<Guide> guideList=guideService.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("guideList",guideList);
		mv.setViewName("front/guide");
		return mv;
	}
	
	
	@RequestMapping(value="/guideBg")
	public ModelAndView guideBg(){
		List<Guide> guides=guideService.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("guides", guides);
		mv.setViewName("/back/guide_bg");
		return mv;
	}
	
	@RequestMapping(value="/detailGuide")
	public ModelAndView detailGuide(@RequestParam(value = "guideId") Integer guideId){
		Guide guide=guideService.findById(guideId);
		ModelAndView mv=new ModelAndView();
		mv.addObject("guide",guide);
		mv.setViewName("/front/detailGuide");
		return mv;
	} 
	
	@RequestMapping(value="/addLoad")
	public ModelAndView addLoad(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/back/guide_add_bg");
		return mv;
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Guide guide){
		guideService.add(guide);
		return "redirect:/guide/guideBg";
	}
	
	@RequestMapping(value="/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "guideId") Integer guideId){
		Guide guide=guideService.findById(guideId);
		ModelAndView mv=new ModelAndView();
		mv.addObject("guide", guide);
		mv.setViewName("/back/guide_edit_bg");
		return mv;
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(Guide guide){
		guideService.update(guide);
		return "redirect:/guide/guideBg";
	}
	
	@RequestMapping(value="/delete")
	public String delete(@RequestParam(value="guideId")Integer guideId){
		guideService.delete(guideId);
		return "redirect:/guide/guideBg";
		
	}
	
}
