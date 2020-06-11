package com.spring.ex.Dao;

import java.util.HashMap;
import java.util.List;

import com.spring.ex.Dto.Enterprise;
import com.spring.ex.Dto.Product;

public interface EnterpriseDAO {
	List<Product> selectNow(HashMap<String, Object> map);

	List<Enterprise> selectEnterprise();
}
