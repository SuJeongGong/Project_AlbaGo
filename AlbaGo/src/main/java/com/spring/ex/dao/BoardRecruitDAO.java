package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Recruit_Content;

public interface BoardRecruitDAO {
	
	//공고글 작성
	int insertBoard_recruit(BoardRecruit boardrecruit); //공고글작성
	
	//공고글 리스트
	ArrayList<BoardRecruit> selectList();
	
	//공고글 보여주기
	Recruit_Content selectView(String id);
	
	//삭제
	public void deleteBoard(String id);
	
	//수정
	int updateBoard(BoardRecruit boardrecruit);
}
