package com.spring.ex.dto;

import lombok.Data;

@Data
public class Scrap_enterprise {
	int scrap_enterprise_id;//스크랩id
	int board_resume_id;//인재글 id
	String date;//스크랩날짜
	String resume_date;//인재글 작성 날짜
	String enterprise_id;//기업회원 id
	String individual_id;//인재 id
	String title;//스크랩한 인재글의 제목
	String name;//인재 이름
	String memo;//인재 메모
	String board_resume_title;// 인재글제목
	String resume_title;//이력서제목
	int resume_id;//이력서
	String individual_name;
	
	
}
