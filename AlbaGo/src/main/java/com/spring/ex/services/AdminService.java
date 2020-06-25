package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminDAO;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Product;
 
@Service
public class AdminService {
	@Autowired
	AdminDAO adminDAO;

	public ArrayList<Individual> selectlist() {
		return adminDAO.selectlist();
	}

	public ArrayList<Individual> selectId(String category, String search) {
		ArrayList<Individual> individuals=null;
		
		
		if(category.equals("individual_id")) {
			return adminDAO.selectIdIndividual_id(search);
		}else if(category.equals("name")) {
			return adminDAO.selectIdName(search);
		}else if(category.equals("phone")) {
			return adminDAO.selectIdPhone(search);
		}
		return null;
	}
	
	public Individual selectIndividualAccount(String id){
		return adminDAO.selectIndividualAccount(id);	
	}
	



	
	
	
	
	
	
	
	
	/* ################################################## */
	// 임승재

}
