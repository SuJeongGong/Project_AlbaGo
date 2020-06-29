package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring.ex.dto.Advertising;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;

public interface ProductDAO {
//관리자
	ArrayList<Product> selectProductList();//관리자에서 상품보기
	ArrayList<Product> selectAdvertisingList();//관리자에서 상품보기
	int insertProduct(Product product);	 //기간있는 상품추가
	Product product_account(int product_id); //관리자에서 상품 수정 하기전에 상세보기
	int update_product(Product product); //관리자-수정
	int delete_product(Product product);//관리자- 삭제
	
//기업 - 상품
	ArrayList<Product> enterprise_selectList(); //기업 -상품리스트보기
	Product enterprise_selectWrite(int product_id); //기업에서 상품 결제 하기전에 상세보기
	int insertProduct_payment(Payment payment);//기업에서 결제 승인대기하기
	//기업 - 광고
	ArrayList<Product> enterprise_selectAdList(); //기업 -광고 리스트 보기
	int insertAd_payment(Advertising advertising);//기업에서 결제 승인대기하기
	int insertAdvertising(Advertising advertising);//기업에서 결제 승인대기하기
	
	
	
	 ArrayList<Payment> selectProductPayments();
	 ArrayList<Payment> selectAdvertisingPayments();
	 int updateEnterpriseUpCount(HashMap<String, Object> map);
	 int updateEnterpriseResumeCount(HashMap<String, Object> map);
	 int updateEnterpriseBoardCount(HashMap<String, Object> map);
	 int updatePaymentResult(HashMap<String, Object> map);
	 
	 
	 
	 
	 int selectProductCount(int payment_id);
	 String selectProductType(int payment_id);
	 String selectEnterprise_id(int payment_id);
		 
	 ArrayList<BoardRecruit> enterpriseBoardRecruit(String enterprise_id);
}