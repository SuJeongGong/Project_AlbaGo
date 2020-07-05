  
package com.spring.ex.dto;

import lombok.Data;

@Data
public class Product {
	int product_id;//상품번호(키값)
	String name;//상품이름
	String term;//상품기간
	int price;//상품가격
	int amount;//상품 수량
	String explan; //상품설명
	int delete_check;//삭제 조건 있으면 1 없으면 0 
	String type;
	int sum_price;//총매출
	int todaysales; //오늘 매출

	
}