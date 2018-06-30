package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.utils.CurrentPath;

@Controller
@RequestMapping("/payment")
public class PaymentController {

	@RequestMapping("/index")
	public String index() {
		return CurrentPath.getCURRENTPATH();
	}
	
}
