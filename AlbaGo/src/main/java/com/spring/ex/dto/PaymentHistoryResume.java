package com.spring.ex.dto;

import lombok.Data;

@Data
public class PaymentHistoryResume {
	int payment_history_id;//사용기록 키값
	String enterprise_id;//사용한 기업회원 아이디
	String board_resume_title;//사용한 기업회원 아이디
	String resume_phone;//사용한 기업회원 아이디
	int board_resume_id;//사용한 인재글
	int resume_count;//기업회원의 남은 이력서 보기 횟수
	String date;//사용한 날짜
	
}
