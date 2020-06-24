package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.BoardResume;

public interface BoardResumeDAO {
	//인재글 작성
	int insertBoard_resume(BoardResume boardresume);

	//인재글 리스트
	ArrayList<BoardResume> selectList();
	
	//인재글 보여주기
	BoardResume selectView(int id);
	
	//삭제
	int deleteBoard(int board_resume_id);
	
	//수정
	int updateBoard(BoardResume boardresume);
}
