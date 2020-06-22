package com.spring.ex.dto;

import lombok.Data;

@Data
public class Resume_Content {
	String name;			//개인 이름
	String gender;			//성별
	String birth;			//나이
	String phone;			//폰번호
	String education;		//최종학력
	String place;			//장소
	String salary_type;		//주급
	String salary_amount;	//돈
	String category;		//카테고리
	String term;			//몇개월
	String time;			//시간
	String day;				//월~금
	String title;			//제목
	String memo;			//내용
	String date;			//날짜
	int delete_check;	//삭제 되었는지 안되었는지
}
