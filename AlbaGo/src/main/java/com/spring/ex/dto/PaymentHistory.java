package com.spring.ex.dto;

import lombok.Data;

@Data
public class PaymentHistory {
	int payment_history_id;
	String enterprise_id;
	int advertising_id;
	int board_resume_id;
	int board_recruit_id;
	String date;
	
}
