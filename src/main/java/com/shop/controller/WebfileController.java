package com.shop.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.shop.utils.BaseController;
import com.shop.utils.Req;
import com.shop.utils.ReturnMsg;
import com.shop.utils.UUIDUtil;

@Controller
@RequestMapping("/webfile")
public class WebfileController extends BaseController{

	@RequestMapping("/fileUpload")
	@ResponseBody
	public ReturnMsg fileUpload(Req req,@RequestParam MultipartFile[] myfiles,HttpServletRequest request, HttpServletResponse response) {
		ReturnMsg msg = new ReturnMsg(FAIL);
		//这里实现文件上传操作用的是commons.io.FileUtils类,它会自动判断/upload是否存在,不存在会自动创建  
        //String realPath = request.getSession().getServletContext().getRealPath("/upload");
		String imgType = req.getImgType();
        String realPath = "D:/WebFiles/"+imgType;
        //上传文件的原名(即上传前的文件名字)  
        String originalFilename = null;  
        //如果只是上传一个文件,则只需要MultipartFile类型接收文件即可,而且无需显式指定@RequestParam注解  
        //如果想上传多个文件,那么这里就要用MultipartFile[]类型来接收文件,并且要指定@RequestParam注解  
        //上传多个文件时,前台表单中的所有<input type="file"/>的name都应该是myfiles,否则参数里的myfiles无法获取到所有上传的文件  
        for(MultipartFile myfile : myfiles){  
            if(myfile.isEmpty()){  
            	//msg.setMsg("请选择文件后上传");
            	msg.setStatus(SUCCESS);
                return msg;
            }else{  
                originalFilename = myfile.getOriginalFilename();  
                System.out.println("文件原名: " + originalFilename);  
                System.out.println("文件名称: " + myfile.getName());  
                System.out.println("文件大小: " + myfile.getSize());  
                System.out.println("文件类型: " + myfile.getContentType());  
                System.out.println("========================================");  
                try {  
                    //这里不必处理IO流关闭的问题,因为FileUtils.copyInputStreamToFile()方法内部会自动把用到的IO流关掉  
                    //此处也可以使用Spring提供的MultipartFile.transferTo(File dest)方法实现文件的上传
                	String[] split = originalFilename.split("\\.");
                	String newfile = UUIDUtil.getUUID()+"."+split[1];
                	msg.setSpare(newfile);
                    FileUtils.copyInputStreamToFile(myfile.getInputStream(), new File(realPath, newfile));  
                } catch (IOException e) {  
                    System.out.println("文件[" + originalFilename + "]上传失败,堆栈轨迹如下");  
                    e.printStackTrace();
                    msg.setMsg("文件上传失败，请重试！！");
                    return msg;
                }  
            }  
        }  
        System.out.println(request.getContextPath() + "/WebFiles/" + originalFilename);
        msg.setStatus(SUCCESS);
		return msg;
	}
}
