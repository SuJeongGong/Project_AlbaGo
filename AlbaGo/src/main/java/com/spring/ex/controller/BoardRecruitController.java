package com.spring.ex.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
	
	@RequestMapping("/write/save")//저장하기
	public String write_save(HttpServletRequest request,@ModelAttribute("boardrecruit") BoardRecruit boardrecruit, BindingResult result) {
		String page ="/recruit/write";
		System.out.println("왜 갑자기 말썽이니?");
		String id = request.getSession().getAttribute("id").toString();//로그인한 사람 아이디
		String type = request.getSession().getAttribute("type").toString();//로그인한 회원 타입  - 기업, 개인
		System.out.println("되나?1");
		int a = boardrecruit.getBoard_recruit_id();
		int b = boardrecruit.getRecruit_id();
		String c = boardrecruit.getTitle();
		//int d = boardrecruit.getViews();
		String e = boardrecruit.getMemo();
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		System.out.println(e);
		if(id==null) {
			page ="/join/login";
			System.out.println("되나?2");
		}
		if(type=="개인") {
			System.out.println("되나?2");
			page = "/recruit/lsit";
		}
		if(1<=boardrecruitDAO.insertBoard_recruit(boardrecruit)) {
			System.out.println("되나?2");
			page = "/main";
		}
		
		return page;
	}
	
	@RequestMapping("/write") //
	public String write(HttpServletRequest request) {
		String id = request.getSession().getAttribute("id").toString();//로그인한 사람 아이디
		String type = request.getSession().getAttribute("type").toString();//로그인한 회원 타입  - 기업, 개인
		System.out.println(id);
		System.out.println(type);
		System.out.println("잘되라");
		return "/recruit/write";
	}
	
	
	@RequestMapping("/content")//보는화면
	public String content(Model m,HttpServletRequest request) {
		//디비처리 select로 글 내용 가져오기
		// update로 조회수
		
		System.out.println(request.getParameter("board_recruit_id").toString());
		String board_recruit_id = request.getParameter("board_recruit_id").toString();
		
		System.out.println("되나?1");
		
		m.addAttribute("board_content", boardrecruitDAO.selectView(board_recruit_id));//여기 속성이름 지정하는거랑 jsp에서 가져오는거랑 달라서 그랬어
		return "/recruit/content";
	}
	@RequestMapping("/update")//수정화면
	public String update() {
		return "/recruit/update";
	}
//	
//	@RequestMapping("/delete")
//	public String delete(Model)
}
