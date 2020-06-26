package com.spring.ex.dao;

import java.util.ArrayList;

import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Volunteer;

public interface AdminDAO {
	//---이예슬---
	//## 관리자페이지 ##
	ArrayList<Individual> selectlist(); //개인회원정보 전체를 보여주는 테이블
	//개인회원정보에서 카테고리를 선택해서 검색
	ArrayList<Individual> selectId(String category,String search);
	ArrayList<Individual> selectIdIndividual_id(String individual_id);
	ArrayList<Individual> selectIdName(String name);
	ArrayList<Individual> selectIdPhone(String phone);
	//<!-- 개인관리자 링크타고 -->
	//<!-- 개인 회원 정보 -->
	Individual selectIndividualAccount(String id);
	//<!-- 이력서 관리 -->
	ArrayList<Resume> selectResume(String id);
	//<!-- 지원한 알바-->
	ArrayList<Volunteer> selectApplypartjob(String id);
	//<!--인재글 게시판-->
	ArrayList<BoardResume> selectResumeWrite(String id);
	
	
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
		ArrayList<BoardCommunity> community_List_id(String category, String search);//선택검색
		ArrayList<BoardCommunity> writer_search_C(String writer); //작성자검색
		ArrayList<BoardCommunity> title_search_C(String title); //제목 검색
		int deleteCommunities(int community_id); //커뮤니티글 삭제하기
		int countComment(int comment_id); //댓글 확인
		int deleteComment(int comment_id); //댓글 삭제
	
}
