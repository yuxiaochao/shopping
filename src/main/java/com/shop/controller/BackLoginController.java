package com.shop.controller;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.BackUserEntity;
import com.shop.entity.RegistCodeEntity;
import com.shop.service.BackUserService;
import com.shop.service.RegistCodeService;
import com.shop.utils.BaseController;
import com.shop.utils.CurrentPath;
import com.shop.utils.Req;
import com.shop.utils.ReturnMsg;
import com.shop.utils.UUIDUtil;

@Controller
@RequestMapping("/backLogin")
public class BackLoginController extends BaseController{

	@Autowired
	private BackUserService backUserService;
	
	@Autowired
	private RegistCodeService registCodeService;
	
	@RequestMapping("/index")
	public String index() {
		return CurrentPath.getCURRENTPATH();
	}
	@RequestMapping("/login")
	@ResponseBody
	public ReturnMsg login(Req req,HttpSession session){
		ReturnMsg msg = new ReturnMsg(FAIL);
		BackUserEntity entity = new BackUserEntity();
		String username = req.getString("username");
		String password = req.getString("password");
		entity.setBaus002(username);
		entity.setBaus003(password);
		BackUserEntity returnMsg = backUserService.findByEntity(entity);
		if(returnMsg!=null) {
			session.setAttribute("backUsername", username);
			session.setAttribute("backUserId", returnMsg.getBaus001());
			msg.setStatus(SUCCESS);
			msg.setEntityId(username);
		}
		return msg;
	}
	
	@RequestMapping("/regist")
	@ResponseBody
	public ReturnMsg register(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException {
		ReturnMsg msg = new ReturnMsg(FAIL);
		BackUserEntity entity = new BackUserEntity();
		String username = req.getString("username");
		String password = req.getString("password");
		String registCode = req.getString("registCode");
		entity.setBaus002(username);
		BackUserEntity returnMsg = backUserService.findByEntity(entity);
		RegistCodeEntity registCodeEntity = new RegistCodeEntity();
		registCodeEntity.setReco002(registCode);
		RegistCodeEntity findRegistCodeEntity = registCodeService.findByEntity(registCodeEntity);
		if(returnMsg!=null) {//用户名已被注册
			msg.setMsg("用户名已被注册");
			return msg;
		}
		if(findRegistCodeEntity==null) {//注册码不可用
			msg.setMsg("此注册码不存在");
			return msg;
		}else {
			registCodeEntity.setReco004(new Date());
			RegistCodeEntity codeEntity = registCodeService.findByEntity(registCodeEntity);
			if(codeEntity==null) {//注册码已过期
				msg.setMsg("注册码已过期");
				return msg;
			}
			//删除此注册码
			registCodeService.deleteById(findRegistCodeEntity.getReco001());
			entity.setBaus001(UUIDUtil.getUUID());
			entity.setBaus003(password);
			entity.setBaus004(new Date());
			String insert = backUserService.insert(entity);
			if(insert=="SUCCESS") {
				msg.setStatus(SUCCESS);
			}
		}
		return msg;
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
