package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.EnterpriseDAO;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;

@Service
public class EnterpriseService {
	
	@Autowired
	EnterpriseDAO enterpriseDAO;
	
	public Enterprise selectEnterprise(String id) {
		return enterpriseDAO.selectEnterprise(id);
	}
	public ArrayList<Scrap_enterprise> selectScrap(String id) {
		return enterpriseDAO.selectScrap(id);
	}
	public ArrayList<Recruit> selectRecruit(String id) {
		return enterpriseDAO.selectRecruit(id);
	}
	public ArrayList<Volunteer> selectVolunteer(String id) {
		return enterpriseDAO.selectVolunteer(id);
	}
	public int updateAccount(Enterprise enterprise) {
		return enterpriseDAO.updateAccount(enterprise);
	}
}
