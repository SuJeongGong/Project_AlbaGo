  
package com.spring.ex.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.JoinDAO;

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

		String selectId = joinDAO.selectEnterpriseId(map);
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
	
	@RequestMapping("/find_pw") // 아이디 찾기
	public String find_pw() {
		return "/join/find_pw";
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

		int updatePW = joinDAO.updateIndividualPW(map);

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

		int updatePW = joinDAO.updateEnterprisePW(map);

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

}