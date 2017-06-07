package com.conference.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.conference.entity.Page;
import com.conference.entity.Scheme;
import com.conference.entity.User;
import com.conference.service.SchemeService;

@Controller
@RequestMapping(value="/scheme")
public class SchemeController {
	
	@Autowired
	private SchemeService schemeService;
	
	
	/**
	 * 新增方案
	 */
	@RequestMapping(value="/insert")
	public ModelAndView insertscheme(Scheme scheme){
		ModelAndView mv = new ModelAndView();
		try {
			schemeService.insertScheme(scheme);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.setViewName("front/addSchemeSuccess");
		
		return mv;  //后面要改成查看所有
		
		
	}
	
	/**
	 * 根据id删除方案
	 */  
	@RequestMapping(value="/deleteById")
	public ModelAndView deleteById(Integer schemeId,HttpServletRequest request,HttpSession session){
		
		Integer userId = 0;
		
		try {
			
			schemeService.deleteSchemeById(schemeId);
			User user = (User) session.getAttribute("u");
			userId = user.getUserId();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView("redirect:/scheme/selectSchemePageByuser?userId="+userId);
		
		/*return "redirect:/scheme/findSchemeByUserId";*/
	}
	
	
	/**
	 * 后台管理员查看所有方案
	 */
	@RequestMapping(value="/schemeList")
	public ModelAndView findAll(){
		
		ModelAndView mv = new ModelAndView();
		List<Scheme> sList = null;
		try {
			sList = schemeService.schemeList();
			//session.setAttribute("sList", sList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.addObject("sList", sList);
		mv.setViewName("back/bg-schemeall");
		
		return mv;
	}
	
	
	/**
	 * 根据用户id查看个人方案列表
	 */
	
	@RequestMapping(value="/findSchemeByUserId")
	public ModelAndView findSchemeByUserId(@RequestParam(value="userId") Integer userId){
			
			ModelAndView mv=new ModelAndView();
			List<Scheme> sbyidList = null;
			try {
				sbyidList = schemeService.findSchemeByUserId(userId);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//session.setAttribute("sbyidList", sbyidList);
			
			mv.addObject("sbyidList", sbyidList);
			mv.setViewName("front/myScheme");
			
			return mv;
		
	}
	
	
	
	/**
	 * 根据方案id查询
	 */
	@RequestMapping(value="/findSchemeBySchemeId")
	public ModelAndView findSchemeById(@RequestParam(value="schemeId") Integer schemeId,HttpServletRequest request,HttpSession session){
		
		ModelAndView mv = new ModelAndView();
		Scheme s = new Scheme();
		
		try {
			s = schemeService.findSchemeById(schemeId);
			session.setAttribute("s", s);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		mv.setViewName("front/updateScheme");
		return mv;
		
	}
	
	
	/**
	 * 根据方案id查询
	 */
	@RequestMapping(value="/findSchemeBySchemeIdbg")
	public ModelAndView findSchemeByIdbg(@RequestParam(value="schemeId") Integer schemeId,HttpServletRequest request,HttpSession session){
		
		ModelAndView mv = new ModelAndView();
		Scheme s = new Scheme();
		
		try {
			s = schemeService.findSchemeById(schemeId);
			session.setAttribute("s", s);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		mv.setViewName("back/bg-schemesingle");
		return mv;
		
	}
	
	
	/**
	 * 更新
	 */
	@RequestMapping(value="updateScheme")
	public ModelAndView updateScheme(Scheme scheme){
		
		Integer userId = 0;
		
		try {
			schemeService.updateScheme(scheme);
			
			userId = scheme.getUserId();
			System.out.println("--------------------");
			System.out.println(userId);
			System.out.println(scheme.getSchemeCity());
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView("redirect:/scheme/selectSchemePageByuser?userId="+userId);
		
		
	}
	
	
	/**
	 * 后台更新审核结果
	 */
	@RequestMapping(value="updateSchemeCheck")
	public ModelAndView updateSchemeCheck(Scheme scheme){
		
		Integer userId = 0;
		
		try {
			schemeService.updateSchemeCheck(scheme);
			
			//userId = scheme.getUserId();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView("redirect:/scheme/selectSchemePage");
	}
	
	
	/**
	 * 根据方案名模糊查询
	 */
	@RequestMapping(value="/findBySchemeName")
	public ModelAndView findBySchemeName(@RequestParam(value="value") String value){
		
		
		ModelAndView mv = new ModelAndView();
		List<Scheme> sList = null;
		
		try {
			sList = schemeService.findBySchemeName(value);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		mv.addObject("sList", sList);
		mv.setViewName("back/mutilbg-schemeall");
		return mv;
	}
	
	
	
	
	/**
	 * 分页查询
	 */
	@RequestMapping(value="/selectSchemePage")
	public ModelAndView selectPage(@RequestParam(value="pageIndex",defaultValue="1",required=false) Integer pageIndex){
		
		ModelAndView mv = new ModelAndView();
		
		Page<Scheme> pageu = null;
		try {
			pageu = schemeService.selectSchemeByPage(pageIndex);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.addObject("pagemsg",pageu );
		mv.setViewName("back/bg-schemeall");
		
		return mv;

	}
	
	
	
	/**
	 * 前台分页查询
	 */
	@RequestMapping(value="/selectSchemePageByuser")
	public ModelAndView selectPage(@RequestParam(value="pageIndex",defaultValue="1",required=false) Integer pageIndex,@RequestParam(value="userId") Integer userId){
		
		ModelAndView mv = new ModelAndView();
		
		Page<Scheme> pageu = null;
		try {
			pageu = schemeService.selectSchemeByPageByUser(pageIndex, userId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.addObject("pagemsg",pageu );
		mv.setViewName("front/myScheme");
		
		return mv;

	}
	
	
	/**
	 * 模糊加分页
	 */
	@RequestMapping(value="/selectSchemePageByValue")
	public ModelAndView selectSchemePageByValue(@RequestParam(value="pageIndex",defaultValue="1",required=false) Integer pageIndex,@RequestParam(value="value") String value,HttpServletRequest request,HttpSession session){
		
		ModelAndView mv = new ModelAndView();
		
		Page<Scheme> pageu = null;
		try {
			pageu = schemeService.selectSchemePageByValue(pageIndex, value);
			session.setAttribute("value", value);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.addObject("pagemsg",pageu );
		mv.setViewName("back/mutilbg-schemeall");
		
		return mv;

	}
	
	
	
	/**
	 * 主页转到提交方案页面
	 */
	@RequestMapping(value="/toAddScheme")
	public ModelAndView toAddScheme(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("front/addScheme");
		return mv;
	}
	
}
