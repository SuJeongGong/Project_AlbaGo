package com.spring.ex.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.Dao.EnterpriseDAO;

@Controller
@RequestMapping("/individual")
public class IndividualController {

	@Autowired
	EnterpriseDAO enterpriseDAO;
	
	@RequestMapping("/mypage")
	public String mypage() {
		
		System.out.println(enterpriseDAO.selectEnterprise().toString());
		
		return "/Mypage_individual";
	}
}
