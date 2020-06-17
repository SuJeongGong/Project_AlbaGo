package com.spring.ex.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.dao.JoinDAO;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.validator.EnterpriseValidator;

@Controller
@RequestMapping("/join")
public class JoinController {

	HttpSession session;
	@Autowired
	JoinDAO joinDAO;

	@RequestMapping("/login") // 로그인 - 페이지 연결
	public String login() {
		return "/join/login";
	}

	@RequestMapping("/login/enterprsie") // 로그인 - 기업
	public String enterpriseLogin(HttpServletRequest request) {
		String page = "/join/login"; // 기본 -> 로그인 페이지에 있기
		HttpSession session = request.getSession();
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		int selectIdResult = joinDAO.selectCheckEnterpriseId(id);
		int selectPwResult = joinDAO.selectCheckEnterprisePw(pw);
		System.out.println(selectIdResult);
		if (selectIdResult == 1 && selectPwResult == 1) {
			System.out.println("login 성공");
			
			session.setAttribute("id", id);// 세션에 아이디 넣기
			session.setAttribute("type", "기업");// 세션에 기업인지, 개인인지 구분자 넣기

			page = "/main";// db값넣기 성공시 result페이지로
		} else {
			System.out.println("login 실패");
		}
		return page;// 로그인 성공시
	}
	
	@RequestMapping("/login/individual") // 로그인 - 개인
	public String individualLogin(HttpServletRequest request) {
		String page = "/join/login"; // 기본 -> 로그인 페이지에 있기
		HttpSession session = request.getSession();
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		int selectIdResult = joinDAO.selectCheckIndividualId(id);
		int selectPwResult = joinDAO.selectCheckIndividualPw(pw);
		System.out.println(selectIdResult);
		if (selectIdResult == 1 && selectPwResult == 1) {
			System.out.println("login 성공");
			
			session.setAttribute("id", id);// 세션에 아이디 넣기
			session.setAttribute("type", "개인");// 세션에 기업인지, 개인인지 구분자 넣기
			
			page = "/main";// db값넣기 성공시 result페이지로
		} else {
			System.out.println("login 실패");
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

	// 기업
	@RequestMapping("/join_enterprise") // 기업회원가입 폼
	public String join_enterprise() {
		return "/join/join_enterprise";
	}

	@RequestMapping("/join_enterprise/join_result") // 기업회원가입 완료
	public String join_enterprise_result(@ModelAttribute("enterprise") Enterprise enterprise, BindingResult result) {
		String page = "/join/join_enterprise"; // 회원가입 폼으로

		EnterpriseValidator validator = new EnterpriseValidator();

		validator.validate(enterprise, result);

		if (result.hasErrors()) {
			return page;// 에러 있으면 그냥 회원가입 폼으로
		}
		else {
			int insertResult = joinDAO.insertEnterprise(enterprise);

			if (insertResult == 1) {
				System.out.println("DB에 값넣기 성공");
				page = "/join/join_enterprise_result";// db값넣기 성공시 result페이지로
			} else {
				System.out.println("DB에 값넣기 실패");
			}
		}
		return page;
	}

	@RequestMapping("/join_individual") // 개인 회원가입 폼
	public String join_individual() {
		return "/join/join_individual";
	}

}
