package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.Individual;

public interface AdminDAO {
	//---이예슬---
	ArrayList<Individual> selectlist();
	ArrayList<Individual> selectId(String category,String search);
	ArrayList<Individual> selectIdIndividual_id(String individual_id);
	ArrayList<Individual> selectIdName(String name);
	ArrayList<Individual> selectIdPhone(String phone);
	//개인 링크타고 들어오는곳

	Individual selectIndividualAccount(String id);
	/*############################*/
	//---임승재---
	
}
