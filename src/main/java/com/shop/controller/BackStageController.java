package com.shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.utils.BaseController;
import com.shop.utils.CurrentPath;
import com.shop.utils.ReturnMsg;

@Controller
@RequestMapping("/backStage")
public class BackStageController extends BaseController{

	@RequestMapping("/index")
	public String index() {
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/dashboard")
	public String dashboard() {
		return CurrentPath.getCURRENTPATH();
	}
	@RequestMapping("/logout")
	@ResponseBody
	public ReturnMsg logout(HttpSession session) {
		ReturnMsg msg = new ReturnMsg(FAIL);
		session.removeAttribute("backUsername");
		session.removeAttribute("backUserId");
		msg.setStatus(SUCCESS);
		return msg;
	}
}
