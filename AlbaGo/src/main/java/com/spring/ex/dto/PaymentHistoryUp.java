package com.spring.ex.dto;

import lombok.Data;

@Data
public class PaymentHistoryUp {
	int payment_history_up_id; //테이블 키값
	String enterprise_id; //사용한 기업회원 아이디
	String board_recruit_title; //사용한 기업회원 아이디
	int board_recruit_id;//사용한 공고글 id
	int up_count;//기업회원의 남은 up버튼 갯수
	String date; //사용한 날짜
}
