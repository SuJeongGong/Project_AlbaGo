package com.spring.ex.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.dao.ProductDAO;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;
import com.spring.ex.services.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	ProductService productService;

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

	@RequestMapping("/product") // 상품보기
	public String list(Model m) {
		ArrayList<Product> products = productService.selectList();
		m.addAttribute("products", products);

		return "/admin/product";
	} 

	@RequestMapping("/product_account") // 상품상세보기
	public String update_account(HttpServletRequest request, Model m, @RequestParam("product_id") int product_id) {
		String page = "/admin/product_account";
		Product product = productService.product_account(product_id);
		m.addAttribute("product", product);

		return page;
	} 
  
 
	@RequestMapping("/account/update") // 상품수정하기
	public String update(HttpServletRequest request, @ModelAttribute("product_id") Product product) {

		System.out.println(product);
		String page = "/admin/product_account";

		if (productService.update_product(product) >= 1) {
			page = "/admin/main";
			System.out.println("DB연결성공");
		} else {
			page = "/admin/product_account";
		System.out.println("실패라고요");
		}
		return page;
	}

	@RequestMapping("/add_product_term") // 기간있는 상품추가 보여주는 폼
	public String add_product_term() {
		String page = "/admin/add_product_term";
		return page;
	}

	@RequestMapping("/add_product_term/result") // 상품추가 DB
	public String add_product_term_result(HttpServletRequest request, @ModelAttribute("product") Product product,
			BindingResult result) {

		String page = "/admin/add_product_term/result";

		if (productService.insertProduct_term(product) >= 1) {// DB연결 , 연결 결과값 비교로 리턴될 페이지 경로값 변경
			page = "/admin/main";
		}

		return page;
	}

	@RequestMapping("/add_product_no_term") // 기간이없는 상품추가 보여주는 폼
	public String add_product_no_term() {
		String page = "admin/add_product_no_term";
		return page;
	}

	@RequestMapping("/add_product_no_term/result") // 기간이없는 상품추가 DB
	public String add_product_no_term_result(HttpServletRequest request, @ModelAttribute("product") Product product,
			BindingResult result) {

		String page = "/admin/add_product_no_term/result";

		if (productService.insertProduct_no_term(product) >= 1) {// DB연결 , 연결 결과값 비교로 리턴될 페이지 경로값 변경
			page = "/admin/main";
		}

		return page;
	}

	@RequestMapping("/approve") // 결제승인
	public String approve() {
		return "admin/approve";
	}

}
