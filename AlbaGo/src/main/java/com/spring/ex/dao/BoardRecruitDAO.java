package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardRecruit1;

public interface BoardRecruitDAO {
	
	//공고글 작성
	int insertBoard_recruit(BoardRecruit boardrecruit); //공고글작성
	
	//공고글 리스트
	ArrayList<BoardRecruit1> selectList();
}
