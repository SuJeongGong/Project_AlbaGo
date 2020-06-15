package com.spring.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.EnterpriseDAO;

@Controller
@RequestMapping("/individual")
public class IndividualController {

	
	@RequestMapping("/mypage")//마이페이지 메인
	public String mypage() {
		
		return "/individual/mypage";
	}
	@RequestMapping("/account")//개인정보 수정
	public String account() {
		
		return "/individual/account";
	}
	@RequestMapping("/profile_write")//이력서 작성
	public String profile_write() {
		
		return "/individual/profile_write";
	}
	@RequestMapping("/profile_list")//이력서 리스트
	public String profile_list() {
		
		return "/individual/profile_list";
	}
	@RequestMapping("/support")//지원현황
	public String support() {
		
		return "/individual/support";
	}
	
	//스크랩 알바 빠짐
}
