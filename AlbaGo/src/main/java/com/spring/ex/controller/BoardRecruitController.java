package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/recruit")
public class BoardRecruitController {
	@RequestMapping("/list")//리스트
	public String list() {
		return "/recruit/list";
	}
	@RequestMapping("/write")//작성화면
	public String write() {
		return "/recruit/write";
	}
	@RequestMapping("/content")//보는화면
	public String content() {
		return "/recruit/content";
	}
	@RequestMapping("/update")//수정화면
	public String update() {
		return "/recruit/update";
	}
}
