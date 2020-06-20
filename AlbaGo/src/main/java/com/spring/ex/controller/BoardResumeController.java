package com.spring.ex.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.BoardResumeDAO;
import com.spring.ex.dto.BoardResume1;
@Controller
@RequestMapping("/resume")
public class BoardResumeController {
	
	@Autowired
	BoardResumeDAO boardresumeDAO;
	
	@RequestMapping("/list")//리스트
	public String list(Model m) {
		ArrayList<BoardResume1> resumes = boardresumeDAO.selectList();
		
		m.addAttribute("resumes", resumes);
		
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
