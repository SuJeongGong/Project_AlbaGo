package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community")
public class BoardCommunityController {
	@RequestMapping("/list")//리스트
	public String list() {
		return "/community/list";
	}
	@RequestMapping("/write")//작성
	public String write() {
		return "/community/write";
	}
	@RequestMapping("/update")//수정
	public String update() {
		return "/community/update";
	}
	@RequestMapping("/content")//읽기
	public String content() {
		return "/community/content";
	}
}
