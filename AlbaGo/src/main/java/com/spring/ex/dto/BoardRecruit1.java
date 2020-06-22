package com.spring.ex.dto;
import lombok.Data;

@Data
public class BoardRecruit1 { //공고 리스트
	int board_recruit_id;//글번호
	String title;// 제목
	String place;// 장소
	String date;// 작성날짜
	int views;//조회수
}