package com.spring.ex.dto;

import lombok.Data;

@Data
public class Advertising {
	int payment_id;// 결제 id
	int advertising_id;// 광고id
	int board_recruit_id;// 공고글id
	String board_recruit_title;// 공고글 제목
	String start_date;// 시작날짜
	String end_date;// 끝날짜
	String title;// 광고문구
}
