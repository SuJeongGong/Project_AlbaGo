package com.spring.ex.dto;

import lombok.Data;

@Data
public class BoardResume { //인재
	int board_resume_id;//인재글 id;
	String board_resume_title;// 인재글제목
	String place;// 장소
	String memo;// 내용
	String date;// 작성날짜
	String individual_id;//개인회원 id
	int resume_id;//이력서id
	int views;//조회수
	int delete_check;//삭제됐는지안됐는지
	String name;			//개인 이름
	String gender;			//성별
	String birth;			//나이
	String phone;			//폰번호
	String education;		//최종학력
	String salary_type;		//주급
	int salary_amount;	//돈
	String category;		//카테고리
	String term;			//몇개월
	String time;			//시간
	String day;				//월~금
	String resume_title;//이력서
}
