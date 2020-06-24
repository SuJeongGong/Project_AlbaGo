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
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.dao.CommunityDAO;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.services.CommunityService;

@Controller
@RequestMapping("/community")
public class BoardCommunityController {
	
	@Autowired
	 CommunityService   communityService;
	
	
	@RequestMapping("/list")//리스트
	public String list(Model m) {
		
		ArrayList<BoardCommunity> communitys =communityService.selectList();
		
		m.addAttribute("communitys", communitys);
		
		return "/community/list";
	}
	
	@RequestMapping("/write/save")//작성
	public String writeSave(HttpServletRequest request , @ModelAttribute("community") BoardCommunity community){
	
		// @ModelAttribute("community") BoardCommunity community  -> "community" 는 wrie.jsp 에서 저장한 name 과 맞아야함 
		//BoardCommunity 가져온 값의 자료형 DTO , String  class
		//community 가져온 값을 저장하고 있는 변수이름

		String id =request.getSession().getAttribute("id").toString();
		community.setIndividual_id(id);// 로그인한 아이디 값을 넣어줌 
		System.out.println(id);
		System.out.println(community);

			
		int result = communityService.insertContent(community);//()안에는 메서드를 실행할때 필요한 값 , = 왼쪽은 메서드를 실행하고 난 결과값
		//communitys = 저장할 값
		return "/main"; // 커뮤니티 리스트 로 돌아가는게 맞는데 뭔가 안됌 나중에 처리
	}
	
	@RequestMapping("/write")//작성
	public String write(){
		
		
		return "/community/write"; // 커뮤니티 리스트 로 돌아가는게 맞는데 뭔가 안됌 나중에 처리
	}
	
	
	
	
	@RequestMapping("/content")//읽기
	public String content(Model m, HttpServletRequest request) {

		
	//	String id = request.getSession().getAttribute("id").toString(); //로그인된 id 가져오기 
	//	System.out.println(id);
		
		System.out.println(request.getParameter("community_id").toString());
		
		int community_id = Integer.parseInt(request.getParameter("community_id"));
		//DB에서 글 하나 가져오기
		BoardCommunity community = communityService.selectContent(community_id);
		//DB에서 글 하나 가져온 것을 다음 화면에 보여주기 위해서 m에다가 담음

		//조회수 증가 쿼리문 전송
		if(1<=communityService.updateViews(community_id)) {//성공했다면
			System.out.println("조회수 증가 DB연결 성공");
			m.addAttribute("community_content",community );
		}		
		return "/community/content";
					}
	
	
	@RequestMapping("/write_update")//수정화면보기
	public String update(HttpServletRequest request, Model m) {
		String page = "/community/list";
		HttpSession session = request.getSession();		//아이디 세션 가져오기
		
		if(!session.getAttribute("type").toString().equals("개인")) {//개인 확인 
			return  "/community/list";
		} else {
			String id = session.getAttribute("id").toString();//로그인 된 아이디
			int community_id = Integer.parseInt(request.getParameter("community_id"));//파라미터로 들어온 값 , 글번호 
			ArrayList<BoardCommunity> communitys =communityService.selectList();
			m.addAttribute("communitys", communitys);
				
				BoardCommunity boardCommunity = communityService.selectContent(community_id);
				boardCommunity.setCommunity_id(community_id);
				System.out.println("수정 화면 보여주는 컨트롤러 "+boardCommunity);
				m.addAttribute("board_Community", boardCommunity); // 여기 속성이름 지정하는거랑 jsp에서 가져오는거랑 달라서 그랬어
				page = "community/update";//redirect:/community/list
		
		}
		return page;
	}
	
	
	@RequestMapping(value = "/deleteContent", method = RequestMethod.GET)//삭제
	public String delete(HttpServletRequest request, @ModelAttribute("community_id")int community_id) {
		String page = "/community/content";

		if(1 <= communityService.deleteContent(community_id)) {
			System.out.println("DB연결 성공!");
			page = "/main";
		}
		else {
			System.out.println("DB연결 실패!");
		}
		return page;
	}
	

	
	
			//		hashpmap map 
			/*map.put("이름","공수정 ");
			int result = dao.int(map);
			
			
			//결과값 확인 
			if() {
				return "/community/content";
				
			}else {

				return "/community/content";
			}
			
			

			return "/community/content";
		}*/
}

