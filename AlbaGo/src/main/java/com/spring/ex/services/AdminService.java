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


	/*##################################################*/
	//임승재
	//전체 인재 갯수
	public int all_Count() {
		return adminDAO.all_Count();
	}
	
	//오늘쓴 인재 갯수
	public int today_Count() {
		return adminDAO.today_Count();
	}
	
	//오늘쓴 인재 갯수
	public int yesterday_Count() {
		return adminDAO.yesterday_Count();
	}

}
