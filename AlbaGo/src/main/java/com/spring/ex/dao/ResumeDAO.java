package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.BoardResume;

public interface ResumeDAO {
	//인재글쓰기
	
	ArrayList<BoardResume> selectResume(String individual_id);
}
