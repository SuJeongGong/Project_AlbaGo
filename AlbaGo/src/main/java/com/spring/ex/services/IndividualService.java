package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;

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
	

	public int deleteVolunteer(int volunteer_id) {
		System.out.println(volunteer_id);
		return individualDAO.deleteVolunteer(volunteer_id);
	}

	public int deleteVolunteer(ArrayList<String> ids) {
		return forDeleteSQL(ids,"deleteVolunteer");
	}

	public int deleteScrap(int scrap_id) {
		return individualDAO.deleteScrap(scrap_id);
	}

	public int deleteScrap(ArrayList<String> ids) {

		return forDeleteSQL(ids,"deleteScrap");
	}

	public int deleteResume(int resume_id) {
		System.out.println("서비스에서"+resume_id);
		return individualDAO.deleteResume(resume_id);
	}

	public int deleteResume(ArrayList<String> ids) {
		System.out.println(ids);

		return forDeleteSQL(ids,"deleteResume");
	}
	
	
	public int forDeleteSQL(ArrayList<String> ids,String methodName) {
		int res = 0;
		for(int i =0; i<ids.size();i++) {
			if(methodName.equals("deleteResume")) {
				if (1 <= individualDAO.deleteResume(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
			else if(methodName.equals("deleteScrap")) {
				if (1 <= individualDAO.deleteScrap(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
			else if(methodName.equals("deleteVolunteer")) {
				if (1 <= individualDAO.deleteVolunteer(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
		}
		return res;
	}
}
