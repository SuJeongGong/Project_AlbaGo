package com.spring.ex.dto;

import lombok.Data;

@Data
public class Volunteer {
	int volunteer_id;//지원 id 키값
	int boardAnnounce_id;//공고글 id
	String enterprise_id;//기업id
	String date; //지원 날짜
	String individual_id;//개인 id
	String title;
	
}
