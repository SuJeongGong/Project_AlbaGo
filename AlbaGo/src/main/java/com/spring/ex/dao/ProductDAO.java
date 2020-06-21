package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.Product;

public interface ProductDAO {
	  
	ArrayList<Product> selectList();
 
	int insertProduct_term(Product product);	 //기간있는 상품추가
	int insertProduct_no_term(Product product); //기간없는 상품추가
}
