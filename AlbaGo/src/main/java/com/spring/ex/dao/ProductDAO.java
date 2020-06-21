package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.Product;

public interface ProductDAO {
	  
	ArrayList<Product> selectList();

	int insertProduct_term(Product product);
	
	int insertProduct_no_term(Product product);
}
