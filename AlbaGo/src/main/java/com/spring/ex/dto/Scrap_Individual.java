package com.spring.ex.dto;

import lombok.Data;

@Data
public class Scrap_Individual {
	int scrap_id;//스크랩id
	int boardAnnounce_id;//공고글id
	String individual_id;//개인회원 아이디
	String date;//스크랩한 날짜
	String recruit_date;//공고글 작성 날짜
	String title;//공고글 제목
	String name;//기업이름
	
}
