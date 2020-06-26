package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminDAO;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Individual;

@Service
public class AdminService {
	@Autowired
	AdminDAO adminDAO;

	public ArrayList<Individual> selectlist() {
		return adminDAO.selectlist();
	}


	/*##################################################*/
	//임승재
	//전체 인재 갯수
	public int all_Count() {
		return adminDAO.all_Count();
	}
	
	//오늘쓴 공고 갯수
	public int today_Count() {
		return adminDAO.today_Count();
	}
	
	//어제쓴 공고 갯수
	public int yesterday_Count() {
		return adminDAO.yesterday_Count();
	}
	
	//공고 게시판
	public ArrayList<BoardRecruit> recruit_List() {
		return adminDAO.recruit_List();
	}
	
	//공고 게시판 선택검색
	public ArrayList<BoardRecruit> recruit_List_id(String category, String search) {
		ArrayList<BoardRecruit> boardrecruits = null;
		
		if(category.equals("writer")) {
			return adminDAO.writer_search(search);
		}
		else if(category.equals("title")) {
			return adminDAO.title_search(search);
		}
		return null;
	}
	
	//공고 게시판 선택삭제
	public int deleteBoardRecruits(ArrayList<String> ids) {
		System.out.println(ids);
		System.out.println("서비스 deleteBoardRecruits ");
		
		return forDeleteSQL(ids, "deleteBoardRecruit");
	}
	
	// 게시글 삭제
	public int forDeleteSQL(ArrayList<String> ids, String methodName) {
		System.out.println(ids.size());
		int res = 0;
		for(int i=0; i<ids.size(); i++) {
			if(methodName.equals("deleteBoardRecruit")) {
				System.out.println("if문  methodName ");
				if (1 <= adminDAO.deleteBoardRecruits(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
			else if(methodName.equals("deleteBoardResume")) {
				System.out.println("if문  methodName ");
				if (1 <= adminDAO.deleteBoardResumes(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
//			else if(methodName.equals("deleteBoardCommunity")) {
//				System.out.println("if문  methodName ");
//				if (1 <= adminDAO.deleteBoardCommunities(Integer.parseInt(ids.get(i)))) {
//					
//					res = 1;
//				}
//			}
			else if(methodName.equals("deleteBoardCommunity")) {
				
				if(1<=adminDAO.countComment(Integer.parseInt(ids.get(i)))) {
					adminDAO.deleteComment(Integer.parseInt(ids.get(i)));
				}
				if(1<=adminDAO.deleteCommunities(Integer.parseInt(ids.get(i)))){
					res = 1;
				}
				//select count(*) from comment where community_id = #{id} -> 댓글 갯수 1이상이나 같다면
				//if문으로 댓글있는지 체크 
				//있ㄷㅏ면 댓글 삭제, delete from comment where community_id =#{id}
				//없다면 글만 삭제, delete from community whre community_id =#{id}
				
			}
		}
		return res;
	}


	//전체 인재 갯수
	public int all_Count_resume() {
		return adminDAO.all_Count_resume();
	}
	
	//오늘쓴 인재 갯수
	public int today_Count_resume() {
		return adminDAO.today_Count_resume();
	}
	
	//어제쓴 인재 갯수
	public int yesterday_Count_resume() {
		return adminDAO.yesterday_Count_resume();
	}
	
	//공고 게시판
	public ArrayList<BoardResume> resume_List() {
		return adminDAO.resume_List();
	}
	
	//인재 게시판 선택삭제
	public int deleteBoardResumes(ArrayList<String> ids) {
		System.out.println(ids);
		System.out.println("서비스 deleteBoardResumes ");
		
		return forDeleteSQL(ids, "deleteBoardResume");
	}
	

	
	
	//커뮤니티 게시판
	public ArrayList<BoardCommunity> community_List() {
		return adminDAO.community_List();
	}
	
	//커뮤니티 게시판 선택삭제
	public int deleteBoardCommunities(ArrayList<String> ids) {
		System.out.println(ids);
		System.out.println("서비스 deleteBoardCommunities ");

		return forDeleteSQL(ids, "deleteBoardCommunity");
	}
		
	//공고 게시판 선택검색
	public ArrayList<BoardCommunity> community_List_id(String category, String search) {
		ArrayList<BoardCommunity> boardcommunities = null;
		
		if(category.equals("writer")) {
			return adminDAO.writer_search_C(search);
		}
		else if(category.equals("title")) {
			return adminDAO.title_search_C(search);
		}
		return null;
	}
}
