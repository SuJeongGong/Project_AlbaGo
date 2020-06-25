package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminDAO;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;

@Service
public class AdminService {
	@Autowired
	AdminDAO adminDAO;

	public ArrayList<Individual> selectlist() {
		return adminDAO.selectlist();
	}



}
