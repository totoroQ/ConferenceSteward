package com.conference.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.conference.entity.Space;
import com.conference.entity.Type;
import com.conference.service.SpaceService;
import com.conference.service.TypeService;

@Controller
@RequestMapping(value="/space")
public class SpaceController {
	
	@Autowired
	private SpaceService spaceService;
	@Autowired
	private TypeService typeService;
	
	@RequestMapping(value="/spaceList")
	public ModelAndView spaceList(){
		List<Space> spaceList=spaceService.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("spaceList",spaceList);
		mv.setViewName("front/space");
		return mv;
	}
	
	@RequestMapping(value="/detailSpace")
	public ModelAndView detailSpace(@RequestParam(value = "spaceId") Integer spaceId){
		Space space=spaceService.findSpTypeById(spaceId);
		ModelAndView mv=new ModelAndView();
		mv.addObject("space",space);
		mv.setViewName("front/detailSpace");
		return mv;
	} 
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Space space){
		spaceService.add(space);
		return "redirect:/space/spaceBg";
	} 
	
	@RequestMapping(value="/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "spaceId") Integer spaceId){
		Space space=spaceService.findSpTypeById(spaceId);
		ModelAndView mv=new ModelAndView();
		mv.addObject("space",space);
		mv.setViewName("/back/space_edit_bg");
		return mv;
	} 
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(Space space){
		spaceService.update(space);
		return "redirect:/space/spaceBg";
	} 
	
	@RequestMapping(value="/delete")
	public String delete(@RequestParam(value = "spaceId") Integer spaceId){
		spaceService.delete(spaceId);
		return "redirect:/space/spaceBg";
	} 
	
	@RequestMapping(value="/spaceBg")
	public ModelAndView spaceBg(){
		List<Space> spaceList=spaceService.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("spaceList",spaceList);
		mv.setViewName("/back/space_bg");
		return mv;
	}
	
@RequestMapping(value="/addLoad")
	public ModelAndView addLoad(){
		List<Type> typeList=typeService.findAll();
		System.out.println(typeList);
		ModelAndView mv=new ModelAndView();
		mv.addObject("typeList", typeList);
		mv.setViewName("/back/space_add_bg");
		return mv;
	}

}
