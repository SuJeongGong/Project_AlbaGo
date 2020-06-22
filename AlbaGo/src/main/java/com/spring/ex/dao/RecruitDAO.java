package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.Recruit;

public interface RecruitDAO {
	//공고 글쓰기
	
	 ArrayList<Recruit> selectRecruit(String enterprise_id);
	
}
