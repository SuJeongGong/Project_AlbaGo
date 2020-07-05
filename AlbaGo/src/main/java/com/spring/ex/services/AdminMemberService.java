package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminMemberDAO;
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

@Service
public class AdminMemberService {
	@Autowired
	AdminMemberDAO adminMemberDAO;

	// 개인회원 리스트 - 검색까지 한번에
	public ArrayList<Individual> selectIndividual(String category, String search, int page) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("search", search);
		map.put("page", page);
		System.out.println(map);
		return adminMemberDAO.selectIndividual(map);
	}

	// 개인회원 리스트 갯수
	public int selectIndividualCount(String category, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("search", search);
		return adminMemberDAO.selectIndividualCount(map);
	}

	// 개인 상세페이지 - 개인회원정보 '상세정보'를 볼수있는 테이블
	public Individual selectIndividualAccount(String invididual_id) {
		return adminMemberDAO.selectIndividualAccount(invididual_id);
	}

	// 개인 상세페이지 - 개인회원정보 '수정' ajax
	public int updateIndividualAccount(Individual individual) {
		return adminMemberDAO.updateIndividualAccount(individual);
	}

	// 개인 상세페이지 - 개인 계정상태 변경
	public int changestate(String individual_id, int result) {
		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("individual_id", individual_id);
		map.put("result", result);
		return adminMemberDAO.invididualChangestate(map);
	}

	// 개인 상세페이지 - 이력서 보기
	public ArrayList<Resume> selectResume(String invididual_id) {
		return adminMemberDAO.selectResume(invididual_id);
	}

	// 개인 상세페이지 - 이력서 삭제 ajax
	public int deleteResume(int resume_id) {
		return adminMemberDAO.deleteResume(resume_id);
	}

	// 개인 상세페이지 - 지원한 알바
	public ArrayList<Volunteer> selectApplypartjob(String invididual_id) {
		return adminMemberDAO.selectApplypartjob(invididual_id);
	}

	// 개인 상세페이지 - 지원 취소 ajax
	public int deleteVolunteer(int volounteer_id) {

		System.out.println(adminMemberDAO.deleteVolunteer(volounteer_id));
		return adminMemberDAO.deleteVolunteer(volounteer_id);
	}

	// 개인 상세페이지 - 인재 게시판 작성글
	public ArrayList<BoardResume> selectResumeWrite(String invididual_id) {
		return adminMemberDAO.selectResumeWrite(invididual_id);
	}

	// 개인 상세페이지 - 인재 게시판 삭제 ajax
	public int deletBoardResume(int board_resume_id) {
		System.out.println(board_resume_id);
		System.out.println(adminMemberDAO.deletBoardResume(board_resume_id));
		return adminMemberDAO.deletBoardResume(board_resume_id);
	}

	// 개인 상세페이지 - 커뮤니티 게시판 작성글
	public ArrayList<BoardCommunity> selectCommunity(String invididual_id) {
		return adminMemberDAO.selectCommunity(invididual_id);
	}

	// 개인 상세페이지 - 커뮤니티 게시판 삭제 ajax
	public int deleteCommunity(int community_id) {
		int res = -1;

		if (adminMemberDAO.deleteComments(community_id) >= 1) {// 댓글부터 삭제
			if (adminMemberDAO.deleteCommunity(community_id) >= 1) {
				res = 1;
			}
		} else {// 댓글이 없는경우, 댓글 삭제를 못한경우
			res = adminMemberDAO.deleteCommunity(community_id);
		}
		return res;
	}

	// 개인 상세페이지 - 개인회원 스크랩
	public ArrayList<Scrap_Individual> selectEnterpriseScrap(String invididual_id) {
		return adminMemberDAO.selectEnterpriseScrap(invididual_id);
	}

	// 개인 상세페이지 - 기업스크랩 삭제
	public int deleteEnterpriseScrap(int scrap_individual_id) {
		return adminMemberDAO.deleteEnterpriseScrap(scrap_individual_id);
	}

	// ########################################################################################################
	// 기업회원
	// 기업회원정보 '리스트'전체를 보여주는 테이블
	public ArrayList<Enterprise> selectEnterprise(String category, String search, int page) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("search", search);
		map.put("page", page);

		return adminMemberDAO.selectEnterprise(map);
	}
	public int selectEnterpriseCount(String category, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("search", search);		
		return adminMemberDAO.selectEnterpriseCount(map);
	}

	// 기업회원정보 '상세정보'를 볼수있는 테이블
	public Enterprise selectEnterpriseAccount(String id) {
		return adminMemberDAO.selectEnterpriseAccount(id);
	}

	// 기업회원정보수정할수있는
	public int updateEnterpriseAccount(Enterprise enterprise) {
		System.out.println(enterprise);
		return adminMemberDAO.updateEnterpriseAccount(enterprise);
	}

	// 기업 계정정지
	public int changeEnterprisestate(String enterprise_id, int result) {

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("enterprise_id", enterprise_id);
		map.put("result", result);
		return adminMemberDAO.changeEnterprisestate(map);
	}

	// 공고 관리
	public ArrayList<Recruit> selectRecruit(String id) {
		return adminMemberDAO.selectRecruit(id);
	}

	// 공고 삭제
	public int deleteEnterpriseRecruit(int recruit_id) {
		return adminMemberDAO.deleteEnterpriseRecruit(recruit_id);
	}

	// 공고글 삭제
	public int deleteEnterpriseBoardRecruit(int board_recruit_id) {
		System.out.println("공고글삭제" + board_recruit_id);
		return adminMemberDAO.deleteEnterpriseBoardRecruit(board_recruit_id);
	}

	// 공고글 관리
	public ArrayList<BoardRecruit> selectRecruitWrite(String id) {
		return adminMemberDAO.selectRecruitWrite(id);
	}

	// 인재스크랩
	public ArrayList<Scrap_enterprise> selectScrap(String id) {
		return adminMemberDAO.selectScrap(id);
	}

	// 인재스크랩 삭제
	public int deleteScrap(int scrap_id) {
		return adminMemberDAO.deleteScrap(scrap_id);
	}

	// 상품결제내역
	public ArrayList<Payment> selectPayment(String id) {
		return adminMemberDAO.selectPayment(id);
	}

	// 상품 총계
	public Product sumPayment(String id) {
		return adminMemberDAO.sumPayment(id);
	}
}
