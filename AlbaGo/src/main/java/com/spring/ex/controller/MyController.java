package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	@RequestMapping("/main")
	public String main() {
		return "/main";
	}
	@RequestMapping("/test")
	public String test() {
		return "/test";
	}
	
	@RequestMapping("/Board_recruit")
	public String Board_recruit() {
		return "/Board_recruit";
	}
	
	@RequestMapping("/Account_Individual")
	public String Account_Individual() {
		return "/Account_Individual";
	}
	
	@RequestMapping("/Human_resource_info")
	public String Human_resource_info() {
		return "/Human_resource_info";
	}
	
	@RequestMapping("/find_id")
	public String find_id() {
		return "/find_id";
	}
	
}
