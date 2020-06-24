package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.ProductDAO;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;

@Service
public class ProductService {
	
	@Autowired
	ProductDAO productDAO;

	// 관리자
	public ArrayList<Product> selectList() {
		return productDAO.selectList();
	}

	public int insertProduct_term(Product product) {
		return productDAO.insertProduct_term(product);
	}

	public int insertProduct_no_term(Product product) {
		return productDAO.insertProduct_no_term(product);
	}

	public Product product_account(int product_id) {
		return productDAO.product_account(product_id); //수정상세보는거야
	}
	public int update_product(Product product) { //수정하는거야!~
		return productDAO.update_product(product);
	}

	public ArrayList<Product> enterprise_selectList() {
		return productDAO.enterprise_selectList();
	}
	public Product enterprise_selectWrite(int product_id) {
		return productDAO.enterprise_selectWrite(product_id);
	}
	public int insertProduct_payment(Payment payment) {
		return productDAO.insertProduct_payment(payment);
	}

}
