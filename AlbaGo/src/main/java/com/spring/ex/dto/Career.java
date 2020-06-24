package com.spring.ex.dto;

import lombok.Data;

@Data
public class Career {
	int career_id;//경력사항 id ( 키값 )
	int resume_id;//경력사항 id ( 키값 )
	String name;//기업이름
	String start_date;//시작날짜
	String end_date;//끝난날짜
	String task;//맡은엄무

	
}
