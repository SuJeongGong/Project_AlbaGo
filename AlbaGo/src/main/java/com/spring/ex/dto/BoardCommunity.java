package com.spring.ex.dto;

import lombok.Data;

@Data
/* @AllArgsConstructor */ 
public class BoardCommunity {
	int community_id;//키값
	String title;//제목
	String contents;//내용
	String individual_id;//개인회원 ( 작성자 ) id
	String date;//작성날짜
	int views;//조회수
	int count;//댓글갯수
	int delete_check;
	String name;//individual 이름 #추가 #
	
	
}
