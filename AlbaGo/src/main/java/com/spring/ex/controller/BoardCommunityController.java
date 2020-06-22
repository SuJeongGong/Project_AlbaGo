package com.spring.ex.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("/update")//수정
	public String update() {
		return "/community/update";
	}
	
	@RequestMapping("/content")//읽기
	public String content(Model m) {
		
		ArrayList<BoardCommunity> communitys1 =communityService.selectContent();
		
		m.addAttribute("communitys1", communitys1);
		System.out.println(communitys1);
		
	 
		return "/community/content";
		
		
		
	}
	//화면에서 가져옴
	
	
	
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

