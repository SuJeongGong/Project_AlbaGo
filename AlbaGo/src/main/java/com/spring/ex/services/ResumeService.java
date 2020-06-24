package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.ResumeDAO;
import com.spring.ex.dto.BoardResume;

@Service
public class ResumeService {
	
	@Autowired
	ResumeDAO resumeDAO;
	
	public ArrayList<BoardResume> selectResume(String individual_id) {
		return resumeDAO.selectResume(individual_id);
	}
	
}
