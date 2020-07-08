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
	public ArrayList<BoardRecruit> selectRecruit(String enterprise_id) {
		return boardRecruitDAO.selectRecruit(enterprise_id);
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
	public int selectListCount(Map<String, Object> map){
		return boardRecruitDAO.selectListCount(map);
	}
	//게시판 검색
	public ArrayList<BoardRecruit> total_List(Map<String, Object> map) {
		System.out.println(boardRecruitDAO.total_List(map)+"맵");
		return boardRecruitDAO.total_List(map);
	}
	
	//조회수
	public int updateViews(int board_recruit_id) {
		return boardRecruitDAO.updateViews(board_recruit_id);
	}
	public int selectEnterpriseBoardCount(String enterprise_id) {
		return boardRecruitDAO.selectEnterpriseBoardCount(enterprise_id);
	}
	public int selectEnterpriseWriteBoardCount(String enterprise_id) {
		return boardRecruitDAO.selectEnterpriseWriteBoardCount(enterprise_id);
	}
}
