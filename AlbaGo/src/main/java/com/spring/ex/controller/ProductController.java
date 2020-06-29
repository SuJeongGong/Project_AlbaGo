package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.dto.Advertising;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;
import com.spring.ex.interceptor.Auth;
import com.spring.ex.interceptor.AuthUser;
import com.spring.ex.services.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService; 

	@RequestMapping("/product/payment") // 상세보기
	public String payment(HttpServletRequest request, Model m,@RequestParam("product_id")int product_id) {
		String page="/product/payment";
		Product product=productService.enterprise_selectWrite(product_id);
		m.addAttribute("product", product);
		return page; 
	}  

	@RequestMapping("/product/list") // 기업이 상품리스트 보는화면
	public String list(Model m, HttpServletRequest request) {
		String page="/product/list";

		ArrayList<Product> products = productService.enterprise_selectList(); 

		m.addAttribute("products", products);

		return page;
	}
	@Auth
	@RequestMapping("/product/payment/result")//결제 여기서 이뤄짐OB
	public String approval_result(@AuthUser String id ,@ModelAttribute("advertising") Advertising advertising) {
		String page ="/payment/result";
		
		advertising.setEnterprise_id(id.split("/")[0]);//거기다가 enterprise_id 값 넣기
		System.out.println("advertising :          "+advertising);
		if (productService.insertAdpayment(advertising)>= 1) {// DB연결 , 연결 결과값 비교로 리턴될 페이지 경로값 변경
			page ="redirect:/advertising/list;";
		}
		return page;
	}

	@RequestMapping("/advertising/payment") // 상세보기
	public String advertising(HttpServletRequest request, Model m,@RequestParam("product_id")int product_id,@AuthUser String id ) {
		Product product=productService.enterprise_selectWrite(product_id);
		System.out.println(product);
		System.out.println(product_id);
		
		
		m.addAttribute("product", product);
		
		
		ArrayList<BoardRecruit> board_recuit = productService.enterpriseBoardRecruit(id.split("/")[0]);
		System.out.println("board_recuit "+board_recuit);
		m.addAttribute("board_recuit", board_recuit);
		return "/advertising/payment";
	}
	@RequestMapping("/advertising/list") // 기업이 상품리스트 보는화면
	public String productList(Model m, HttpServletRequest request) {

		ArrayList<Product> products = productService.enterprise_selectAdList(); 

		m.addAttribute("products", products);

		return "/advertising/list";
	}
	
}