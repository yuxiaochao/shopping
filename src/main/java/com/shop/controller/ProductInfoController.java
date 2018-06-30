package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.entity.ProductEntity;
import com.shop.service.ProductService;
import com.shop.utils.CurrentPath;
import com.shop.utils.Req;

@Controller
@RequestMapping("/productInfo")
public class ProductInfoController{

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/index")
	public String index(Req req,Model model) {
		String ids = req.getIds();
		ProductEntity findById = productService.findById(ids);
		model.addAttribute("findById", findById);
		return CurrentPath.getCURRENTPATH();
	}
}
