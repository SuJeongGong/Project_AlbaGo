package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.EnterpriseDAO;
import com.spring.ex.dto.Enterprise;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {
	
	@Autowired
	EnterpriseDAO enterpriseDAO;
	
	@RequestMapping("/mypage")//마이페이지
	public String mypage(HttpServletRequest request,Model m) {
		String page ="/main";
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("기업")) {
			return page;
		}else {
			String id = session.getAttribute("id").toString();
			
//			//받아올 곳 생성
//			ArrayList<HashMap<String, String>> recruit = new ArrayList<HashMap<String,String>>();//공고
//			ArrayList<HashMap<String, String>> volunteer = new ArrayList<HashMap<String,String>>();//지원
			ArrayList<HashMap<String, String>> scrap = new ArrayList<HashMap<String,String>>();//스크랩
			Enterprise enterprise = new Enterprise();
			
			
			
			//쿼리문 실행
			enterprise = enterpriseDAO.selectEnterprise(id);//기업정보 받아옴
			scrap = enterpriseDAO.selectScrap(id);
			
			
			//모델에 담기
			m.addAttribute("Einfo", enterprise);//기업정보
			m.addAttribute("scrap", scrap);//스크랩
			
			if(enterprise!=null) {
				System.out.println("DB연결성공");
				System.out.println(enterprise.toString());
				
				page="/enterprise/mypage";
			}else {
				System.out.println("DB연결실패");
			}
			
		}
		return page;
	}
	@RequestMapping("/account")//정보수정
	public String account() {
		
		return "/enterprise/account";
	}
	@RequestMapping("/scrap")//스크랩 인재
	public String scrap() {
		
		return "/enterprise/scrap";
	}
	@RequestMapping("/recruit_write")//공고 작성
	public String recruit_write() {
		
		return "/enterprise/recruit_write";
	}
	@RequestMapping("/recruit_list")//공고 리스트============수정중
	public String recruit_list() {
		
		return "/enterprise/recruit_list";
	}
	@RequestMapping("/volunteer_list")//지원한 인재
	public String volunteer_list() {
		
		return "/enterprise/volunteer_list";
	}
}
