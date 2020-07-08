package com.spring.ex.services;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.JoinDAO;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;
@Service
public class JoinService {
	
	@Autowired
	JoinDAO joinDAO;
	
	//회원가입
	public int insertEnterprise(Enterprise enterprise) {
		return joinDAO.insertEnterprise(enterprise);
	}
	
	public int selectCheckId_e(String id) {
		return joinDAO.selectCheckId_e(id);
	}
	
	public int insertIndividual(Individual individual) {
		return joinDAO.insertIndividual(individual);
	}
	
	public int selectCheckId(String id) {
		return joinDAO.selectCheckId(id);
	}
	
	
	
	
	public String selectIndividualId(HashMap<String , String > map) {
		return joinDAO.selectIndividualId(map);
	}
	
	
	public String selectEnterpriseId(HashMap<String , String > map) {
		return joinDAO.selectEnterpriseId(map);
	}
	
	
	public int updateIndividualPW(HashMap<String , String > map) {
		return joinDAO.updateIndividualPW(map);
	}
	
	
	public int updateEnterprisePW(HashMap<String , String > map) {
		return joinDAO.updateEnterprisePW(map);
	}
	
	
	
	public int selectCheckEnterpriseId(String id) {
		return joinDAO.selectCheckEnterpriseId(id);
	}
	
	
	public int selectCheckEnterprisePw(String id) {
		return joinDAO.selectCheckEnterprisePw(id);
	}
	
	
	public int selectCheckIndividualId(String id) {
		return joinDAO.selectCheckIndividualId(id);
	}
	
	
	public int selectCheckIndividualPw(String id) {
		return joinDAO.selectCheckIndividualPw(id);
	}
	
	public int selectCheckEnterpriseState(String id) {
		return joinDAO.selectCheckEnterpriseState(id);
	}
	public int selectCheckIndividualState(String id) {
		return joinDAO.selectCheckIndividualState(id);
	}


}
