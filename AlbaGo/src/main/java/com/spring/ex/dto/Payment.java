package com.spring.ex.dto;

import lombok.Data;

@Data
public class Payment {
	int payment_id;//결제 id
	String individual_id;//개인회원 id
	String enterprise_id;//기업회원 id
	String date;//결제날짜
	String product_id;//상품id 
	

	
}
