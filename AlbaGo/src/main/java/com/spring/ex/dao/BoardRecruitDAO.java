package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.Map;

import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Resume;

public interface BoardRecruitDAO {
	
	//공고글 작성
	int insertBoard_recruit(BoardRecruit boardrecruit); //공고글작성
	
	//공고글 리스트
	ArrayList<BoardRecruit> selectList();
	
	//공고글 보여주기
	BoardRecruit selectView(int id);
	
	//삭제
	int deleteBoard(int board_recruit_id);
	
	//수정
	int updateBoard(BoardRecruit boardrecruit);
	
	ArrayList<Resume> selectResumes(String individual_id);
	
	//검색
	ArrayList<BoardRecruit> total_List(Map<String, Object> map);
	
	//조회수
	int updateViews(int board_recruit_id);
}
