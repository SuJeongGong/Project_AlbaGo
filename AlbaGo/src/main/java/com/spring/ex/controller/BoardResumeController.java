package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/resume")
public class BoardResumeController {
	@RequestMapping("/list")//리스트
	public String list() {
		return "/resume/list";
	}
	@RequestMapping("/write")//작성화면
	public String write() {
		return "/resume/write";
	}
	@RequestMapping("/content")//보는화면
	public String content() {
		return "/resume/content";
	}
	@RequestMapping("/update")//수정화면
	public String update() {
		return "/resume/update";
	}
}
