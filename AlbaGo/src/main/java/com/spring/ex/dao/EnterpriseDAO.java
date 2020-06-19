package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Product;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;

public interface EnterpriseDAO {
//	List<Product> selectNow(HashMap<String, Object> map);

	Enterprise selectEnterprise(String id);
	ArrayList<Recruit> selectRecruit(String id);
	ArrayList<Scrap_enterprise> selectScrap(String id);
	ArrayList<Volunteer> selectVolunteer(String id);
	
}
