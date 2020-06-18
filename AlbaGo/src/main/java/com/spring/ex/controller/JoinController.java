package com.spring.ex.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.JoinDAO;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.validator.EnterpriseValidator;

@Controller
@RequestMapping("/join")
public class JoinController {

	@Autowired
	JoinDAO joinDAO;

	@RequestMapping("/login") // 로그인
	public String login() {
		return "/join/login";
	}

	@RequestMapping("/find_id") // 아이디 찾기
	public String find_id() {
		return "/join/find_id";
	}

	@RequestMapping("/find_id/find_id_individual_result") // 개인 아이디 찾기 성공/
	public String find_id_individual_result(Model m, HttpServletRequest request) {
		String page = "/join/find_id"; // 아이디 찾기 폼으로 ,

		String name = request.getParameter("name");
		String phone = request.getParameter("phone");

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("phone", phone);

		String selectId = joinDAO.selectIndividualId(map);
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

	@RequestMapping("/find_pw") // 비밀번호 찾기
	public String find_pw() {
		return "/join/find_pw";
	}

	@RequestMapping("/join") // 회원가입
	public String join() {
		return "/join/join";
	}

	@RequestMapping("/join_enterprise") // 기업회원가입 폼
	public String join_enterprise() {
		return "/join/join_enterprise";
	}

	@RequestMapping("/join_enterprise/join_result") // 기업회원가입 완료
	public String join_enterprise_result(@ModelAttribute("enterprise") Enterprise enterprise, BindingResult result) {
		String page = "/join/join_enterprise"; // 회원가입 폼으

		EnterpriseValidator validator = new EnterpriseValidator();

		validator.validate(enterprise, result);

		if (result.hasErrors()) {
			return page;// 에러 있으면 그냥 회원가입 폼으
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
