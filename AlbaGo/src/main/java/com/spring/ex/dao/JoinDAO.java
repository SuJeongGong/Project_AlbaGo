package com.spring.ex.dao;

import java.util.HashMap;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;

public interface JoinDAO {
	
	//회원가입
	int insertEnterprise(Enterprise enterprise);//기업
	int selectCheckId_e(String e_id);//기업 아이디 체크
	int insertIndividual(Individual individual);//개인
	int selectCheckId(String id);//개인아이디체크
	
	
	//찾기
	//아이디
	//비번
	String selectIndividualId(HashMap<String , String > map);
	String selectEnterpriseId(HashMap<String , String > map);
	int updateIndividualPW(HashMap<String , String > map);
	int updateEnterprisePW(HashMap<String , String > map);
	
	
	
	
	//로그인
	int selectCheckEnterpriseId(String id);// 기업  - 아이디 맞는지 확인
	int selectCheckEnterprisePw(String pw);// 기업  - 비밀번호 맞는지 확인
	
	int selectCheckIndividualId(String id);// 개인  - 아이디 맞는지 확인
	int selectCheckIndividualPw(String pw);//개인 - 비밀번호 맞는지 확인
	
	int selectCheckIndividualState(String id);//개인 - 계정상태 확인
	int selectCheckEnterpriseState(String id);//기업 - 계정상태 확인
}
