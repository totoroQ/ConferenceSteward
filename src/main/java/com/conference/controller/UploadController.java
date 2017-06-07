package com.conference.controller;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value="/upload")
public class UploadController {

	@RequestMapping(value="/uploadPic")
		public void uploadPic(@RequestParam MultipartFile myfile,HttpServletRequest request,Writer out) throws IOException  
		    {  
		      //如果只是上传一个文件，则只需要MultipartFile类型接收文件即可，而且无需显式指定@RequestParam注解   
		        //如果想上传多个文件，那么这里就要用MultipartFile[]类型来接收文件，并且还要指定@RequestParam注解   
		        //并且上传多个文件时，前台表单中的所有<input type="file"/>的name都应该是myfiles，否则参数里的myfiles无法获取到所有上传的文件   
		        if(myfile.isEmpty()){   
		                System.out.println("文件未上传");   
		        }else{   
		                System.out.println("文件长度: " + myfile.getSize());   
		                System.out.println("文件类型: " + myfile.getContentType());   
		                System.out.println("文件名称: " + myfile.getName());   
		                System.out.println("文件原名: " + myfile.getOriginalFilename());   
		                System.out.println("========================================");   
		                String fileName=new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
		        		Random ram=new Random();
		        		for(int i=0;i<3;i++){
		        			fileName = fileName + ram.nextInt(10);
		        		}
		        		String oriFileName=myfile.getOriginalFilename();
		        		//获得文件的后缀
		        		String suffix=oriFileName.substring(oriFileName.lastIndexOf("."));
		        		//获得上传文件的绝对路径
		        		String path = request.getServletContext().getRealPath("/upload");   
		        		String  pa = request.getSession().getServletContext().getRealPath("/upload");
		        		
		        		System.out.println(path);fileName+=suffix;  
		                //这里不必处理IO流关闭的问题，因为FileUtils.copyInputStreamToFile()方法内部会自动把用到的IO流关掉，我是看它的源码才知道的   
		                FileUtils.copyInputStreamToFile(myfile.getInputStream(), new File(path,fileName));  
		        		out.write(fileName);
		            }   

		    }  
}
