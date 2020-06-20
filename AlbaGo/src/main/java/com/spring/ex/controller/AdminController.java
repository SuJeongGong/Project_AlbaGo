package com.spring.ex.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.ProductDAO;
import com.spring.ex.dto.Product;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	@Autowired
	ProductDAO product;//DAO 클래스를 생성해서 사용해야지,,,,
	
	@RequestMapping("/main") // 관리자 메인
	public String main() {
		return "admin/main";
	}

	@RequestMapping("/recruit") // 공고글 게시판 - 관리자ver
	public String recruit() {
		return "admin/recruit";
	}

	@RequestMapping("/resume") // 인재글 게시판 - 관리자 ver
	public String resume() {
		return "admin/resume";
	}

	@RequestMapping("/community") // 커뮤니티 게시판 -관리자 ver
	public String community() {
		return "admin/community";
	}

	@RequestMapping("/individual_list") // 개인 리스트
	public String individual_list() {
		return "admin/individual_list";
	}

	@RequestMapping("/enterprise_list") // 기업 리스트
	public String enterprise_list() {
		return "admin/enterprise_list";
	}

	@RequestMapping("/individual_detail") // 개인 - 디테일?
	public String individual_detail() {
		return "admin/individual_detail";
	}

	@RequestMapping("/enterprise_detail") // 기업 - 디테일?
	public String enterprise_detail() {
		return "admin/enterprise_detail";
	}

	@RequestMapping("/payment") // 결제관리
	public String manager_payment() {
		return "admin/payment";
	}

	@RequestMapping("/product") // 상품수정,삭제
	public String list(Model m) {
	      ArrayList<Product> products = product.selectList();
	    		  
	      m.addAttribute("products", products);
	      
	      return "/admin/product";
	   }

	@RequestMapping("/add_product_term") // 상품추가
	public String add_product_term() {
		return "admin/add_product_term";
	}

	@RequestMapping("/add_product_no_term") // 상품추가
	public String add_product_no_term() {
		return "admin/add_product_no_term";
	}

	@RequestMapping("/approve") // 결제승인
	public String approve() {
		return "admin/approve";
	}

}
