package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Product;

public interface EnterpriseDAO {
	List<Product> selectNow(HashMap<String, Object> map);

	Enterprise selectEnterprise(String id);
	ArrayList<HashMap<String, String>> selectRecruit(String id);
	ArrayList<HashMap<String, String>> selectScrap(String id);
	ArrayList<HashMap<String, String>> selectVolunteer(String id);
	
}
