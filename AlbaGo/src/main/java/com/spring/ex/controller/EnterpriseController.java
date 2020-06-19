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
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;
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
			
			//받아올 곳 생성
			ArrayList<Recruit> recruit = new ArrayList<Recruit>();//공고
			ArrayList<Volunteer> volunteer = new ArrayList<Volunteer>();//지원
			ArrayList<Scrap_enterprise> scrap = new ArrayList<Scrap_enterprise>();//스크랩
			Enterprise enterprise = new Enterprise();
			
			
			
			//쿼리문 실행
			enterprise = enterpriseDAO.selectEnterprise(id);//기업정보 받아옴
			scrap = enterpriseDAO.selectScrap(id);
			recruit = enterpriseDAO.selectRecruit(id);
			volunteer = enterpriseDAO.selectVolunteer(id);
			

			
			if(enterprise!=null) {
				System.out.println("DB연결성공");
				System.out.println(scrap.toString());
				System.out.println(recruit.toString());
				System.out.println(volunteer.toString());
				
				
				//모델에 담기
				m.addAttribute("Einfo", enterprise);//기업정보
				m.addAttribute("scrap", scrap);//스크랩
				m.addAttribute("recruit", recruit);//스크랩
				m.addAttribute("volunteer", volunteer);//스크랩
				
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
