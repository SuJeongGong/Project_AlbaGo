package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.EnterpriseDAO;
import com.spring.ex.dto.Advertising;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.PaymentHistoryResume;
import com.spring.ex.dto.PaymentHistoryUp;
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

	public ArrayList<Scrap_enterprise> selectScrap(HashMap<String, Object> map) {
		return enterpriseDAO.selectScrap(map);
	}
	
	public int selectScrapCount(HashMap<String, Object> map) {
		return enterpriseDAO.selectScrapCount(map);
	}

	public ArrayList<Recruit> selectRecruits(HashMap<String, Object> map) {
		return enterpriseDAO.selectRecruits(map);
	}
	public int selectRecruitsCount(HashMap<String, Object> map) {
		return enterpriseDAO.selectRecruitsCount(map);
	}

	public ArrayList<Volunteer> selectVolunteer(HashMap<String, Object> map) {
		return enterpriseDAO.selectVolunteer(map);
	}
	
	public int selectVolunteerCount(HashMap<String, Object> map) {
		return enterpriseDAO.selectVolunteerCount(map);
	}
	
	public ArrayList<Payment> selectPayment(HashMap<String, Object> map) {//결제기록
		return enterpriseDAO.selectPayment(map);
	}
	
	public int selectPaymentCount(HashMap<String, Object> map) {//결제기록
		return enterpriseDAO.selectPaymentCount(map);
	}
	
	public ArrayList<Advertising> selectAdvertising(HashMap<String, Object> map) {//광고/배던
		return enterpriseDAO.selectAdvertising(map);
	}
	public int selectAdvertisingCount(HashMap<String, Object> map) {//광고/배던
		return enterpriseDAO.selectAdvertisingCount(map);
	}
	
	public ArrayList<PaymentHistoryResume> paymentHistoryResume(HashMap<String, Object> map) {//이력서보기 사용기록
		return enterpriseDAO.selectpaymentHistoryResume(map);
	}
	
	public int selectpaymentHistoryResumeCount(HashMap<String, Object> map) {//이력서보기 사용기록
		return enterpriseDAO.selectpaymentHistoryResumeCount(map);
	}
	
	public ArrayList<PaymentHistoryUp> paymentHistoryUp(HashMap<String, Object> map) {//up버튼 사용기록
		return enterpriseDAO.selectpaymentHistoryUp(map);
	}
	public int paymentHistoryUpCount(HashMap<String, Object> map) {//up버튼 사용기록
		return enterpriseDAO.selectpaymentHistoryUpCount(map);
	}
	public ArrayList<BoardRecruit> boardRecruits(String id) {//이력서 버튼 사용기록
		return enterpriseDAO.boardRecruits(id);
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
	public int resumeUse(String enterprise_id,int board_resume_id) {//기업회원 resume_count 횟수 줄이기, paymentHistoryResume에 기록 삽입하기
		PaymentHistoryResume paymentHistoryResume= new PaymentHistoryResume();
		paymentHistoryResume.setBoard_resume_id(board_resume_id);
		paymentHistoryResume.setEnterprise_id(enterprise_id);
		int result = 0;
		if(enterpriseDAO.insertPaymentHistoryResume(paymentHistoryResume) >=1 && enterpriseDAO.updateResume_count(enterprise_id)>=1) {
			result =1;
		}
		return result;
	}	
	public int selectResume_count(String enterprise_id) {
		return enterpriseDAO.selectResume_count(enterprise_id);
	}
	public int deleteScrap(int scrap_id) {
		return enterpriseDAO.deleteScrap(scrap_id);
	}

	public int deleteScraps(ArrayList<String> scrap_ids) {
		System.out.println("ids  "+scrap_ids);
		return forDeleteSQL(scrap_ids,"deleteScrap");
	}

	public int deleteRecruit(int recruit_id) {
		System.out.println(recruit_id);
		return enterpriseDAO.deleteRecruit(recruit_id);
	}

	public int deleteRecruits(ArrayList<String> ids) {
		return forDeleteSQL(ids,"deleteRecruit");
	}
	
	
	public int forDeleteSQL(ArrayList<String> ids,String methodName) {
		int res = 0;
		System.out.println("ids  "+ids);
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
	public int useUpcount(int board_recruit_id,String enterprise_id) {
		int res = -1;// 갯수가 1 미만일때
		// 아이디에서 up 카운트 있는지 확인, 있으면 차감후 사용 , 없으면 없다고 alert창 띄우기
		int up_count =enterpriseDAO.selectUpCount(enterprise_id);
		if (up_count>=1) {// 갯수 확인 : 1 이상이면
			res = 0;
			if (enterpriseDAO.useUpdateCount(enterprise_id)>=1) {// up횟수 사용이 성공이면
				res = 1;
				if (enterpriseDAO.boardRecruitUp(board_recruit_id)>=1) {// 글에 up 적용하기
					res = 2; // up 적용 완료시 결과
					PaymentHistoryUp paymentHistoryUp = new PaymentHistoryUp();
					paymentHistoryUp.setEnterprise_id(enterprise_id);
					paymentHistoryUp.setUp_count(up_count-1);
					paymentHistoryUp.setBoard_recruit_id(board_recruit_id);
					if(enterpriseDAO.insertPaymentHistoryUp(paymentHistoryUp)>=1) {
						res=3;//history에 저장완료 한 후에 결과
					}
				}
			}
		}
		return res;
	}
}
