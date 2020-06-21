package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.Product;

public interface ProductDAO {
	  
	ArrayList<Product> selectList();//관리자에서 상품보기
 
	int insertProduct_term(Product product);	 //기간있는 상품추가
	int insertProduct_no_term(Product product); //기간없는 상품추가
	

	ArrayList<Product> enterprise_selectList(); //기업에서 상품보기
	int insertProduct_payment(int product_id);//기업에서 결제승인대기하기
}
 