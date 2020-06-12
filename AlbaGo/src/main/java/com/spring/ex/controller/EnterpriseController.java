package com.spring.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.EnterpriseDAO;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {
	
	@Autowired
	EnterpriseDAO enterpriseDAO;
	
	@RequestMapping("/mypage")
	public String mypage() {
		
		System.out.println(enterpriseDAO.selectEnterprise().toString());
		
		return "/Mypage_enterprise";
	}
	@RequestMapping("/Account_enterprise")
	public String Account_enterprise() {
		
		return "/Account_enterprise";
	}
}
