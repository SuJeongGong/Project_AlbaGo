package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_Individual;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;

public interface AdminMemberDAO {
	//개인  ########################################################################################
	ArrayList<Individual> selectIndividual(HashMap<String, Object> map);
	int selectIndividualCount(HashMap<String, Object> map) ;
	
	//개인 상세페이지 보기
	Individual selectIndividualAccount(String invididual_id);//계정정보
	ArrayList<Resume> selectResume(String individual_id);//이력서
	ArrayList<BoardCommunity> selectCommunity(String individual_id) ;//커뮤니티클
	ArrayList<BoardResume> selectResumeWrite(String individual_id);//인재글
	ArrayList<Volunteer> selectApplypartjob(String individual_id);//지원
	ArrayList<Scrap_Individual> selectEnterpriseScrap(String id);//스크랩
	
	//수정
	int updateIndividualAccount(Individual individual);//계정정보
	int invididualChangestate(HashMap<String, Object> map) ;//계정상태
	
	
	//삭제 
	int deleteResume(int resume_id);//이력서
	int deleteVolunteer(int volounteer_id);//지원
	int deletBoardResume(int board_resume_id);//인재글
	int deleteComments(int community_id); //커뮤니티 댓글
	int deleteCommunity(int community_id); //커뮤니티 글
	int deleteEnterpriseScrap(int scrap_individual_id);//스크랩
	

	//기업 리스트 ########################################################################################
	ArrayList<Enterprise> selectEnterprise(HashMap<String, Object> map);
	int selectEnterpriseCount(HashMap<String, Object> map);
	
	//상세페이지 보기
	Enterprise selectEnterpriseAccount(String enterprise_id);
	ArrayList<Recruit> selectRecruit(String enterprise_id);//공고관리
	ArrayList<BoardRecruit> selectRecruitWrite(String enterprise_id);//공고글관리
	ArrayList<Scrap_enterprise> selectScrap(String enterprise_id);//인재스크랩
	ArrayList<Payment> selectPayment(String enterprise_id);//상품결제내역
	Product sumPayment(String enterprise_id);//상품 총 금액
	
	//수정
	int updateEnterpriseAccount(Enterprise enterprise);//계정정보
	int changeEnterprisestate(HashMap<String, Object> map);//계정상태
	
	//삭제
	int deleteEnterpriseRecruit(int recruit_id);//공고
	int deleteEnterpriseBoardRecruit(int board_recruit_id);//공고글
	int deleteScrap(int scrap_id);//인재스크랩
}
