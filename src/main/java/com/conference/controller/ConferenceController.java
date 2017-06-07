package com.conference.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.conference.entity.Conference;
import com.conference.entity.Pack;

import com.conference.service.ConferenceService;


@Controller
@RequestMapping(value="/conference")
public class ConferenceController {

	//创建一个ConferenceService对象
	@Autowired
	private ConferenceService conferenceService;
	
	/**
	 * 通过value="conferenceList"映射到此方法，此方法查询所有的conference列表，然后返回给视图名为conferenceList的页面
	 * @return
	 */
	@RequestMapping(value="conferenceList")
	public ModelAndView conferenceList(){
		List<Conference> conferenceList=conferenceService.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("conferenceList", conferenceList);
		mv.setViewName("back/conferenceList");
		return mv;
	}
	
	/**
	 * 通过value = "/addLoad"映射到此函数，此函数功能是跳转到添加会议的页面
	 * @return
	 */
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/addConference");
		return mv;
	}
	/**
     * 此函数实现添加上传会场详细信息
     * @param 
     * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
     */
	@RequestMapping(value = "/addConference",method = RequestMethod.POST)
	public String addConference(Conference conference,MultipartFile conference_pic) throws IllegalStateException, IOException{
		//接收会议套餐图片,这个名字要和页面上的文件名要求一致 
		/*MultipartFile conference_pic = null;*/
		// 原始名称图片
		String originalFilename = conference_pic.getOriginalFilename();
		// 上传图片
		if (conference_pic!= null && originalFilename != null && originalFilename.length() > 0) {

			// 存储图片的物理路径
			/*String pic_path = "E:\\images\\";*/
			String pic_path = "D:\\software\\Myeclipseworkspace\\ConferenceSteward\\src\\main\\webapp\\img\\";

		/*	// 新的图片名称
			String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));*/
			// 新图片
			File newFile = new File(pic_path + originalFilename);

			// 将内存中的数据写入磁盘
			conference_pic.transferTo(newFile);

			// 将新图片名称写到中
			conference.setConferencePicture(originalFilename);
		}
		conferenceService.addConference(conference);
		return "redirect:/conference/conferenceList";
	}
	/**
     * 修改信息获取，跳转到修改信息视图
     * @param id
     * @return
     */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "id") Integer id){
		Conference conference = conferenceService.findByID(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("conference", conference);
		mv.setViewName("conference/editConference");
		return mv;
	}
	/**
     * 修改信息
     * @param user
     * @return
     */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	public String editConference(Conference conference){
		conferenceService.updateByPrimaryKey(conference);
		return "redirect:/conference/conferenceList";
	}

     /**
      * 删除用户
     * @param id
     * @return
      */

	@RequestMapping(value = "/delete")
	 public String  delete(@RequestParam(value = "id") Integer id){
		conferenceService.deleteByPrimaryKey(id);
		return "redirect:/conference/conferenceList";
	}
	
	/*
	 * ------------------------------------------前端-------------------------------------
	 */
	
	@RequestMapping(value = "/showConferenceList")
	public ModelAndView showConferenceList(){
		List<Conference> conferenceList = conferenceService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("conferenceList", conferenceList);
		mv.setViewName("front/huiyiliulan");
		
		return mv;
	}
	
	
	/**
	 * 新增会场订单
	 */
	@RequestMapping(value="/insertConferenceOrder")
	public ModelAndView insertConferenceOrder(Conference conference){
		ModelAndView mv = new ModelAndView();
		try {
			conferenceService.addConference(conference);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.setViewName("front/addConferenceOrderSuccess");
		
		return mv;  //后面要改成查看所有
		
		
	}
	
	@RequestMapping(value="/detailConference")
	public ModelAndView detailConference(@RequestParam(value = "conferenceId") Integer conferenceId){
		Conference conference=conferenceService.findByID(conferenceId);
		ModelAndView mv=new ModelAndView();
		mv.addObject("conference",conference);
		mv.setViewName("front/detailConference");
		return mv;
	} 
}
