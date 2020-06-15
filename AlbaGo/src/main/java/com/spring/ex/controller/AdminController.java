package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("/main")//관리자 메인
	public String main() {
		return "admin/main";
	}
	@RequestMapping("/recruit")//공고글 게시판 - 관리자ver
	public String recruit() {
		return "admin/recruit";
	}
	@RequestMapping("/resume")//인재글 게시판 - 관리자 ver
	public String resume() {
		return "admin/resume";
	}
	@RequestMapping("/community")//커뮤니티 게시판 -관리자 ver
	public String community() {
		return "admin/community";
	}
	

	
	@RequestMapping("/individual_list")//개인 리스트
	public String individual_list() {
		return "admin/individual_list";
	}
	@RequestMapping("/enterprise_list")//기업 리스트 
	public String enterprise_list() {
		return "admin/enterprise_list";
	}
	@RequestMapping("/individual_detail")//개인 - 디테일?
	public String individual_detail() {
		return "admin/individual_detail";
	}
	@RequestMapping("/enterprise_detail")//기업 - 디테일?
	public String enterprise_detail() {
		return "admin/enterprise_detail";
	}
	
	@RequestMapping("/manager_payment")//결제관리
	public String manager_payment() {
		return "admin/manager_payment";
	}
	@RequestMapping("/product")//상품수정,삭제
	public String product() {
		return "admin/product";
	}
	@RequestMapping("/add_product")//상품추가
	public String add_product() {
		return "admin/add_product";
	}


}
