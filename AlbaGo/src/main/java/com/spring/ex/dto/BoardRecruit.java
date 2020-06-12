package com.spring.ex.dto;

import lombok.Data;

@Data
public class BoardRecruit {
	int boardRecruit_id;//인재글 id;
	String title;// 제목
	String memo;// 메모
	String date;// 작성날짜
	String individual_id;//개인회원 id
	int resume_id;//이력서id
	
	
	
	
}
