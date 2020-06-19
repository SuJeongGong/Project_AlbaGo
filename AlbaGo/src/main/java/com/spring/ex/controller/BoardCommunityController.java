package com.spring.ex.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.CommunityDAO;
import com.spring.ex.dto.BoardCommunity;

@Controller
@RequestMapping("/community")
public class BoardCommunityController {
	
	@Autowired
	 CommunityDAO   communityDAO;
	
	
	@RequestMapping("/list")//리스트
	public String list(Model m) {
		
		ArrayList<BoardCommunity> communitys =communityDAO.selectList();
		
		m.addAttribute("communitys", communitys);
		
		return "/community/list";
	}
	@RequestMapping("/write")//작성
	public String write(Model m) {
		
		ArrayList<BoardCommunity> communitys =communityDAO.insertContent();
		
		m.addAttribute("communitys", communitys);
		
		return "/community/write";
		
		
	}
	@RequestMapping("/update")//수정
	public String update() {
		return "/community/update";
	}
	@RequestMapping("/content")//읽기
	public String content() {
		
		
		
		
		
		
		return "/community/content";
		
		
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
	
}

