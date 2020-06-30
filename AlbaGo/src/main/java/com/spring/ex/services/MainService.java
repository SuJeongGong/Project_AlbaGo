package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminDAO;
import com.spring.ex.dao.MainDAO;

@Service
public class MainService {
	@Autowired
	MainDAO mainDAO;
	
	public ArrayList<HashMap<String, Object>> selectAdvertising(){
		return mainDAO.selectAdvertising();
	}
	
	
}
