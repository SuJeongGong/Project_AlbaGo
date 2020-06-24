package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.RecruitDAO;
import com.spring.ex.dto.BoardRecruit;

@Service
public class RecruitService {

	@Autowired
	RecruitDAO recruitDAO;
	
	public ArrayList<BoardRecruit> selectRecruit(String enterprise_id) {
		return recruitDAO.selectRecruit(enterprise_id);
	}

}
