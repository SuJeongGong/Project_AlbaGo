package com.spring.ex.Controller;

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
	
}
