package com.spring.ex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.EnterpriseDAO;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {
	
	@Autowired
	EnterpriseDAO enterpriseDAO;
	
	@RequestMapping("/mypage")//마이페이지
	public String mypage(HttpServletRequest request) {
		HttpSession session = request.getSession();
//		System.out.println(enterpriseDAO.selectEnterprise().toString());
		
		
		
		
		
		
		return "/enterprise/mypage";
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
