package com.spring.ex.dto;


import lombok.Data;

@Data
public class BoardCommunity {
	int community_id;//키값
	String title;//제목
	String contents;//내용
	String individual_id;//개인회원 ( 작성자 ) id
	String date;//작성날짜
	int views;//조회수
	
	
	
}
