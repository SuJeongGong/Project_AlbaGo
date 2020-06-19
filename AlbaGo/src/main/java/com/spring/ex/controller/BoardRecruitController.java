package com.spring.ex.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.BoardRecruitDAO;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardRecruit1;

@Controller
@RequestMapping("/recruit")
public class BoardRecruitController {
	
	@Autowired
	BoardRecruitDAO boardrecruitDAO;
	
	
	@RequestMapping("/list")//리스트
	public String list(Model m) {
		ArrayList<BoardRecruit1> recruits = boardrecruitDAO.selectList();
		
		m.addAttribute("recruits", recruits);
		
		return "/recruit/list";
	}
	@RequestMapping("/write")//작성화면
	public String write() {
		return "/recruit/write";
	}
	
//	@RequestMapping("/write/list")
//	public String list(@ModelAttribute("boardrecruit") BoardRecruit boardrecruit, BindingResult result) {
//		String page = "/recruit/write";
//		System.out.println("되냐?1");
//	}
	
	@RequestMapping("/content")//보는화면
	public String content() {
		return "/recruit/content";
	}
	@RequestMapping("/update")//수정화면
	public String update() {
		return "/recruit/update";
	}
}
