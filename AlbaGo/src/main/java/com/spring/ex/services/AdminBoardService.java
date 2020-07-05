package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminBoardDAO;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Volunteer;

@Service
public class AdminBoardService {

	@Autowired
	AdminBoardDAO adminBoardDAO;

	// 전체 인재 갯수
	public int all_Count() {
		return adminBoardDAO.all_Count();
	}

	// 오늘쓴 공고 갯수
	public int today_Count() {
		return adminBoardDAO.today_Count();
	}

	// 어제쓴 공고 갯수
	public int yesterday_Count() {
		return adminBoardDAO.yesterday_Count();
	}

//	// 공고 게시판
//	public ArrayList<BoardRecruit> recruit_List() {
//		return adminBoardDAO.recruit_List();
//	}

	// 공고 게시판 선택검색
//	public ArrayList<BoardRecruit> recruit_List_id(String category, String search) {
//
//		if (category.equals("writer")) {
//			return adminBoardDAO.writer_search_Rc(search);
//		} else if (category.equals("title")) {
//			return adminBoardDAO.title_search_Rc(search);
//		}
//		return null;
//	}

	// 공고 게시판 날짜 검색
//	public ArrayList<BoardRecruit> recruit_List_day(String day, String daysearch) {
//
//		if (day.equals("today")) {
//			return adminBoardDAO.today_search_Rc(daysearch);
//		} else if (day.equals("week")) {
//			return adminBoardDAO.week_search_Rc(daysearch);
//		} else if (day.equals("month")) {
//			return adminBoardDAO.month_search_Rc(daysearch);
//		}
//		return null;
//	}

	// 공고 게시판 총검색
	public ArrayList<BoardRecruit> selectRecruit(HashMap<String, Object> map) {
		return adminBoardDAO.selectRecruit(map);
	}
	
	// 공고 게시판 총검색
	public int selectRecruitCount(HashMap<String, Object> map) {
		return adminBoardDAO.selectRecruitCount(map);
	}

	// 공고 게시판에서 지원자보기
	public ArrayList<Volunteer> board_list(String id) {
		return adminBoardDAO.board_list(id);
	}

	// 공고 게시판 선택삭제
	public int deleteBoardRecruits(ArrayList<String> ids) {
		System.out.println(ids);
		System.out.println("서비스 deleteBoardRecruits ");

		return forDeleteSQL(ids, "deleteBoardRecruit");
	}

	// 게시글 삭제
	public int forDeleteSQL(ArrayList<String> ids, String methodName) {
		System.out.println(ids.size());
		int res = 0;
		for (int i = 0; i < ids.size(); i++) {
			if (methodName.equals("deleteBoardRecruit")) {
				System.out.println("if문  methodName ");
				if (1 <= adminBoardDAO.deleteBoardRecruits(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			} else if (methodName.equals("deleteBoardResume")) {
				System.out.println("if문  methodName ");
				if (1 <= adminBoardDAO.deleteBoardResumes(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
//				else if(methodName.equals("deleteBoardCommunity")) {
//					System.out.println("if문  methodName ");
//					if (1 <= adminBoardDAO.deleteBoardCommunities(Integer.parseInt(ids.get(i)))) {
//						
//						res = 1;
//					}
//				}
			else if (methodName.equals("deleteBoardCommunity")) {

				if (1 <= adminBoardDAO.countComment(Integer.parseInt(ids.get(i)))) {
					adminBoardDAO.deleteComment(Integer.parseInt(ids.get(i)));
				}
				if (1 <= adminBoardDAO.deleteCommunities(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
				// select count(*) from comment where community_id = #{id} -> 댓글 갯수 1이상이나 같다면
				// if문으로 댓글있는지 체크
				// 있ㄷㅏ면 댓글 삭제, delete from comment where community_id =#{id}
				// 없다면 글만 삭제, delete from community whre community_id =#{id}

			}
		}
		return res;
	}

	// 전체 인재 갯수
	public int all_Count_resume() {
		return adminBoardDAO.all_Count_resume();
	}

	// 오늘쓴 인재 갯수
	public int today_Count_resume() {
		return adminBoardDAO.today_Count_resume();
	}

	// 어제쓴 인재 갯수
	public int yesterday_Count_resume() {
		return adminBoardDAO.yesterday_Count_resume();
	}

	// 인재 게시판
//	public ArrayList<BoardResume> resume_List() {
//		return adminBoardDAO.resume_List();
//	}
//
//	// 인재 게시판 선택검색
//	public ArrayList<BoardResume> resume_List_id(String category, String search) {
//
//		if (category.equals("writer")) {
//			return adminBoardDAO.writer_search_R(search);
//		} else if (category.equals("title")) {
//			return adminBoardDAO.title_search_R(search);
//		}
//		return null;
//	}

//	// 인재 게시판 날짜 검색
//	public ArrayList<BoardResume> resume_List_day(String day, String daysearch) {
//
//		if (day.equals("today")) {
//			return adminBoardDAO.today_search_Rs(daysearch);
//		} else if (day.equals("week")) {
//			return adminBoardDAO.week_search_Rs(daysearch);
//		} else if (day.equals("month")) {
//			return adminBoardDAO.month_search_Rs(daysearch);
//		}
//		return null;
//	}

	// 인재 게시판 총검색
	public ArrayList<BoardResume> selectResume(HashMap<String, Object> map) {
			return adminBoardDAO.selectResume(map);
	}
	// 인재 게시판 총검색
	public int selectResumeCount(HashMap<String, Object> map) {
		return adminBoardDAO.selectResumeCount(map);
	}

	// 인재 게시판 선택삭제
	public int deleteBoardResumes(ArrayList<String> ids) {
		System.out.println(ids);
		System.out.println("서비스 deleteBoardResumes ");

		return forDeleteSQL(ids, "deleteBoardResume");
	}

	// 커뮤니티 게시판
//	public ArrayList<BoardCommunity> selectCommunity() {
//		return adminBoardDAO.selectCommunity();
//	}

	// 커뮤니티 게시판 선택삭제
	public int deleteBoardCommunities(ArrayList<String> ids) {
		System.out.println(ids);
		System.out.println("서비스 deleteBoardCommunities ");

		return forDeleteSQL(ids, "deleteBoardCommunity");
	}

	// 커뮤니티 게시판 총 검색
	public ArrayList<BoardCommunity> selectCommunity(Map<String, Object> map) {

		return adminBoardDAO.selectCommunity(map);
	}
	// 커뮤니티 게시판 총 검색
	public int selectCommunityCount(Map<String, Object> map) {
		
		return adminBoardDAO.selectCommunityCount(map);
	}
}
