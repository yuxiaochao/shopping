package com.shop.controller;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.UserEntity;
import com.shop.service.UserService;
import com.shop.utils.BaseController;
import com.shop.utils.CurrentPath;
import com.shop.utils.MD5Utils;
import com.shop.utils.Req;
import com.shop.utils.ReturnMsg;
import com.shop.utils.UUIDUtil;


@Controller
@RequestMapping("/loginAndRegist")
public class LoginAndRegistController extends BaseController<UserEntity>{
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/index")
	public String index() {
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public ReturnMsg login(Req req,HttpSession session) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException {
		ReturnMsg msg = new ReturnMsg(FAIL);
		UserEntity entity = new UserEntity();
		String nameLogin = req.getString("nameLogin");
		String passwordLogin = req.getString("passwordLogin");
		String pwd = MD5Utils.getPwd(passwordLogin);//密码进行MD5加密
		entity.setUser002(nameLogin);//设置用户名的值
		entity.setUser003(pwd);//设置用户的密码
		UserEntity returnMsg = userService.findByEntity(entity);
		if(returnMsg!=null) {
			session.setAttribute("username", nameLogin);
			session.setAttribute("userId", returnMsg.getUser001());
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
	
	@RequestMapping("/register")
	@ResponseBody
	public ReturnMsg register(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException {
		ReturnMsg msg = new ReturnMsg(FAIL);
		UserEntity entity = new UserEntity();
		String nameRegister = req.getString("nameRegister");
		String passwordRegister = req.getString("passwordRegister");
		String phoneRegister = req.getString("phoneRegister");
		entity.setUser002(nameRegister);
		UserEntity returnMsg = userService.findByEntity(entity);
		if(returnMsg==null) {
			Date date=new Date();
			entity.setUser001(UUIDUtil.getUUID());
			String pwd = MD5Utils.getPwd(passwordRegister);
			entity.setUser003(pwd);
			entity.setUser004(phoneRegister);
			entity.setUser007(date);
			entity.setUser008(date);
			String insert = userService.insert(entity);//插入对象
			if(insert=="SUCCESS") {
				msg.setStatus(SUCCESS);
			}
		}
		return msg;
	}
}
