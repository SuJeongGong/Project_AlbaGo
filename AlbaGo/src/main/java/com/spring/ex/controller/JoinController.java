package com.spring.ex.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.dao.JoinDAO;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;
import com.spring.ex.services.JoinService;
import com.spring.ex.validator.EnterpriseValidator;
import com.spring.ex.validator.IndividualValidator;

@Controller
@RequestMapping("/join")
public class JoinController {
	
	@Autowired
	JoinService joinService;
	
	@RequestMapping("/login") // 로그인
	public String login() {
		return "/join/login";
	}
	@RequestMapping("/logout") // 로그아웃
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		

		session.invalidate();//세션초기화
		
		return "redirect:/main";
	}
	@RequestMapping("/login/enterprsie") // 로그인 - 기업
	public String enterpriseLogin(HttpServletRequest request) {
		String page = "/join/login"; // 기본 -> 로그인 페이지에 있기
		HttpSession session = request.getSession();

		String id=request.getParameter("id");
		String pw=request.getParameter("pw");

		int selectIdResult = joinService.selectCheckEnterpriseId(id);
		int selectPwResult = joinService.selectCheckEnterprisePw(pw);
		System.out.println(selectIdResult);
		System.out.println(selectPwResult);
		if (selectIdResult >= 1 && selectPwResult >= 1) {
			System.out.println("session 기본값 : "+session.toString());

			session.setAttribute("id", id);// 세션에 아이디 넣기
			session.setAttribute("type", "기업");// 세션에 기업인지, 개인인지 구분자 넣기
			session.setMaxInactiveInterval(900);

			page = "redirect:/main";// db값넣기 성공시 result페이지로
		} else {
			System.out.println("login 실패");
			page = "redirect:/join/login";
		}
		return page;// 로그인 성공시
	}

	@RequestMapping("/login/individual") // 로그인 - 개인
	public String individualLogin(HttpServletRequest request) {
		String page = "/join/login"; // 기본 -> 로그인 페이지에 있기
		HttpSession session = request.getSession();

		String id=request.getParameter("id");
		String pw=request.getParameter("pw");

		int selectIdResult = joinService.selectCheckIndividualId(id);
		int selectPwResult = joinService.selectCheckIndividualPw(pw);
		System.out.println(selectIdResult);
		if (selectIdResult >= 1 && selectPwResult >= 1) {
			System.out.println("login 성공");

			session.setAttribute("id", id);// 세션에 아이디 넣기
			session.setAttribute("type", "개인");// 세션에 기업인지, 개인인지 구분자 넣기

			page =  "redirect:/main";/// db값넣기 성공시 result페이지로
		} else {
			System.out.println("login 실패");
			page = "redirect:/join/login";
		}
		return page;// 로그인 성공시
	}



	@RequestMapping("/find_id") // 아이디 찾기
	public String find_id() {
		return "/join/find_id";
	}

	@RequestMapping("/find_pw") // 비밀번호 찾기
	public String find_pw() {
		return "/join/find_pw";
	}

	@RequestMapping("/join") // 회원가입
	public String join() {
		return "/join/join";
	}
	

	
	@RequestMapping("/join_enterprise/join_result") // 기업회원가입 완료
	public String join_result(@ModelAttribute("enterprise") Enterprise enterprise, BindingResult result) {
		String page = "/join/join_enterprise"; //회원가입 폼으로 

		EnterpriseValidator validator = new EnterpriseValidator();

		validator.validate(enterprise, result);

		if (result.hasErrors()) {
			return page;//에러 있으면 그냥 회원가입 폼으로 
		}
		
		else {
			int insertResult = joinService.insertEnterprise(enterprise);
			
			if(insertResult==1) {
				System.out.println("DB에 값넣기 성공");
				page = "/join/join_result";//db값넣기 성공시 result페이지로
			}
			else {
				System.out.println("DB에 값넣기 실패");
			}
		}

		return page;

	}
	@RequestMapping("/find_id/find_id_individual_result") // 개인 아이디 찾기 성공/
	public String find_id_individual_result(Model m, HttpServletRequest request) {
		String page = "/join/find_id"; // 아이디 찾기 폼으로 ,

		String name = request.getParameter("name");
		String phone = request.getParameter("phone");

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("phone", phone);

		String selectId = joinService.selectIndividualId(map);
		System.out.println(selectId);
		
		if (!selectId.equals("")) {
			m.addAttribute("id", selectId);
		
			System.out.println("DB에서 select 성공");
			page = "/join/find_id_individual_result";// db값넣기 성공시 아이디확인 페이지로
		} else {
			System.out.println("DB에 select 실패");
			
		}

		return page;
	}
	
	
	@RequestMapping("/find_id/find_id_enterprise_result") // 기업 아이디 찾기 성공/
	public String find_id_enterprise_result(Model m, HttpServletRequest request) {
		String page = "/join/find_id"; // 아이디 찾기 폼으로 ,

		String manager_name = request.getParameter("name");
		String manager_phone = request.getParameter("phone");

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("manager_name", manager_name);
		map.put("manager_phone", manager_phone);
		System.out.println(manager_name);
		System.out.println(manager_phone);

		String selectId = joinService.selectEnterpriseId(map);
		System.out.println(selectId);
		
		if (!selectId.equals("")) {
			m.addAttribute("id", selectId);
		
			System.out.println("DB에서 select 성공");
			page = "/join/find_id_enterprise_result";// db값넣기 성공시 아이디확인 페이지로
		} else {
			System.out.println("DB에 select 실패");
			
		}

		return page;
	}
	

	@RequestMapping("/find_pw/find_pw_individual_result") // 개인 비밀번호 찾기 성공
	public String find_pw_individual_result(Model model, HttpServletRequest request) {
		String page = "/join/find_pw"; // 아이디 찾기 폼으로 ,

		String individual_id = request.getParameter("id");
		String phone = request.getParameter("phone");

		System.out.println(individual_id);		
		System.out.println(phone);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", individual_id);
		map.put("phone", phone);

		int updatePW = joinService.updateIndividualPW(map);

		System.out.println(updatePW);

		if (updatePW==1) {

			System.out.println("DB에서 update 성공");
			page = "/join/find_pw_individual_result";// db값넣기 성공시 아이디확인 페이지로
		} else {
			System.out.println("DB에 update 실패");
		}

		return page;
	}
	
	@RequestMapping("/find_pw/find_pw_enterprise_result") // 기업 비밀번호 찾기 성공
	public String find_pw_enterprise_result(Model model, HttpServletRequest request) {
		String page = "/join/find_pw"; // 아이디 찾기 폼으로 ,

		String enterprise_id = request.getParameter("id");
		String manager_phone = request.getParameter("phone");

		System.out.println(enterprise_id);		
		System.out.println(manager_phone);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("enterprise_id", enterprise_id);
		map.put("manager_phone", manager_phone);

		int updatePW = joinService.updateEnterprisePW(map);

		System.out.println(updatePW);

		if (updatePW==1) {

			System.out.println("DB에서 update 성공");
			page = "/join/find_pw_enterprise_result";// db값넣기 성공시 아이디확인 페이지로
		} else {
			System.out.println("DB에 update 실패");
		}

		return page;
	}
	
	@RequestMapping("/join_individual") // 개인 회원가입 폼
	public String join_individual() {
		return "/join/join_individual";
	}

	@RequestMapping("/join_individual/join_result") // 개인회원가입 완료
	public String join_result(@ModelAttribute("individual") Individual individual, BindingResult result) {
		
		String page = "/join/join_individual"; //회원가입 폼으로
		System.out.println("되나1?");

		IndividualValidator validator = new IndividualValidator();
		System.out.println("되나2?");

		validator.validate(individual, result);
		System.out.println("되나3?");
		if (result.hasErrors()) {
			return page;//에러 있으면 그냥 회원가입 폼으로
		}
		
		else {
			int insertResult = joinService.insertIndividual(individual);
			
			if(insertResult==1) {
				System.out.println("DB에 값넣기 성공");
				page = "/join/join_result";//db값넣기 성공시 result페이지로
			}
			else {
				System.out.println("DB에 값넣기 실패");
			}
		}
		System.out.println("되나?4");
		return page;
	}
	

	//개인회원 아이디 체크
	@RequestMapping(value="selectCheckId",method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int selectCheckId(String individual_id) {
		int result = 0;
		result = joinService.selectCheckId(individual_id);
		return result;
	}
	
	//기업회원 아이디 체크
	@RequestMapping(value="selectCheckId_e",method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int selectCheckId_e(String enterprise_id) {
		int result = 0;
		result = joinService.selectCheckId_e(enterprise_id);
		return result;
	}

	@RequestMapping("/join_enterprise") // 기업회원가입 폼
	public String join_enterprise() {
		return "/join/join_enterprise";
	}
}
