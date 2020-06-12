package com.spring.ex.dto;

import lombok.Data;

@Data
public class Enterprise {
	String enterprise_id;//아이디
	String password;//비밀번호
	String business_number;//사업자번호
	String name;//기업이름
	String manager_name;//담당자이름
	String manager_phone;//담당자연락처
	String category;//기업카테고리
	int resume_count;//이력서보는 횟수
	int up_count;//up 횟수
	String date;
	
	
}
