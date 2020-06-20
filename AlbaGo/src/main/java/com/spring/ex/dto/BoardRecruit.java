package com.spring.ex.dto;

import lombok.Data;

@Data
public class BoardRecruit { //공고
	int board_recruit_id;//공고글 id;
	String title;// 제목
	String views;//조회수
	String memo;// 메모
	String date;// 작성날짜
	String enterprise_id;//기업회원 id
	int recruit_id;//공고id
}

