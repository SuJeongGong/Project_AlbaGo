package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.IndividualDAO;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_Individual;
import com.spring.ex.dto.Volunteer;


@Service
public class IndividualService {
	@Autowired
	IndividualDAO individualDAO;
	
	public Individual selectIndividual(String id) {
		return individualDAO.selectIndividual(id);
	}
	public ArrayList<Scrap_Individual> selectScrap(String id) {
		return individualDAO.selectScrap(id);
	}
	public ArrayList<Resume> selectResumes(String id) {
		return individualDAO.selectResume(id);
	}
	public ArrayList<Volunteer> selectVolunteer(String id) {
		return individualDAO.selectVolunteer(id);
	}
	public int updateAccount(Individual individual) {
		return individualDAO.updateAccount(individual);
	}
}
