package com.spring.ex.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.BoardResumeDAO;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.services.BoardResumeService;
@Controller
@RequestMapping("/resume")
public class BoardResumeController {
	
	@Autowired
	BoardResumeService boardResumeService;
	
	@RequestMapping("/list")//리스트
	public String list(Model m) {
		ArrayList<BoardResume> resumes = boardResumeService.selectList();
		
		m.addAttribute("resumes", resumes);
		
		return "/resume/list";
	}
	
	@RequestMapping("/write/save") //저장하기
	public String write_save(HttpServletRequest request, @ModelAttribute("boardresume") BoardResume boardresume, BindingResult result) {
		String page = "/resume/write";
		System.out.println("말썽좀 피우지마 제발 ㅡㅡ");
		String id = request.getSession().getAttribute("id").toString();//로그인한 사람 아이디
		String type = request.getSession().getAttribute("type").toString();//로그인한 회원 타입  - 기업, 개인 
		System.out.println("되야만 한다.");
		
		int a = boardresume.getBoard_resume_id();
		int b = boardresume.getResume_id();
		String c = boardresume.getTitle();
		String d = boardresume.getMemo();
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
		
		if(id==null) {
			page ="/join/login";
			System.out.println("되라");
		}
		if(type=="개인") {
			System.out.println("되라1");
			page = "/recruit/lsit";
		}
		if(1<=boardResumeService.insertBoard_resume(boardresume)) {
			System.out.println("되라2");
			page = "/main";
		}
		
		return page;
	}
	
	
	@RequestMapping("/write")//작성화면
	public String write(HttpServletRequest request) {
		String id = request.getSession().getAttribute("id").toString(); //로그인한 사람
		String type = request.getSession().getAttribute("type").toString(); //로그인한 회원 타입 - 기업, 개인
		System.out.println(id);
		System.out.println(type);
		System.out.println("잘되라");
		return "/resume/write";
	}
	
	
	@RequestMapping("/content")//보는화면
	public String content(Model m, HttpServletRequest request) {
		String board_resume_id = request.getParameter("board_resume_id").toString();
		
		System.out.println("될꺼야");
		
		m.addAttribute("board_content", boardResumeService.selectView(board_resume_id));
		return "/resume/content";
	}
	
	
	@RequestMapping("/update")//수정화면
	public String update() {
		return "/resume/update";
	}
}
