package com.spring.ex.dto;

import lombok.Data;

@Data
public class Scrap_enterprise {
	int scrap_id;//스크랩id
	int boardRecruit_id;//인재글 id
	String date;//스크랩날짜
	String resume_date;//인재글 작성 날짜
	String enterprise_id;//기업회원 id
	String individual_id;//인재 id
	String title;//스크랩한 인재글의 제목

	
}
