package com.spring.ex.dto;

import lombok.Data;

@Data
public class Recruit {
	String enterprise_id;	//기업회원 id
	int recruit_id;			//공고 id
	String place;			//근무지
	String category;		// 업종
	String salary_type;		// 월급 종류
	int salary_amount;		// 월급 금액
	String term;			// 기간
	String date; 			//작성날짜
	String title; 			//제목
	String day; 			//요일
	int delete_check;		//1이면 존재, 0이면 삭제
	String time;			//일하는 시간
	String education;		//최종학력
	String age;				//나이
	String people_count;	//인원
	String gender;			//성별
}
