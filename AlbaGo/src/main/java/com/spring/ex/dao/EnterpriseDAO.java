package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Product;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;

public interface EnterpriseDAO {
//	List<Product> selectNow(HashMap<String, Object> map);

	Enterprise selectEnterprise(String id);
	ArrayList<BoardRecruit> selectRecruit(String id);
	ArrayList<Scrap_enterprise> selectScrap(String id);
	ArrayList<Volunteer> selectVolunteer(String id);
	int updateAccount(Enterprise enterprise);
	int updateVolunteerResult(HashMap<String, Object> map);
	int deleteScrap(int scrap_id);
	int deleteRecruit(int recruit_id);
	
}
