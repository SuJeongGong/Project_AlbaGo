package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring.ex.dto.Advertising;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Career;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.PaymentHistoryResume;
import com.spring.ex.dto.PaymentHistoryUp;
import com.spring.ex.dto.Product;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;

public interface EnterpriseDAO {
	Enterprise selectEnterprise(String id);//회원정보 가져오기 
	ArrayList<Recruit> selectRecruits(HashMap<String, Object> map);//공고 가져오기 
	int selectRecruitsCount(HashMap<String, Object> map);//공고 페이징
	ArrayList<Scrap_enterprise> selectScrap(HashMap<String, Object> map);//스크랩 가져오기
	int selectScrapCount(HashMap<String, Object> map);//스크랩 페이징
	ArrayList<Volunteer> selectVolunteer(HashMap<String, Object> map);//지원자 목록 가져오기
	int selectVolunteerCount(HashMap<String, Object> map);//지원자 목록 페이징
	ArrayList<Payment> selectPayment(HashMap<String, Object> map);//결제 기록 가져오기
	int selectPaymentCount(HashMap<String, Object> map);//결제 기록 페이징
	ArrayList<Advertising> selectAdvertising(HashMap<String, Object> map);//광고/배너 기록
	int selectAdvertisingCount(HashMap<String, Object> map);//광고/배너 페이징
	ArrayList<PaymentHistoryResume> selectpaymentHistoryResume(HashMap<String, Object> map);//이력서 보기 사용기록
	int selectpaymentHistoryResumeCount(HashMap<String, Object> map);//이력서 보기 페이징
	ArrayList<PaymentHistoryUp> selectpaymentHistoryUp(HashMap<String, Object> map);//up버튼 id 사용기록
	int selectpaymentHistoryUpCount(HashMap<String, Object> map);//up버튼 id 페이징
	
	
	
	ArrayList<BoardRecruit> boardRecruits(String id) ;
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
	int insertPaymentHistoryResume(PaymentHistoryResume paymentHistory);//board_resume에서 연락처 뽑아오기
	//기업회원의 resume_count 가져오기
	int selectResume_count(String enterprise_id);
	
	int selectUpCount(String enterprise_id);
	int useUpdateCount(String enterprise_id);
	int boardRecruitUp(int board_recruit_id);
	int insertPaymentHistoryUp(PaymentHistoryUp paymentHistoryUp);
}
