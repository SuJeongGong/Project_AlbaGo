package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminDAO;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Volunteer;
 
@Service
public class AdminService {
	@Autowired
	AdminDAO adminDAO;
	
	//개인회원정보 '리스트'전체를 보여주는 테이블
	public ArrayList<Individual> selectlist() {
		return adminDAO.selectlist();
	}
	//개인회원정보에서 카테고리를 선택해서 검색
	public ArrayList<Individual> selectId(String category, String search) {
		ArrayList<Individual> individuals=null;
		
		if(category.equals("individual_id")) {
			return adminDAO.selectIdIndividual_id(search);
		}else if(category.equals("name")) {
			return adminDAO.selectIdName(search);
		}else if(category.equals("phone")) {
			return adminDAO.selectIdPhone(search);
		}
		return null;
	}
	//개인회원정보 '상세정보'를 볼수있는 테이블
	public Individual selectIndividualAccount(String id){
		return adminDAO.selectIndividualAccount(id);	
	}
	//이력서 관리를 할 수 있는 테이블
	public ArrayList<Resume> selectResume(String id) {
		return adminDAO.selectResume(id);	
	}
	//지원한 알바
	public ArrayList<Volunteer> selectApplypartjob(String id){
		return adminDAO.selectApplypartjob(id);
	}
	//인재 게시판 작성글
	public ArrayList<BoardResume> selectResumeWrite(String id) {
		return adminDAO.selectResumeWrite(id);	
	}



	
	
	/* ################################################## */
	// 임승재

}
