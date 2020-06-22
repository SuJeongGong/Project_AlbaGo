package com.spring.ex.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.RecruitDAO;

@Service
public class RecruitService {

	@Autowired
	RecruitDAO recruitDAO;

}
