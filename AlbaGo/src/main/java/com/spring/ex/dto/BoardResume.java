package com.spring.ex.dto;

import lombok.Data;

@Data
public class BoardResume { //인재
	int board_resume_id;//인재글 id;
	String title;// 제목
	String place;// 장소
	String memo;// 내용
	String date;// 작성날짜
	String individual_id;//개인회원 id
	int resume_id;//이력서id
	int views;//조회수
	int delete_check;//삭제됐는지안됐는지
}
