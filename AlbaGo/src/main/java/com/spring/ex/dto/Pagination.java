package com.spring.ex.dto;

import lombok.Data;

@Data
public class Pagination {
	int pageSize = 10; //한 페이지당 게시글 수 
	int rageSize = 10; //블럭당 페이지 수
	int curPage = 10;//현재  페이지 
	int curRagne ;//현재 블럭
	int listCount ;//총 리스트 수
	int pageCount ;//총 게시글 수 
	int rangeCount ;//종 페이지 수
	int startPage = 1; //시작 페이지
	int endPage = 1; //끝페이지
	int startIndex = 1; //시작 인덱스
	int prePage; // 이전페이지
	int nextPage ; //다음페이지
	
	public Pagination() {
		this(1,10);
	}
	public Pagination(int listCount, int curPage) {
		this.listCount = listCount;
		this.curPage = curPage;
	}
}
