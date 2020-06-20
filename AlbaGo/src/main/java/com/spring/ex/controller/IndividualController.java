package com.spring.ex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.EnterpriseDAO;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;
import com.spring.ex.services.EnterpriseService;
import com.spring.ex.services.IndividualService;

@Controller
@RequestMapping("/individual")
public class IndividualController {

	@Autowired
	IndividualService individualSerive;
	
	@RequestMapping("/mypage")//마이페이지 메인
	public String mypage(HttpServletRequest request, Model m) {
		String page = "/main";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type")); 
		if (!session.getAttribute("type").toString().equals("개인")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();

			if (individualSerive.selectIndividual(id) != null) {

				// 모델에 담기
				m.addAttribute("Iinfo", individualSerive.selectIndividual(id));// 기업정보
				m.addAttribute("scrap",  individualSerive.selectScrap(id));// 스크랩
				m.addAttribute("resume", individualSerive.selectResumes(id));// 스크랩
				m.addAttribute("volunteer", individualSerive.selectVolunteer(id));// 스크랩

				page = "/individual/mypage";
			} else {
				System.out.println("DB연결실패");
			}

		}
		return page;
	}
	@RequestMapping("/account")//개인정보 수정 - 화면 보여주기 
	public String account(HttpServletRequest request, Model m) {
		String page = "/individual/mypage";
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("개인")) {
			return "/join/logout";
		}else {
			String id = session.getAttribute("id").toString();

			
			
			if (individualSerive.selectResumes(id) != null) {
				System.out.println("DB연결성공");

				// 모델에 담기
				m.addAttribute("Iinfo", individualSerive.selectResumes(id));// 기업정보

				page = "/invididual/account";
			} else {
				System.out.println("DB연결실패");
			}
		}
		return page;
	}
	@RequestMapping("/account/update")//개인정보 수정 - 수정하기
	public String account(HttpServletRequest request,@ModelAttribute("individual") Individual individual) {
		String page = "/individual/account";
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("개인")) {
			return "/join/logout";
		}else {
			String id = session.getAttribute("id").toString();
			
			
			if (individualSerive.updateAccount(individual)==1) {
				System.out.println("DB연결성공");
				
				page = "/main";;
			} else {
				System.out.println("DB연결실패");
			}
		}
		return page;
	}
	@RequestMapping("/scrap") // 스크랩 공고
	public String scrap(HttpServletRequest request,Model m) {
		String page = "/individual/mypage";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type")); 
		if (!session.getAttribute("type").toString().equals("개인")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			System.out.println(individualSerive.selectScrap(id));
			m.addAttribute("scraps", individualSerive.selectScrap(id));
			page="/individual/scrap";
		}
		return page;
	}
	@RequestMapping("/profile/write")//이력서 작성
	public String profileWrite() {
		
		return "/individual/profile_write";
	}
	
	@RequestMapping("/profile/list") // 이력서 리스트
	public String profileList(HttpServletRequest request,Model m) {
		String page = "/main";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type")); 
		if (!session.getAttribute("type").toString().equals("개인")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			m.addAttribute("Resumes", individualSerive.selectResumes(id));//why salary는 안나오죠?
			page="/individual/profile_list";
		}
		return page;
	}
	
	@RequestMapping("/support")//지원현황
	public String support(HttpServletRequest request,Model m) {
		String page = "/individual/mypage";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type")); 
		if (!session.getAttribute("type").toString().equals("개인")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			
			
//			System.out.println(enterpriseService.selectVolunteer(id)); - 테스트 주석
			
			
			m.addAttribute("volunteers", individualSerive.selectVolunteer(id));//why salary는 안나오죠?
			page="/individual/support";
		}
		return page;
	}

}
