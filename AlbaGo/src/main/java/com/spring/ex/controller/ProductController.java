package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

	@RequestMapping("payment")//결게화면
	public String payment() {
		return "/product/payment";
	}
	@RequestMapping("/list")
	public String list() {
		return "/product/list";
	}
	@RequestMapping("/result")
	public String result() {
		return "/product/result";
	}
}
