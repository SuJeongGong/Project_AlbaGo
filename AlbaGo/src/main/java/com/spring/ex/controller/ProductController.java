package com.spring.ex.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dao.EnterpriseDAO;
import com.spring.ex.dao.ProductDAO;
import com.spring.ex.dto.Product;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	EnterpriseDAO enterpriseDAO;

	@RequestMapping("payment") // 결제화면
	public String payment() {
		return "/product/payment";
	}

	@RequestMapping("/list") //기업이 상품리스트 보는화면
	public String list(Model m) {
		ArrayList<Product> products = enterpriseDAO.selectList();

		m.addAttribute("products", products);

		return "/product/list";
	}
	@RequestMapping("/Waiting_for_approval")
	public String approval() {
		return "/product/Waiting_for_approval";
	}

	@RequestMapping("/result")
	public String result() {
		return "/product/result";
	}
}
