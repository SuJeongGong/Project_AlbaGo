package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring.ex.dto.Career;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_Individual;
import com.spring.ex.dto.Volunteer;

public interface IndividualDAO {
	List<Individual> selectIndividual();
	
	Individual selectIndividual(String id);
	ArrayList<Resume> selectResumeList(String id);
	ArrayList<Scrap_Individual> selectScrap(String id);
	ArrayList<Volunteer> selectVolunteer(String id);
	int updateAccount(Individual individual);
	int deleteVolunteer(int volunteer_id);
	int deleteScrap(int scrap_id);
	int deleteResume(int resume_id);
	int insertResume(Resume resume);
	int insertCareer(Career career);
	int insertScrap(Scrap_Individual scrap);
	int insertVolunteer(Volunteer volunteer);
	Resume selectResume(int resume_id);
	ArrayList<Career> selectCareer(int resume_id);
}
