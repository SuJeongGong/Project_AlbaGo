package com.spring.ex.services;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.ex.dao.JoinDAO;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;

public class JoinService {
	
	@Autowired
	JoinDAO joinDAO;
	
	//회원가입
	int insertEnterprise(Enterprise enterprise) {
		return joinDAO.insertEnterprise(enterprise);
	}
	
	int selectCheckId_e(String id) {
		return joinDAO.selectCheckId_e(id);
	}
	
	int insertIndividual(Individual individual) {
		return joinDAO.insertIndividual(individual);
	}
	
	int selectCheckId(String id) {
		return joinDAO.selectCheckId(id);
	}
	
	
	
	
	String selectIndividualId(HashMap<String , String > map) {
		return joinDAO.selectIndividualId(map);
	}
	
	
	String selectEnterpriseId(HashMap<String , String > map) {
		return joinDAO.selectEnterpriseId(map);
	}
	
	
	int updateIndividualPW(HashMap<String , String > map) {
		return joinDAO.updateIndividualPW(map);
	}
	
	
	int updateEnterprisePW(HashMap<String , String > map) {
		return joinDAO.updateEnterprisePW(map);
	}
	
	
	
	String selectCheckEnterpriseId(HashMap<String , String > map) {
		return joinDAO.selectIndividualId(map);
	}
	
	
	String selectCheckEnterprisePw(HashMap<String , String > map) {
		return joinDAO.selectEnterpriseId(map);
	}
	
	
	int selectCheckIndividualId(HashMap<String , String > map) {
		return joinDAO.updateIndividualPW(map);
	}
	
	
	int selectCheckIndividualPw(HashMap<String , String > map) {
		return joinDAO.updateEnterprisePW(map);
	}


}
