package com.spring.ex.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.dao.BoardResumeDAO;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Career;
import com.spring.ex.dto.Resume;
import com.spring.ex.services.BoardResumeService;
import com.spring.ex.services.IndividualService;
import com.spring.ex.services.ResumeService;
@Controller
@RequestMapping("/resume")
public class BoardResumeController {
	
	@Autowired
	BoardResumeService boardResumeService;
	@Autowired
	ResumeService resumeService;
	@Autowired
	IndividualService individualService;
	
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
		//String c = boardresume.getTitle();
		String d = boardresume.getMemo();
		System.out.println(a);
		System.out.println(b);
		//System.out.println(c);
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
	public String write(HttpServletRequest request, Model m) {
		String id = request.getSession().getAttribute("id").toString(); //로그인한 사람
		String type = request.getSession().getAttribute("type").toString(); //로그인한 회원 타입 - 기업, 개인
		
		ArrayList<BoardResume> resumes = resumeService.selectResume(id);
		System.out.println(id);
		System.out.println(type);
		System.out.println("잘되라");
		
		m.addAttribute("resume", resumes);
		
		return "/resume/write";
	}
	
	
	@RequestMapping("/content")//보는화면
	public String content(Model m, HttpServletRequest request) {
		
		
		System.out.println(request.getParameter("board_resume_id").toString());
		int board_resume_id = Integer.parseInt(request.getParameter("board_resume_id").toString());
		
		
		System.out.println("될꺼야");
		
		BoardResume board_content = boardResumeService.selectView(board_resume_id);
		board_content.setBoard_resume_id(board_resume_id);
		ArrayList<Career> careers = boardResumeService.selectCareers(board_resume_id);
		m.addAttribute("board_content", board_content);
		m.addAttribute("careers", careers);
		
		return "/resume/content";
	}
	
	@RequestMapping("content/write_update") //수정화면에 수정 버튼 누르면
	public String contentUpdate(HttpServletRequest request, @ModelAttribute("boardresume") BoardResume boardresume) {
		String page = "/resume/write_update"; //안되면
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("개인")) { //개인회원이 맞는지
			return "/resume/list";
		} else {
			System.out.println(boardresume);
			
			if(boardResumeService.updateBoard(boardresume) >= 1) {
				System.out.println("DB연결 성공");
				page = "/main";
			} else {
				System.out.println("DB연결 실패");
			}
		}
		return page;
	}
	
	
	@RequestMapping("/write_update")//수정화면보기
	public String update(HttpServletRequest request, Model m) {
		String page="/resume/list";
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("개인")) { //개인인지 확인
			return "/resume/list";
		} else {
			String id = session.getAttribute("id").toString(); //로그인 된 아이디
			int board_resume_id = Integer.parseInt(request.getParameter("board_resume_id")); //파라미터로 들어온 값, 글번호
			
			ArrayList<BoardResume> resumes = resumeService.selectResume(id); //인재 글쓴 값
			m.addAttribute("resume", resumes);
			
			BoardResume boardresume = boardResumeService.selectView(board_resume_id);
			boardresume.setBoard_resume_id(board_resume_id);
			System.out.println("수정화면 보여주는 컨트롤러" + boardresume);
			m.addAttribute("board_content", boardresume);
			page = "/resume/write_update";
		}
		return page;
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int board_resume_id) {
		String page = "/resume/content";
		System.out.println(board_resume_id); //jsp에서 가져온 값
		if(1 <= boardResumeService.deleteBoard(board_resume_id)) {
			System.out.println("DB 성공");
			page = "/main";
		} else {
			System.out.println("DB 실패");
		}
		return page;
	}
}
