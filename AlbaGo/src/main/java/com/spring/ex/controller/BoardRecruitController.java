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

import com.spring.ex.dao.BoardRecruitDAO;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.services.BoardRecruitService;
import com.spring.ex.services.EnterpriseService;
import com.spring.ex.services.RecruitService;

@Controller
@RequestMapping("/recruit")
public class BoardRecruitController {
	
	@Autowired
	BoardRecruitService boardRecruitService;
	@Autowired
	RecruitService recruitService;
	@Autowired
	EnterpriseService enterpriseService;
	
	@RequestMapping("/list")//리스트
	public String list(Model m) { //enterprise_id 가져오고
		ArrayList<BoardRecruit> recruits = boardRecruitService.selectList();
		
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
		if(1<=boardRecruitService.insertBoard_recruit(boardrecruit)) {
			System.out.println("되나?2");
			page = "/main";
		}
		
		return page;
	}
	
	@RequestMapping("/write") //
	public String write(HttpServletRequest request, Model m) {
		String id = request.getSession().getAttribute("id").toString();//로그인한 사람 아이디
		String type = request.getSession().getAttribute("type").toString();//로그인한 회원 타입  - 기업, 개인
	
		ArrayList<BoardRecruit> recruits = recruitService.selectRecruit(id);
		System.out.println(id);
		System.out.println(type);
		System.out.println("잘되라");
		
		
		m.addAttribute("recruit", recruits);
		
		return "/recruit/write";
	}
	
	
	@RequestMapping("/content")//보는화면
	public String content(Model m,HttpServletRequest request) {
		//디비처리 select로 글 내용 가져오기
		// update로 조회수
		
		String id = request.getSession().getAttribute("id").toString();
		System.out.println(id);
				
		System.out.println(request.getParameter("board_recruit_id").toString());
		int board_recruit_id = Integer.parseInt(request.getParameter("board_recruit_id"));
				
		System.out.println("되나?1");
		BoardRecruit board_content= boardRecruitService.selectView(board_recruit_id);
		board_content.setBoard_recruit_id(board_recruit_id);
		
		System.out.println(board_content);
		m.addAttribute("board_content", board_content);//여기 속성이름 지정하는거랑 jsp에서 가져오는거랑 달라서 그랬어
		return "/recruit/content";
	}
	
	@RequestMapping("/content/write_update") // 수정화면에 수정 버튼 누르면
	public String contentUpdate(HttpServletRequest request,@ModelAttribute("boardrecruit") BoardRecruit boardrecruit) {
		String page = "/recruit/write_update"; //안되면 
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("기업")) { //기업회원이 맞는지 확인
			return "/recruit/list";
		} else {
			
			System.out.println(boardrecruit);
			
			if(boardRecruitService.updateBoard(boardrecruit) >= 1) {
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
		String page = "/recruit/list";
		//게시판 키값만 가져옴 
		//이용해서 select 게시글 가져오고
		//거기에서 getEnterprise_id 랑 session id 비교하고
		//맞다면 공고 리스트 가져오고 m 담기,select 가져온 게시글을 m 담기
		//리턴
		HttpSession session = request.getSession();		//아이디 세션 가져오기
		
		if(!session.getAttribute("type").toString().equals("기업")) {//기업인 확인 
			return "/recruit/list";
		} else {
			String id = session.getAttribute("id").toString();//로그인 된 아이디
			int board_recruit_id = Integer.parseInt(request.getParameter("board_recruit_id"));//파라미터로 들어온 값 , 글번호 
			
	
				
				ArrayList<BoardRecruit> recruits = recruitService.selectRecruit(id); // 공고 글쓴 값들 ?recruit의 값들 가져오기?
				m.addAttribute("recruit", recruits); // 공고값
				
				BoardRecruit boardrecruit = boardRecruitService.selectView(board_recruit_id);
				boardrecruit.setBoard_recruit_id(board_recruit_id);
				System.out.println("수정 화면 보여주는 컨트롤러 "+boardrecruit);
				m.addAttribute("board_content", boardrecruit); // 여기 속성이름 지정하는거랑 jsp에서 가져오는거랑 달라서 그랬어
				page =  "/recruit/write_update";
		
		}
		return page;
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int board_recruit_id) {
		String page = "/recruit/content";
		System.out.println(board_recruit_id);  //jsp에서 가져온 값
		if(1 <= boardRecruitService.deleteBoard(board_recruit_id)) {
			System.out.println("DB연결 성공!");
			page = "/main";
		}
		else {
			System.out.println("DB연결 실패!");
		}
		return page;
	}
}
