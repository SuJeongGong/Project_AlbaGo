package com.spring.ex.dto;

import lombok.Data;

@Data
public class Scrap_Individual {
	int scrap_id;//스크랩id
	int boardAnnounce_id;//공고글id
	String date;//스크랩한 날짜
	String individual_id;//개인회원 id
	String distinguish;//구별 - 지원인지, 스크랩인지
	String title;
	
}
