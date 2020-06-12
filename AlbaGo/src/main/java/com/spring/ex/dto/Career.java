package com.spring.ex.dto;

import lombok.Data;

@Data
public class Career {
	int career_id;//경력사항 id ( 키값 )
	String name;//기업이름
	String startDate;//시작날짜
	String endDate;//끝난날짜
	String task;//맡은엄무

	
}
