package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.EnterpriseDAO;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Recruit;
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

	public ArrayList<Recruit> selectRecruit(String id) {
		return enterpriseDAO.selectRecruit(id);
	}

	public ArrayList<Volunteer> selectVolunteer(String id) {
		return enterpriseDAO.selectVolunteer(id);
	}

	public int updateAccount(Enterprise enterprise) {
		return enterpriseDAO.updateAccount(enterprise);
	}

	public int updateVolunteerResult(HashMap<String, Object> map) {
		return enterpriseDAO.updateVolunteerResult(map);
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

	public int deleteScrap(int scrap_id) {
		return enterpriseDAO.deleteScrap(scrap_id);
	}

	public int deleteScraps(ArrayList<String> ids) {
		int res = 0;

		for (int i = 0; i < ids.size(); i++) {

			if (1 <= enterpriseDAO.deleteScrap(Integer.parseInt(ids.get(i)))) {
				res = 1;
			}
		}

		return res;
	}

	public int deleteRecruit(int recruit_id) {
		System.out.println(recruit_id);
		return enterpriseDAO.deleteRecruit(recruit_id);
	}

	public int deleteRecruits(ArrayList<String> ids) {
		int res = 0;
		System.out.println(ids);

		for (int i = 0; i < ids.size(); i++) {

			if (1 <= enterpriseDAO.deleteRecruit(Integer.parseInt(ids.get(i)))) {
				res = 1;
			}
		}

		return res;
	}
}
