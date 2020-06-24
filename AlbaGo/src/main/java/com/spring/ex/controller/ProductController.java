package com.spring.ex.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;
import com.spring.ex.services.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductService productService; 

	@RequestMapping("/payment") // 상세보기
	public String payment(HttpServletRequest request, Model m,@RequestParam("product_id")int product_id) {
		String page="/product/payment";
		 
		Product product=productService.enterprise_selectWrite(product_id);
		
		m.addAttribute("product", product);
		

		return page; 
	}

	@RequestMapping("/list") // 기업이 상품리스트 보는화면
	public String list(Model m, HttpServletRequest request) {
		String page="/product/list";

		ArrayList<Product> products = productService.enterprise_selectList();

		m.addAttribute("products", products);

		return page;
	}

	@RequestMapping("/payment/result")//결제 여기서 이뤄짐
	public String approval_result(HttpServletRequest request ) {
		String page ="/payment/result";
		
		int product_id = Integer.parseInt(request.getParameter("product_id"));
		Payment payment = new Payment();//payment 객체 생성 - product_id 와 enterprise_id 한번에보내기위해서
		payment.setProduct_id(product_id);//거기다가 product_id 값 넣기
		payment.setEnterprise_id(request.getSession().getAttribute("id").toString());//거기다가 enterprise_id 값 넣기
		System.out.println(payment);
		if (productService.insertProduct_payment(payment)>= 1) {// DB연결 , 연결 결과값 비교로 리턴될 페이지 경로값 변경
			page ="/product/result";
		}
		return page;
	}

}