package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.List;

import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_Individual;
import com.spring.ex.dto.Volunteer;

public interface IndividualDAO {
	List<Individual> selectIndividual();
	
	Individual selectIndividual(String id);
	ArrayList<Resume> selectResume(String id);
	ArrayList<Scrap_Individual> selectScrap(String id);
	ArrayList<Volunteer> selectVolunteer(String id);
	int updateAccount(Individual individual);
}
