package com.spring.ex.dto;

import lombok.Data;

@Data
public class BoardRecruit { //공고
	int board_recruit_id;//공고글 id;
	String title;// 제목
	int views;//조회수
	String place;//장소
	String memo;// 메모
	String date;// 작성날짜
	String enterprise_id;//기업회원 id
	int recruit_id;//공고id
	int delete_check;//삭제됐는지 안됐는지 안됐으면 1?
}

