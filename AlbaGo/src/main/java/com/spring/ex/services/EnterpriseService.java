package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.EnterpriseDAO;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;

@Service
public class EnterpriseService {

	@Autowired
	EnterpriseDAO enterpriseDAO;

	public Enterprise selectEnterprise(String id) {
		return enterpriseDAO.selectEnterprise(id);
	}

	public ArrayList<Scrap_enterprise> selectScrap(String id) {
		return enterpriseDAO.selectScrap(id);
	}

	public ArrayList<Recruit> selectRecruits(String id) {
		return enterpriseDAO.selectRecruits(id);
	}

	public ArrayList<Volunteer> selectVolunteer(String id) {
		return enterpriseDAO.selectVolunteer(id);
	}
	public Resume selectVolunteerResume(int resume_id) {
		Resume resume = enterpriseDAO.selectVolunteerResume(resume_id);
		resume.setCareer(enterpriseDAO.selectVolunteerCareer(resume_id));		
		return resume;
	}
	public Recruit selectRecruit(int recruit_id) {
		return enterpriseDAO.selectRecruit(recruit_id);
	}
	public int updateAccount(Enterprise enterprise) {
		return enterpriseDAO.updateAccount(enterprise);
	}

	public int updateVolunteerResult(HashMap<String, Object> map) {
		return enterpriseDAO.updateVolunteerResult(map);
	}
	
	public int insertRecruit(Recruit recruit) {
		return enterpriseDAO.insertRecruit(recruit);
	}
	public int updateVolunteerResults(HashMap<String, Object> map) {
		String result = map.get("result").toString();
		int res = 0;
		ArrayList<String> ids = (ArrayList<String>) map.get("volunteer_ids");

		for (int i = 0; i < ids.size(); i++) {
			HashMap<String, Object> data = new HashMap<String, Object>();
			data.put("volunteer_id", ids.get(i));
			data.put("result", result);
			if (1 <= enterpriseDAO.updateVolunteerResult(data)) {
				res = 1;
			}
		}

		return res;
	}

	public int insertScrap(int board_resume_id,String enterprise_id) {
		Scrap_enterprise scrap = new Scrap_enterprise();
		scrap.setEnterprise_id(enterprise_id);
		scrap.setBoard_resume_id(board_resume_id);
		return enterpriseDAO.insertScrap(scrap);
	}
	public int deleteScrap(int scrap_id) {
		return enterpriseDAO.deleteScrap(scrap_id);
	}

	public int deleteScraps(ArrayList<String> ids) {

		return forDeleteSQL(ids,"deleteRecruit");
	}

	public int deleteRecruit(int recruit_id) {
		System.out.println(recruit_id);
		return enterpriseDAO.deleteRecruit(recruit_id);
	}

	public int deleteRecruits(ArrayList<String> ids) {
		System.out.println(ids);

		return forDeleteSQL(ids,"deleteRecruit");
	}
	
	
	public int forDeleteSQL(ArrayList<String> ids,String methodName) {
		int res = 0;
		for(int i =0; i<ids.size();i++) {
			if(methodName.equals("deleteRecruit")) {
				if (1 <= enterpriseDAO.deleteRecruit(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
			else if(methodName.equals("deleteScrap")) {
				if (1 <= enterpriseDAO.deleteScrap(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
		}
		return res;
	}
}
