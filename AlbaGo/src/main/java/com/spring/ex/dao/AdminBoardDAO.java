package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Volunteer;

public interface AdminBoardDAO {
	// ---임승재---

	/** 공고글 관리 */
	// 전체 공고 갯수
	int all_Count();
	// 오늘 공고 갯수
	int today_Count();
	// 어제 공고 갯수
	int yesterday_Count();
	int deleteBoardRecruits(int boardrecruit_id);// 공고 삭제하기

	ArrayList<BoardRecruit> selectRecruit(Map<String, Object> map);
	int selectRecruitCount(Map<String, Object> map);
	ArrayList<Volunteer> board_list(String id);// 지원자 목록 가져오기

	/** 인재글관리 */
	// 전체 인재 갯수
	int all_Count_resume();
	// 오늘 인재 갯수
	int today_Count_resume();
	// 어제 인재 갯수
	int yesterday_Count_resume();
	// 인제 게시판
	ArrayList<BoardResume> resume_List();
	int deleteBoardResumes(int boardresume_id); // 인재글 삭제하기
//	ArrayList<BoardResume> resume_List_id(String category, String search);// 선택검색
//
//	ArrayList<BoardResume> writer_search_R(String writer); // 작성자검색
//
//	ArrayList<BoardResume> title_search_R(String title); // 제목 검색
//
//	ArrayList<BoardResume> resume_List_day(String day, String daysearch); // 날짜검색(오늘, 일주일, 한달)
//
//	ArrayList<BoardResume> today_search_Rs(String today);
//
//	ArrayList<BoardResume> week_search_Rs(String week);
//
//	ArrayList<BoardResume> month_search_Rs(String month);

	ArrayList<BoardResume> selectResume(Map<String, Object> map);
	int selectResumeCount(Map<String, Object> map);

//	ArrayList<BoardResume> total_List_Rs_T(Map<String, Object> map);
//
//	ArrayList<BoardResume> total_List_Rs_W(Map<String, Object> map);
//
//	ArrayList<BoardResume> total_List_Rs_M(Map<String, Object> map);

	/** 커뮤니티 관리 */
	// 공고 게시판
	ArrayList<BoardCommunity> selectCommunity(Map<String, Object> map);
	int selectCommunityCount(Map<String, Object> map);

//	ArrayList<BoardCommunity> community_List_id(String category, String search);// 선택검색
//
//	ArrayList<BoardCommunity> writer_search_C(String writer); // 작성자검색
//
//	ArrayList<BoardCommunity> title_search_C(String title); // 제목 검색

	int deleteCommunities(int community_id); // 커뮤니티글 삭제하기
	int countComment(int comment_id); // 댓글 확인
	int deleteComment(int comment_id); // 댓글 삭제

//	ArrayList<BoardCommunity> community_total_search(Map<String, Object> map);
}
