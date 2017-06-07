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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.conference.entity.Pack;
import com.conference.entity.Page;
import com.conference.entity.Scheme;
import com.conference.entity.Space;
import com.conference.service.PackService;




@Controller
@RequestMapping(value="/pack")
public class PackController {

	@Autowired
	private PackService packService;
	
	/**
     * 用户信息列表
     * @return
     * 如果采用JSON传值，那么需要注释掉下方方法中的代码
     * List<User> userList = userService.findAll();
     * mv.addObject("userList", userList);
     * 直接返回一个空视图名称
     * 页面异步加载数据，请查看下方注释方法
     */
	@RequestMapping(value = "/packList")
	public ModelAndView packLists(){
		List<Pack> packList = packService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("packList", packList);
		mv.setViewName("back/packList");
		
		return mv;
	}
	
	
	/**
	 * 分页查询
	 *//*
	@RequestMapping(value="/selectPackPage")
	public ModelAndView selectPage(@RequestParam(value="pageIndex",defaultValue="1",required=false) Integer pageIndex){
		
		ModelAndView mv = new ModelAndView();
		
		Page<Pack> pack = null;
		try {
			pack = packService.selectPackByPage(pageIndex);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.addObject("pack",pack );
		mv.setViewName("back/packList");
		
		return mv;

	}*/
	
	/**
     * 用户信息列表   页面异步加载
     * @return
     * @ResponseBody 注解的作用是将目标类型数据转换成json格式
     * 另外页面需要加入jquery js
     */
	/*@RequestMapping(value = "/list")
	public @ResponseBody List<User> list(){
		List<User> userList = userService.findAll();
		return userList;
	}
	*/
	
	/**
     * 跳转到添加信息视图
     * @return
     */
	

	
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/addPack");
		return mv;
	}
	/**
     * 添加信息
     * @param package
     * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
     */
	/*@RequestMapping(value = "/addPack",method = RequestMethod.POST)
	public String addPack(Pack pack){
		packService.addPack(pack);
		return "redirect:/pack/packList";
	}*/
	
	@RequestMapping(value = "/addPack",method = RequestMethod.POST)
	public String addPack(Pack pack,MultipartFile pack_pic) throws Exception{
		
				//接收会议套餐图片,这个名字要和页面上的文件名要求一致 
				// 原始名称图片
				String originalFilename = pack_pic.getOriginalFilename();
				// 上传图片
				if (pack_pic!= null && originalFilename != null && originalFilename.length() > 0) {

					// 存储图片的物理路径
					
					String pic_path = "D:\\software\\Myeclipseworkspace\\ConferenceSteward\\src\\main\\webapp\\img\\";

					// 新的图片名称
					String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
					// 新图片
					File newFile = new File(pic_path + originalFilename);

					// 将内存中的数据写入磁盘
					pack_pic.transferTo(newFile);

					// 将新图片名称写到中
					pack.setPackPicture(originalFilename);
				}
				packService.addPack(pack);
		return "redirect:/pack/packList";
	}
	
	
	@RequestMapping(value = "/selectByPackName",method = RequestMethod.POST)
	public ModelAndView selectByPackName(@RequestParam(value = "packName") String packName){
		
		/*System.out.println(packService.findByID(id));*/
		Pack pack = packService.selectByPackName(packName);
		ModelAndView mv = new ModelAndView();
		mv.addObject("pack",pack);
		mv.setViewName("back/packList");
		return mv;
	}
	/**
     * 修改信息
     * @param user
     * @return
     */
	/*@RequestMapping(value = "/editPack",method = RequestMethod.POST)
	public ModelAndView editPack(@RequestParam(value = "id") Integer id){
		Pack pack = packService.findByID(id);
		ModelAndView mv = new ModelAndView();
		packService.updateByPrimaryKey(pack);
		mv.addObject("pack", pack);
		mv.setViewName("back/packList");
		return mv;
	}*/
	
/*	*//**
     * 会议套餐信息列表   页面异步加载
     * @return
     * @ResponseBody 注解的作用是将目标类型数据转换成json格式
     * 另外页面需要加入jquery js
     *//*
	@RequestMapping(value = "/list")
	public @ResponseBody List<Pack> list(){
		List<Pack> packList = packService.findAll();
		return packList;
	}*/
	
	/**
     * 修改信息获取，跳转到修改信息视图
     * @param id
     * @return
     */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "id") Integer id){
		
		/*System.out.println(packService.findByID(id));*/
		Pack pack = packService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("pack",pack);
		return mv;
	}
	
	@RequestMapping(value = "/editPack",method = RequestMethod.POST)
	public String edit(Pack pack){
		packService.updateByPrimaryKey(pack);
		return "redirect:/pack/packList";
	}

     /**
      * 删除用户
     * @param id
     * @return
      */

	@RequestMapping(value = "/delete")
	 public String  delete(@RequestParam(value = "id") Integer id){
		packService.deleteByPrimaryKey(id);
		return "redirect:/pack/packList";
	}
	
	/*@RequestMapping(value = "/main")
	public ModelAndView main(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("back/main");
		return mv;
	}*/
	
	/*
	 * ------------------------------------------前端-------------------------------------
	 */
	
	@RequestMapping(value = "/showPackList")
	public ModelAndView showPackList(){
		List<Pack> packList = packService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("packList", packList);
		mv.setViewName("front/huiyitaocansousuo");
		
		return mv;
	}
	
	@RequestMapping(value="/detailPack")
	public ModelAndView detailPack(@RequestParam(value = "packId") Integer packId){
		Pack pack=packService.selectByPrimaryKey(packId);
		ModelAndView mv=new ModelAndView();
		mv.addObject("pack",pack);
		mv.setViewName("front/detailPack");
		return mv;
	} 
	
	
	/**
	 * 新增套餐订单
	 */
	@RequestMapping(value="/insertPackOrder")
	public ModelAndView insertPackOrder(Pack pack){
		ModelAndView mv = new ModelAndView();
		try {
			packService.addPack(pack);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.setViewName("front/addPackOrderSuccess");
		
		return mv;  //后面要改成查看所有
		
		
	}
}
