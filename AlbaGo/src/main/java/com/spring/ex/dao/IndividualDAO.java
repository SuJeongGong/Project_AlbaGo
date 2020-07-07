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
	ArrayList<Resume> selectResumeList(HashMap<String, Object> map);
	int selectResumeListCount(HashMap<String, Object> map);
	ArrayList<Scrap_Individual> selectScrap(HashMap<String, Object> map);
	int selectScrapCount(HashMap<String, Object> map);
	ArrayList<Volunteer> selectVolunteer(HashMap<String, Object> map);
	int selectVolunteerCount(HashMap<String, Object> map);
	int updateAccount(Individual individual);
	int deleteVolunteer(int volunteer_id);
	int deleteScrap(int scrap_id);
	int deleteResume(int resume_id);
	int insertResume(Resume resume);
	int insertCareer(Career career);
	int insertScrap(Scrap_Individual scrap);
	int insertVolunteer(Volunteer volunteer);
	Resume selectResume(int resume_id);
	int selectResumeCount(String id);
	ArrayList<Career> selectCareer(int resume_id);
}
