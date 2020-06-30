package com.spring.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.services.MainService;

@Controller
@RequestMapping("/")
public class MainController {
	
	@Autowired
	MainService mainService;
	@RequestMapping("main")
	public String main(Model m) {
		m.addAttribute("Advertising",mainService.selectAdvertising());
		m.addAttribute("product",mainService.selectProduct());
		m.addAttribute("community",mainService.selectCommunity());
		return "/main";
	}
	@RequestMapping("landing")
	public String landing() {
		return "/landing";
	}

	
}
