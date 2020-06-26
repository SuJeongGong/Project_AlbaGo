package com.spring.ex.dto;


import com.sun.tracing.dtrace.ArgsAttributes;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
/* @AllArgsConstructor */ 
public class BoardComment {
	int comment_id;//키값
	int community_id;// 커뮤니티글 아이디
	String individual_id;//개인회원 ( 작성자 ) id
	String date;//작성날짜
	String contents;//내용
	
	
}
