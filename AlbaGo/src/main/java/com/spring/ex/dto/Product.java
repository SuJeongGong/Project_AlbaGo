package com.spring.ex.dto;

import lombok.Data;

@Data
public class Product {
	int Product_id;//상품번호(키값)
	String name;//상품이름
	String term;//상품기간
	int price;//상품가격
	
}
