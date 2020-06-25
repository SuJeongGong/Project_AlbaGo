package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Individual;

public interface AdminDAO {
	//---이예슬---
	ArrayList<Individual> selectlist();

	/*############################*/
	//---임승재---
	
	//전체 인재 갯수
	int all_Count();
	
	//오늘 인재 갯수
	int today_Count();
	
	//어제 인재 갯수
	int yesterday_Count();
}
