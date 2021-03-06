package com.shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.utils.BaseController;
import com.shop.utils.CurrentPath;
import com.shop.utils.ReturnMsg;

@Controller
@RequestMapping("/basePage")
public class BasePageController extends BaseController{

	
	@RequestMapping("/showIndex")
	public String showIndex() {
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/logout")
	@ResponseBody
	public ReturnMsg logout(HttpSession session) {
		ReturnMsg msg = new ReturnMsg(FAIL);
		session.removeAttribute("username");
		session.removeAttribute("userId");
		msg.setStatus(SUCCESS);
		return msg;
	}
}



