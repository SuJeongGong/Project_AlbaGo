package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Product;

public interface EnterpriseDAO {
	List<Product> selectNow(HashMap<String, Object> map);

	List<Enterprise> selectEnterprise();

 
}
