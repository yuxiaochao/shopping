package com.shop.controller;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.entity.RegistCodeEntity;
import com.shop.service.RegistCodeService;
import com.shop.utils.BaseController;
import com.shop.utils.CurrentPath;
import com.shop.utils.Req;
import com.shop.utils.UUIDUtil;

@Controller
@RequestMapping("/backGenerateCode")
public class BackGenerateCodeController extends BaseController{
	
	@Autowired
	private RegistCodeService registCodeService;
	
	@RequestMapping("/index")
	public String index(Model model) {
		List<RegistCodeEntity> findAll = registCodeService.findAll();
		model.addAttribute("findAll", findAll);
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/delete")
	public String delete(Req req,Model model) {
		String ids = req.getIds();
		registCodeService.deleteById(ids);
		List<RegistCodeEntity> findAll = registCodeService.findAll();
		model.addAttribute("findAll", findAll);
		return "backGenerateCode/backGenerateCode_index";
	}
	
	@RequestMapping("/insert")
	public String insert(Req req,Model model,HttpSession session) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException {
		RegistCodeEntity entity = new RegistCodeEntity();
		String uuid = UUIDUtil.getUUID();
		entity.setReco001(uuid);
		entity.setReco002(uuid);
		entity.setReco003((session.getAttribute("backUserId")).toString());
		entity.setReco005(new Date());
		registCodeService.insert(entity);
		List<RegistCodeEntity> findAll = registCodeService.findAll();
		model.addAttribute("findAll", findAll);
		return "backGenerateCode/backGenerateCode_index";
	}
}
