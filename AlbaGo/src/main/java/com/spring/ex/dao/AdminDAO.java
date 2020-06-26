package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Volunteer;

public interface AdminDAO {
	//---이예슬---
	//## 관리자페이지 ##
	ArrayList<Individual> selectlist(); //개인회원정보 전체를 보여주는 테이블
	//개인회원정보에서 카테고리를 선택해서 검색
	ArrayList<Individual> selectId(String category,String search);
	ArrayList<Individual> selectIdIndividual_id(String individual_id);
	ArrayList<Individual> selectIdName(String name);
	ArrayList<Individual> selectIdPhone(String phone);
	//<!-- 개인관리자 링크타고 -->
	//<!-- 개인 회원 정보 -->
	Individual selectIndividualAccount(String id);
	//<!-- 이력서 관리 -->
	ArrayList<Resume> selectResume(String id);
	//<!-- 지원한 알바-->
	ArrayList<Volunteer> selectApplypartjob(String id);
	
	/*############################*/
	//---임승재---
	
}
