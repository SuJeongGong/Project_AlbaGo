package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring.ex.dto.Career;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.PaymentHistory;
import com.spring.ex.dto.Product;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;

public interface EnterpriseDAO {
	Enterprise selectEnterprise(String id);//회원정보 가져오기 
	ArrayList<Recruit> selectRecruits(String id);//공고 가져오기 
	ArrayList<Scrap_enterprise> selectScrap(String id);//스크랩 가져오기
	ArrayList<Volunteer> selectVolunteer(String id);//지원자 목록 가져오기
	int updateAccount(Enterprise enterprise);//회원정보 수정
	int updateVolunteerResult(HashMap<String, Object> map);//지원결과 저장하기
	int deleteScrap(int scrap_id);//스크랩 삭제하기
	int deleteRecruit(int recruit_id);//공고 삭제하기
	int insertRecruit(Recruit recruit);
	Recruit selectRecruit(int recruit_id);
	Resume selectVolunteerResume(int resume_id);//지원자의 지원 이력서 가져오기
	ArrayList<Career> selectVolunteerCareer(int resume_id);//지원자의 지원 이력서중에 경력 가져오기
	int insertScrap(Scrap_enterprise scrap);//기업이 인재 스크랩 추가하기
	
	
	int updateResume_count(String  enterprise_id);//기업 Resume_count 하나 줄이기 
	int insertPaymentHistory(PaymentHistory paymentHistory);//board_resume에서 연락처 뽑아오기
}
