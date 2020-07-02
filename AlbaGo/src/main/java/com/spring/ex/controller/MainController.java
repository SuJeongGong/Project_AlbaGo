package com.spring.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.services.MainService;

import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.interceptor.Auth;
import com.spring.ex.interceptor.AuthUser;
import com.spring.ex.services.BoardRecruitService;
import com.spring.ex.services.EnterpriseService;

@Controller
@RequestMapping("/")
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@Autowired
	BoardRecruitService boardRecruitService;
	@Autowired
	EnterpriseService enterpriseService;
	
	@RequestMapping("main")
	public String main(Model m) {
		m.addAttribute("Advertising",mainService.selectAdvertising());
		m.addAttribute("product",mainService.selectProduct());
		m.addAttribute("community",mainService.selectCommunity());
		return "/main";
	}
	@RequestMapping("landing")
	public String landing() {
		return "/landing";
	}

	@RequestMapping("main/search") 
	public String main_List(Model m,@AuthUser String id, @RequestParam HashMap<String,String> map) {
		String page = "/main";
		
		System.out.println("메인 컨트롤"+map);
		
		String local_category = map.get("local_category");
		String enterprise_category = map.get("enterprise_category");
		String title = map.get("title");
		System.out.println(local_category);
		System.out.println(enterprise_category);
		System.out.println(title);
		
		if(local_category == null) {
			local_category="";
		}
		if(enterprise_category == null) {
			enterprise_category="";
		}
		if(title == null) {
			title="";
		}
		try {
			local_category = URLEncoder.encode(local_category, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			enterprise_category = URLEncoder.encode(enterprise_category, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			title = URLEncoder.encode(title, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		if(id.split("/")[1].toString().equals("기업")) {
			page="redirect:/resume/list?local_category="+local_category+"&enterprise_category="+enterprise_category+"&gender=&education=&term=&title="+title;
			return page;
		}else {
			page="redirect:/recruit/list?local_category="+local_category+"&enterprise_category="+enterprise_category+"&gender=&education=&term=&title="+title;
			System.out.println(page);
			return page;
		}
	}
}
