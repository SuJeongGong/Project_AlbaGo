package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.Resume;

public interface ResumeDAO {
	//인재글쓰기
	
	ArrayList<Resume> selectResume(String individual_id);
}
