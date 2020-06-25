package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Individual;

public interface AdminDAO {
	//---이예슬---
	ArrayList<Individual> selectlist();

	/*############################*/
	//---임승재---
	
	
	/** 공고글 관리 */
		//전체 공고 갯수
		int all_Count();
		
		//오늘 공고 갯수
		int today_Count();
		
		//어제 공고 갯수
		int yesterday_Count();
		
		//공고 게시판
		ArrayList<BoardRecruit> recruit_List();
		int deleteBoardRecruits(int boardrecruit_id);//공고 삭제하기
		ArrayList<BoardRecruit> recruit_List_id(String category, String search);//선택검색
		ArrayList<BoardRecruit> writer_search(String writer); //작성자검색
		ArrayList<BoardRecruit> title_search(String title); //제목 검색
	
	/** 인재글관리 */
		//전체 인재 갯수
		int all_Count_resume();
		
		//오늘 인재 갯수
		int today_Count_resume();
		
		//어제 인재 갯수
		int yesterday_Count_resume();
		
		//인제 게시판
		ArrayList<BoardResume> resume_List();
		int deleteBoardResumes(int boardresume_id); //인재글 삭제하기
		
	/** 커뮤니티 관리 */
		//공고 게시판
		ArrayList<BoardCommunity> community_List();
	
}
