package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Product;

public interface EnterpriseDAO {
	List<Product> selectNow(HashMap<String, Object> map);

	List<Enterprise> selectEnterprise();

	ArrayList<Product> selectList(); //기업에서 상품보기
 
}
