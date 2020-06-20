package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;
import com.spring.ex.services.EnterpriseService;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {

	@Autowired
	EnterpriseService enterpriseService;

	@RequestMapping("/mypage") // 마이페이지
	public String mypage(HttpServletRequest request, Model m) {
		String page = "/main";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type")); 
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();

			if (enterpriseService.selectEnterprise(id) != null) {

				// 모델에 담기
				m.addAttribute("Einfo", enterpriseService.selectEnterprise(id));// 기업정보
				m.addAttribute("scrap",  enterpriseService.selectScrap(id));// 스크랩
				m.addAttribute("recruit", enterpriseService.selectRecruit(id));// 스크랩
				m.addAttribute("volunteer", enterpriseService.selectVolunteer(id));// 스크랩

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

			
			
			if (enterpriseService.selectEnterprise(id) != null) {
				System.out.println("DB연결성공");

				// 모델에 담기
				m.addAttribute("Einfo", enterpriseService.selectEnterprise(id));// 기업정보

				page = "/enterprise/account";
			} else {
				System.out.println("DB연결실패");
			}
		}
		return page;
	}
	@RequestMapping("/account/update")//정보수정 - 수정하기 
	public String accountUpdate(HttpServletRequest request,@ModelAttribute("enterprise") Enterprise enterprise) {
		String page = "/enterprise/account";
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("기업")) {//기업회원이 맞는지 확인
			return "/join/logout";
		}else {
			System.out.println(enterprise.getDate());
					
			if (enterpriseService.updateAccount(enterprise) ==1) {
				System.out.println("DB연결성공");
				
				page = "/main";// /enterprise/mypage으로 보내기 실패ㅠ 
			} else {
				System.out.println("DB연결실패");
			}
		}
		return page;
	}

	@RequestMapping("/scrap") // 스크랩 인재
	public String scrap(HttpServletRequest request,Model m) {
		String page = "/enterprise/mypage";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type")); 
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			System.out.println(enterpriseService.selectScrap(id));
			m.addAttribute("scraps", enterpriseService.selectScrap(id));
			page="/enterprise/scrap";
		}
		return page;
	}

	@RequestMapping("/recruit/list") // 공고 리스트
	public String recruit_write(HttpServletRequest request,Model m) {
		String page = "/main";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type")); 
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			m.addAttribute("Recruits", enterpriseService.selectRecruit(id));//why salary는 안나오죠?
			page="/enterprise/recruit_list";
		}
		return page;
	}

	@RequestMapping("/recruit/write") // 공고 작성하기===>토요일날 구현
	public String recruitList() {
		
		return "/enterprise/recruit_write";
	}

	@RequestMapping("/volunteer/list") // 지원한 인재
	public String volunteerList(HttpServletRequest request,Model m) {
		String page = "/enterprise/mypage";
		HttpSession session = request.getSession(); 
		System.out.println(session.getAttribute("type")); 
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			
			
//			System.out.println(enterpriseService.selectVolunteer(id)); - 테스트 주석
			
			
			m.addAttribute("volunteers", enterpriseService.selectVolunteer(id));//why salary는 안나오죠?
			page="/enterprise/volunteer_list";
		}
		return page;
	}
	@RequestMapping(value="/volunteer/updateResult",method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public String updateResult(String result,int id) {
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("volunteer_id", id);
		map.put("result", result);
		System.out.println(result);//jsp 에서 가져온값 
		System.out.println(id);
		System.out.println(enterpriseService.updateVolunteerResult(map));
		
		if(1<=enterpriseService.updateVolunteerResult(map)) {
			System.out.println("DB연결 성공!");
		}
		return result;
	}
}
