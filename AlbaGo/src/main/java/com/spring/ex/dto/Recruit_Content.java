package com.spring.ex.dto;

import lombok.Data;

@Data
public class Recruit_Content {
	String name;			//기업 이름
	String manager_name;	//매니저이름
	String manager_phone;	//매니저폰
	String Enter_category;	//기업 카테고리
	String address;			//기업주소
	String place;			//공고 기업위치
	String salay_type;		//공고 주급, 월급
	String salay_amount;	//공고 돈
	String Recruit_category;//공고 카테고리
	String term;			//공고 몇개월
	String time;			//공고 시간
	String day;				//공고 월~금
	String education;		//공고 최종학력
	String gender;			//공고 성별
	String age;				//공고 나이
	String people_count;	//공고 모집인원
	String title;			//공고글 제목
	String memo;			//공고글 내용
	String date;			//공고글 쓴 날짜
}