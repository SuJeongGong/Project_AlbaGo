package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.BoardRecruitDAO;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Resume;

@Service
public class BoardRecruitService {

	@Autowired
	BoardRecruitDAO boardRecruitDAO;

	public int insertBoard_recruit(BoardRecruit boardrecruit) {
		return boardRecruitDAO.insertBoard_recruit(boardrecruit);
	}

//	public ArrayList<BoardRecruit> selectList() {
//		return boardRecruitDAO.selectList();
//	}

	public BoardRecruit selectView(int id) {
		return boardRecruitDAO.selectView(id);
	}

	public int deleteBoard(int board_recruit_id) {
		return boardRecruitDAO.deleteBoard(board_recruit_id);
	}
	
	public int updateBoard(BoardRecruit boardrecruit) {
		return boardRecruitDAO.updateBoard(boardrecruit);
	}
	
	public ArrayList<Resume> selectResumes(String individual_id) {
		return boardRecruitDAO.selectResumes(individual_id);
	}
	
	//게시판 검색
	public ArrayList<BoardRecruit> total_List(String category, String place, String gender, String education, String term, String title) {
		ArrayList<BoardRecruit> boardrecruits = null;
		
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("category",category);
		map.put("place",place);
		map.put("gender",gender);
		map.put("education",education);
		map.put("term",term);
		map.put("title",title);
		System.out.println(boardRecruitDAO.total_List(map)+"맵");
		return boardRecruitDAO.total_List(map);
	}
	
	//조회수
	public int updateViews(int board_recruit_id) {
		return boardRecruitDAO.updateViews(board_recruit_id);
	}
	
	//메인 검색
//	public ArrayList<BoardRecruit> main_List(String category, String place, String title) {
//		Map<String, Object> map=new HashMap<String,Object>();
//		map.put("category",category);
//		map.put("place",place);
//		map.put("title",title);
//		System.out.println(boardRecruitDAO.main_List(map)+"맵");
//		return boardRecruitDAO.main_List(map);
//	}
}
