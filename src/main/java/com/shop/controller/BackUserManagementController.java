package com.shop.controller;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.BackUserEntity;
import com.shop.entity.UserEntity;
import com.shop.service.BackUserService;
import com.shop.service.UserService;
import com.shop.utils.BaseController;
import com.shop.utils.CurrentPath;
import com.shop.utils.Req;
import com.shop.utils.ReturnMsg;
import com.shop.utils.UUIDUtil;

@Controller
@RequestMapping("/backUserManagement")
public class BackUserManagementController extends BaseController{

	@Autowired
	private UserService userService;
	
	@Autowired
	private BackUserService backUserService;
	
	@RequestMapping("/index")
	public String index(Model model) {
		List<UserEntity> userFindAll = userService.findAll();
		List<BackUserEntity> backUserFindAll= backUserService.findAll();
		model.addAttribute("userFindAll", userFindAll);//前台返回值
		model.addAttribute("backUserFindAll", backUserFindAll);
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/delete")
	public String delete(Req req,Model model) {
		String ids = req.getIds();
		String deleteById = userService.deleteById(ids);
		List<UserEntity> userFindAll = userService.findAll();
		List<BackUserEntity> backUserFindAll= backUserService.findAll();
		model.addAttribute("userFindAll", userFindAll);
		model.addAttribute("backUserFindAll", backUserFindAll);
		return "backUserManagement/backUserManagement_index";
	}
	
	@RequestMapping("/update")
	public String update(Req req,Model model) {
		String ids = req.getIds();
		UserEntity findById = userService.findById(ids);
		model.addAttribute("findById", findById);
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/insert")
	public String insert(Req req,Model model) {
		return CurrentPath.getCURRENTPATH();
	}
	@RequestMapping("/toUpdate")
	@ResponseBody
	public ReturnMsg toUpdate(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException{
		ReturnMsg msg = new ReturnMsg(FAIL);
		String ids = req.getIds();
		UserEntity findById = userService.findById(ids);
		if(findById==null){
			return msg;
		}
		findById.setUser002(req.getString("user002"));
		findById.setUser003(req.getString("user003"));

		String update = userService.update(findById);
		if("SUCCESS".equals(update)) {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
	
	@RequestMapping("/toInsert")
	@ResponseBody
	public ReturnMsg toInsert(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException{
		ReturnMsg msg = new ReturnMsg(FAIL);
		UserEntity userEntity = new UserEntity();
		userEntity.setUser001(UUIDUtil.getUUID());
		userEntity.setUser002(req.getString("user002"));
		userEntity.setUser003(req.getString("user003"));
		userEntity.setUser007(new Date());
		userEntity.setUser008(new Date());
		String insert = userService.insert(userEntity);
		if("SUCCESS".equals(insert)) {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
	
	@RequestMapping("/backDelete")
	public String backDelete(Req req,Model model) {
		String ids = req.getIds();
		String deleteById = backUserService.deleteById(ids);
		List<UserEntity> userFindAll = userService.findAll();
		List<BackUserEntity> backUserFindAll= backUserService.findAll();
		model.addAttribute("userFindAll", userFindAll);
		model.addAttribute("backUserFindAll", backUserFindAll);
		return "backUserManagement/backUserManagement_index";
	}
	
	@RequestMapping("/backUpdate")
	public String backUpdate(Req req,Model model) {
		String ids = req.getIds();
		BackUserEntity findById = backUserService.findById(ids);
		model.addAttribute("findById", findById);
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/backInsert")
	public String backInsert(Req req,Model model) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException {
		return CurrentPath.getCURRENTPATH();
	}
	@RequestMapping("/toBackUpdate")
	@ResponseBody
	public ReturnMsg toBackUpdate(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException{
		ReturnMsg msg = new ReturnMsg(FAIL);
		String ids = req.getIds();
		BackUserEntity findById = backUserService.findById(ids);
		if(findById==null){
			return msg;
		}
		findById.setBaus002(req.getString("baus002"));
		findById.setBaus003(req.getString("baus003"));

		String update = backUserService.update(findById);
		if("SUCCESS".equals(update)) {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
	
	@RequestMapping("/toBackInsert")
	@ResponseBody
	public ReturnMsg toBackInsert(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException{
		ReturnMsg msg = new ReturnMsg(FAIL);
		BackUserEntity userEntity = new BackUserEntity();
		userEntity.setBaus001(UUIDUtil.getUUID());
		userEntity.setBaus002(req.getString("baus002"));
		userEntity.setBaus003(req.getString("baus003"));
		userEntity.setBaus004(new Date());
		String insert = backUserService.insert(userEntity);
		if("SUCCESS".equals(insert)) {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
}
