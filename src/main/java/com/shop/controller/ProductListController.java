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

import com.github.pagehelper.Page;
import com.shop.entity.CartEntity;
import com.shop.entity.ProductEntity;
import com.shop.page.PageInfo;
import com.shop.service.CartService;
import com.shop.service.ProductService;
import com.shop.utils.BaseController;
import com.shop.utils.CurrentPath;
import com.shop.utils.Req;
import com.shop.utils.ReturnMsg;
import com.shop.utils.UUIDUtil;


@Controller
@RequestMapping("/productList")
public class ProductListController extends BaseController<ProductEntity>{
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/index")
	public String index(Req req,Model model) {
		Page<ProductEntity> findByPage = productService.findByPage(1, 9);
		PageInfo<ProductEntity> pageInfo = new PageInfo<>(findByPage);
		model.addAttribute("pages",pageInfo.getPages());
		model.addAttribute("total",pageInfo.getTotal());
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/showPage")
	public String showPage(Req req,Model model) {
		Integer pageNum = req.getDouble("pageNum").intValue();
		int nowpage =9;
		Page<ProductEntity> findByPage = productService.findByPage(pageNum, nowpage);
		PageInfo<ProductEntity> pageInfo = new PageInfo<>(findByPage);
		List<ProductEntity> prodEntitylist = pageInfo.getList();
		model.addAttribute("pages",pageInfo.getPages());
		model.addAttribute("total",pageInfo.getTotal());
		model.addAttribute("prodEntitylist", prodEntitylist);
		model.addAttribute("nowpage", nowpage+"");
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/addCart")
	@ResponseBody
	public ReturnMsg addCart(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException {
		ReturnMsg msg = new ReturnMsg(FAIL);
		String returnMsg=null;
		String ids = req.getIds();
		String userId = req.getString("userId");
		CartEntity entity = new CartEntity();
		entity.setCart002(userId);
		entity.setCart003(ids);
		CartEntity findByEntity = cartService.findByEntity(entity);
		if(findByEntity!=null) {//判断该商品是否存在当前用户的购物车当中
			entity.setCart001(findByEntity.getCart001());
			entity.setCart004(findByEntity.getCart004()+1);
			entity.setCart005(new Date());
			returnMsg = cartService.update(entity);
		}else {
			entity.setCart001(UUIDUtil.getUUID());
			entity.setCart004(1);
			entity.setCart005(new Date());
			returnMsg = cartService.insert(entity);
		}
		if(returnMsg=="SUCCESS") {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
	
	
}
