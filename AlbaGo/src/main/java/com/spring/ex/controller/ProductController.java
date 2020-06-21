package com.spring.ex.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.EnterpriseDAO;
import com.spring.ex.dao.ProductDAO;
import com.spring.ex.dto.Product;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductDAO enterpriseDAO;

	@RequestMapping("payment") // 결제화면 
	public String payment() {
		return "/product/payment";
	} 

	@RequestMapping("/list") // 기업이 상품리스트 보는화면
	public String list(Model m, HttpServletRequest request) {
		String page="/product/list";

		ArrayList<Product> products = enterpriseDAO.enterprise_selectList();

		m.addAttribute("products", products);

		return page;
	}



	@RequestMapping("/Waiting_for_approval")
	public String approval(HttpServletRequest request, @ModelAttribute("product") Product product,
			BindingResult result) {
		String page ="/product/Waiting_for_approval";
		
		return page;
	}

	@RequestMapping("/Waiting_for_approval/result")
	public String approval_result(HttpServletRequest request ) {
		String page ="/product/Waiting_for_approval/result";
		
		int product_id = Integer.parseInt(request.getParameter("product_id"));
		System.out.println(product_id);
		if (enterpriseDAO.insertProduct_payment(product_id) >= 1) {// DB연결 , 연결 결과값 비교로 리턴될 페이지 경로값 변경
			page ="/product/Waiting_for_approval";
		}
		return page;
	}

	@RequestMapping("/result")
	public String result() {
		return "/product/result";
	}
}
