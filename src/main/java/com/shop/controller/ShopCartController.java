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
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.CartEntity;
import com.shop.entity.ProductEntity;
import com.shop.service.CartService;
import com.shop.service.ProductService;
import com.shop.utils.BaseController;
import com.shop.utils.CurrentPath;
import com.shop.utils.Req;
import com.shop.utils.ReturnMsg;


@Controller
@RequestMapping("/shopCart")
public class ShopCartController extends BaseController<CartEntity>{
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/index")
	public String index(Model model,HttpSession session) {
		Object userId = session.getAttribute("userId");
		CartEntity entity = new CartEntity();
		String cart002=userId.toString();
		entity.setCart002(cart002);//设置用户ID
		List<CartEntity> cartInfo = cartService.findCartInfo(entity);
		CartEntity cartTotal = cartService.findCartTotal(entity);
		model.addAttribute("cartInfo", cartInfo);//把信息返回到前台
		model.addAttribute("cartTotal", cartTotal);
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/btnUp")
	@ResponseBody
	public ReturnMsg btnUp(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException {
		ReturnMsg msg = new ReturnMsg(FAIL);
		String ids = req.getIds();//购物车id
		int number = req.getDouble("number").intValue();//当前商品数量
		CartEntity cartEntity = cartService.findById(ids);//查询到此购物车内的商品id
		ProductEntity productEntity = productService.findById(cartEntity.getCart003());
		if(productEntity.getProd011()<number) {//如果库存小于当前数量则返回msg=FAIL
			return msg;
		}
		//如果库存大于当前数量则继续更新购物车
		cartEntity.setCart004(number);
		cartEntity.setCart005(new Date());
		String update = cartService.update(cartEntity);
		if("SUCCESS".equals(update)) {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
	
	@RequestMapping("/btnDown")
	@ResponseBody
	public ReturnMsg btnDown(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException {
		ReturnMsg msg = new ReturnMsg(FAIL);
		String ids = req.getIds();//购物车id
		int number = req.getDouble("number").intValue();//当前商品数量
		CartEntity cartEntity = cartService.findById(ids);//查询到此购物车内的商品id
		//如果库存大于当前数量则继续更新购物车
		cartEntity.setCart004(number);
		cartEntity.setCart005(new Date());
		String update = cartService.update(cartEntity);
		if("SUCCESS".equals(update)) {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
	
	@RequestMapping("/deleteCart")
	@ResponseBody
	public ReturnMsg deleteCart(Req req) {
		ReturnMsg msg = new ReturnMsg(FAIL);
		String ids = req.getIds();//购物车id
		String deleteById = cartService.deleteById(ids);
		if("SUCCESS".equals(deleteById)) {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
	
	
}
