package com.conference.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.conference.entity.Type;

import com.conference.service.TypeService;


@Controller
@RequestMapping(value="/type")
public class TypeController {
	@Autowired
	private TypeService typeService;
	
	@RequestMapping(value="/typeList")
	public ModelAndView typeList(){
		List<Type> typeList=typeService.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("typeList", typeList);
		mv.setViewName("back/typeList");
		return mv;
	}
	
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/addType");
		return mv;
	}
	/**
     * 添加信息
     * @param 
     * @return
     */
	@RequestMapping(value = "/addType",method = RequestMethod.POST)
	public String addType(Type type){
		typeService.addType(type);
		return "redirect:/type/typeList";
	}
	/**
     * 修改信息获取，跳转到修改信息视图
     * @param id
     * @return
     */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "id") Integer id){
		Type type = typeService.findByID(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("type", type);
		mv.setViewName("back/editType");
		return mv;
	}
	/**
     * 修改信息
     * @param user
     * @return
     */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	public String editType(Type type){
		typeService.updateByPrimaryKey(type);
		return "redirect:/type/typeList";
	}

     /**
      * 删除用户
     * @param id
     * @return
      */

	@RequestMapping(value = "/delete")
	 public String  delete(@RequestParam(value = "id") Integer id){
		typeService.deleteByPrimaryKey(id);
		return "redirect:/type/typeList";
	}
	
	
	//根据会议类型名查询会议信息
		@RequestMapping("findByTypeName")
		public ModelAndView findByTypeName(@RequestParam(value = "typeName") String typeName){
			Type type=typeService.findByTypeName(typeName);
			
			ModelAndView mv=new ModelAndView();
			mv.addObject("type",type);
			mv.setViewName("/type/typeList");
			return mv;
		}
	
	
}
