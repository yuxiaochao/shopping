package com.shop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.entity.CartEntity;
import com.shop.service.CartService;

@Controller
public class IndexController {
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/")
    public String index(HttpSession session,Model model) {
		Object userId = session.getAttribute("userId");
		if(!(userId==null||"".equals(userId)||userId=="null")) {
			
			CartEntity entity = new CartEntity();
			String cart002=userId.toString();
			entity.setCart002(cart002);
			List<CartEntity> cartInfo = cartService.findCartInfo(entity);
			CartEntity cartTotal = cartService.findCartTotal(entity);
			CartEntity cartSpecies = cartService.findSpecies(cart002);
			model.addAttribute("cartInfo", cartInfo);
			model.addAttribute("cartTotal", cartTotal);
			model.addAttribute("cartSpecies", cartSpecies);
		}
        return "basePage/basePage_index";
    }
}
