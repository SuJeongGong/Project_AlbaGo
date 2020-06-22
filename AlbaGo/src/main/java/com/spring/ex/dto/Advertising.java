package com.spring.ex.dto;

import lombok.Data;

@Data
public class Advertising {
	int payment_id;// 결제 id
	int advertising_id;// 광고id
	int announce_id;// 공고글id
	String startDate;// 시작날짜
	String endDate;// 끝날짜
	String title;// 광고문구


}
