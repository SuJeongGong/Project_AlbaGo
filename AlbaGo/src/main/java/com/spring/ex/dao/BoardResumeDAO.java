package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.BoardResume1;
import com.spring.ex.dto.Resume_Content;

public interface BoardResumeDAO {
	//인재글 리스트
	ArrayList<BoardResume1> selectList();
	
	//인재글 작성
	int insertBoard_resume(BoardResume boardresume);
	
	//인재글 보여주기
	Resume_Content selectView(String id);
}
