  
package com.spring.ex.dto;

import lombok.Data;

@Data
public class Payment {
	int payment_id;//결제 id
	int product_id;//상품id 
	int product_price;//상품 가격
	String product_name;//상품 이름
	String enterprise_id;//기업회원 id
	String date;//결제날짜
 
}