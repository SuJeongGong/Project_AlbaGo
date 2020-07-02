package com.spring.ex.dto;

import lombok.Data;

@Data
public class Volunteer {
	int volunteer_id;//지원 id 키값
	int board_recruit_id;//공고글 id
	String board_recruit_title;//공고글 제목
	String enterprise_id;//기업id
	String individual_id;//개인 id - 지원한 사람
	String resume_title;//지원할 때 사용한 이력서 제목
	int resume_id;//지원할 때 사용한 이력서 제목
	String date; //지원 날짜
	String title;//지원한 공고글의 제목
	String memo;//메모
	String result;//결과
	String enterprise_name;//기업이름
	String name;//개인 이름
}
