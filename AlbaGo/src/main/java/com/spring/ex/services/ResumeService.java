package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.ResumeDAO;
import com.spring.ex.dto.Resume;

@Service
public class ResumeService {
	
	@Autowired
	ResumeDAO resumeDAO;
	
	public ArrayList<Resume> selectResume(String individual_id) {
		return resumeDAO.selectResume(individual_id);
	}
	
}
