package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;

public interface ProductDAO {
//관리자
	ArrayList<Product> selectList();//관리자에서 상품보기
	int insertProduct_term(Product product);	 //기간있는 상품추가
	int insertProduct_no_term(Product product); //기간없는 상품추가
	Product product_account(int product_id); //관리자에서 상품수정하기전에 상세보기
	int update_product(Product product); //상품 수정해볼께요 	
	
	
//기업
	ArrayList<Product> enterprise_selectList(); //기업에서 상품목록보기
	Product enterprise_selectWrite(int product_id); //기업에서 상품결제하기전에 상세보기
	int insertProduct_payment(Payment payment);//기업에서 결제승인대기하기
	
}
 