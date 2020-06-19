package com.spring.ex.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;
import com.spring.ex.services.EnterpriseServiece;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {

	@Autowired
	EnterpriseServiece enterpriseService;

	@RequestMapping("/mypage") // 마이페이지
	public String mypage(HttpServletRequest request, Model m) {
		String page = "/main";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type")); 
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();

			ArrayList<Recruit> recruit = enterpriseService.selectRecruit(id);
			ArrayList<Scrap_enterprise> scrap = enterpriseService.selectScrap(id);
			ArrayList<Volunteer> volunteer = enterpriseService.selectVolunteer(id);
			Enterprise enterprise =  enterpriseService.selectEnterprise(id);


			if (enterprise != null) {

				// 모델에 담기
				m.addAttribute("Einfo", enterprise);// 기업정보
				m.addAttribute("scrap", scrap);// 스크랩
				m.addAttribute("recruit", recruit);// 스크랩
				m.addAttribute("volunteer", volunteer);// 스크랩

				page = "/enterprise/mypage";
			} else {
				System.out.println("DB연결실패");
			}

		}
		return page;
	}

	@RequestMapping("/account")//정보수정 - 화면 보여주기
	public String account(HttpServletRequest request, Model m) {
		String page = "/enterprise/mypage";
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("기업")) {
			return "/join/logout";
		}else {
			String id = session.getAttribute("id").toString();

			Enterprise enterprise =  enterpriseService.selectEnterprise(id);
			
			
			if (enterprise != null) {
				System.out.println("DB연결성공");
				System.out.println(enterprise.toString());

				// 모델에 담기
				m.addAttribute("Einfo", enterprise);// 기업정보

				page = "/enterprise/account";
			} else {
				System.out.println("DB연결실패");
			}
		}
		return page;
	}
	@RequestMapping("/account/update")//정보수정 - 수정하기 
	public String accountUpdate(HttpServletRequest request, Model m,@ModelAttribute("enterprise") Enterprise enterprise) {
		String page = "/enterprise/account";
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("기업")) {//기업회원이 맞는지 확인
			return "/join/logout";
		}else {
			String id = session.getAttribute("id").toString();//세션에서 아이디 값 가져오기
			System.out.println(enterprise.getDate());
			int reulst = enterpriseService.updateAccount(enterprise);
			
			
			if (reulst ==1) {
				System.out.println("DB연결성공");
				
				
				page = "/main";// /enterprise/mypage으로 보내기 실패ㅠ 
			} else {
				System.out.println("DB연결실패");
			}
		}
		return page;
	}

	@RequestMapping("/scrap") // 스크랩 인재
	public String scrap() {

		return "/enterprise/scrap";
	}

	@RequestMapping("/recruit/write") // 공고 작성
	public String recruit_write() {

		return "/enterprise/recruit_write";
	}

	@RequestMapping("/recruit/list") // 공고 리스트============수정중
	public String recruit_list() {

		return "/enterprise/recruit_list";
	}

	@RequestMapping("/volunteer_list") // 지원한 인재
	public String volunteer_list() {

		return "/enterprise/volunteer_list";
	}
}
