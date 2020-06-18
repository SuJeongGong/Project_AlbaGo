package com.spring.ex.dao;

import java.util.HashMap;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;

public interface JoinDAO {
	int insertEnterprise(Enterprise enterprise);
	int insertIndividual(Individual individual);
	
	
	String selectIndividualId(HashMap<String , String > map);
	String selectEnterpriseId(HashMap<String , String > map);
}
