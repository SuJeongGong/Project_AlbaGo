package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/join")
public class JoinController {
	@RequestMapping("/find_id")//아이디 찾기
	public String find_id() {
		return "/join/find_id";
	}
	@RequestMapping("/find_pw")//비밀번호 찾기
	public String find_pw() {
		return "/join/find_pw";
	}
	@RequestMapping("/join")//회원가입
	public String join() {
		return "/join/join";
	}
	@RequestMapping("/login")//로그인
	public String login() {
		return "/join/login";
	}
	@RequestMapping("/join_enterprise")//기업회원가입 폼
	public String join_enterprise() {
		return "/join/join_enterprise";
	}
	@RequestMapping("/join_individual")//개인 회원가입 폼
	public String join_individual() {
		return "/join/join_individual";
	}




}
