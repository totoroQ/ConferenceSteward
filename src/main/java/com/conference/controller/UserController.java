package com.conference.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.conference.entity.Admin;
import com.conference.entity.Page;
import com.conference.entity.User;
import com.conference.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 注册
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/insert")
	public ModelAndView register(User user){
		
			ModelAndView mv = new ModelAndView();
			
			try {
				userService.insertUser(user);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			mv.setViewName("front/login");
			
			return mv;
	}
	
	/**
	 * 登陆
	 * 
	 */
	@RequestMapping(value = "/select")
	public ModelAndView login(User user,HttpServletRequest request,HttpSession session){
		
		ModelAndView mv = new ModelAndView();	
		User u = new User();	
		String type = request.getParameter("yonghu");

		if("1".equals(type)){//普通用户
	
			try {
				u = userService.login(user);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
			if(u!=null){
				//存session
				session.setAttribute("u", u);
				//mv.addObject("u", u);
				mv.setViewName("front/main");
				return mv;   //后面要改成主页的
			}else{
				mv.setViewName("front/login");
				return mv;
			}
			
		}else{
				
			//管理员
			Admin admin = new Admin();
			admin.setAdminName(request.getParameter("userName"));
			admin.setAdminPassword(request.getParameter("userPassword"));
			
			session.setAttribute("admin", admin);
			
			return new ModelAndView("redirect:/admin/select");
		}
	}
	
	/**
	 * 查询所有用户信息
	 */
	@RequestMapping(value = "/selectAll")
	public ModelAndView findAll(){
		ModelAndView mv = new ModelAndView();
		List<User> uList = null;
		try {
			uList = userService.findAll();
			//session.setAttribute("uList", uList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.addObject("uList", uList);
		mv.setViewName("back/userinfo");
		return mv;
		
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value = "/deleteById")
	public String deleteById(@RequestParam(value="userId") Integer userId){
		try {
			userService.deleteById(userId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/user/selectUserPage";
		
	}
	
	
	/**
	 * 更新(前台)
	 */
	@RequestMapping(value = "/update")
	public ModelAndView update(User user){
		ModelAndView mv = new ModelAndView();
		try {
			userService.update(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.setViewName("front/addUserSuccess");
		return mv;
	
	}
	
	
	/**
	 * 更新(后台)
	 */
	@RequestMapping(value = "/updatebg")
	public ModelAndView updatebg(User user){
		ModelAndView mv = new ModelAndView();
		try {
			userService.update(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView("redirect:/user/selectUserPage");
	
	}
	
	
	
	/**
	 * 根据id查询单个用户(前台)
	 */
	@RequestMapping(value="/findById")
	public ModelAndView findById(@RequestParam(value="userId") Integer userId){
		
		ModelAndView mv = new ModelAndView();
		User u = new User();
		
		try {
			u = userService.findById(userId);
			//session.setAttribute("u", u);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		mv.addObject("u", u);
		mv.setViewName("front/singleUser");
		return mv;
	}
	
	
	/**
	 * 根据id查询单个用户(后台)
	 */
	@RequestMapping(value="/bgfindById")
	public ModelAndView findByIdbg(@RequestParam(value="userId") Integer userId){
		
		ModelAndView mv = new ModelAndView();
		User u = new User();
		
		try {
			u = userService.findById(userId);
			//session.setAttribute("u", u);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		mv.addObject("u", u);
		mv.setViewName("back/bg-updateuserinfo");
		return mv;
	}
	
	
	
	/**
	 * 添加用户(后)
	 */
	@RequestMapping(value = "/addUser")
	public ModelAndView addUser(User user){
		
			ModelAndView mv = new ModelAndView();
			
			try {
				userService.insertUser(user);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return new ModelAndView("redirect:/user/selectUserPage");
	}
	
	
	/**
	 * 根据用户名模糊查询
	 */
	@RequestMapping(value="/findByUserName")
	public ModelAndView findByUserName(@RequestParam(value="value") String value){
		
		
		ModelAndView mv = new ModelAndView();
		List<User> uList = null;
		
		try {
			uList = userService.findByUserName(value);
			//session.setAttribute("u", u);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		mv.addObject("uList", uList);
		mv.setViewName("back/mutiluserinfo");
		return mv;
	}
	
	
	/**
	 * 分页查询
	 */
	@RequestMapping(value="/selectUserPage")
	public ModelAndView selectPage(@RequestParam(value="pageIndex",defaultValue="1",required=false) Integer pageIndex){
		
		ModelAndView mv = new ModelAndView();
		
		Page<User> pageu = null;
		try {
			pageu = userService.selectUserByPage(pageIndex);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.addObject("pagemsg",pageu );
		mv.setViewName("back/userinfo");
		
		return mv;

	}
	
	
	
	/**
	 * 条件加分页查询
	 */
	@RequestMapping(value="/selectUserPageByValue")
	public ModelAndView selectPageByValue(@RequestParam(value="pageIndex",defaultValue="1",required=false) Integer pageIndex,@RequestParam(value="value") String value,HttpServletRequest request,HttpSession session){
		
		
		ModelAndView mv = new ModelAndView();

		Page<User> pageuByV = null;
		try {
			pageuByV = userService.selectUserPageByValue(pageIndex, value);
			session.setAttribute("value", value);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.addObject("pagemsgV",pageuByV );
		mv.setViewName("back/mutiluserinfo");
		
		return mv;
	
	}
	
	
	
	
	
	
	/**
	 * 跳转注册页面
	 */
	@RequestMapping(value="/toRegister")
	public ModelAndView toRegister(){
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("front/register");
		
		return mv;
	}
	
}
