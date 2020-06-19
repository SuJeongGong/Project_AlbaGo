package com.spring.ex.dto;

import lombok.Data;

@Data
public class BoardRecruit {
	int board_recruit_id;//인재글 id;
	String title;// 제목
	String memo;// 내용
	String date;// 작성날짜
	String individual_id;//개인회원 id
	int resume_id;//이력서id
	int view;//조회수
	
	
	
}
