package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.BoardResumeDAO;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Career;
@Service
public class BoardResumeService {
	
	
	@Autowired
	BoardResumeDAO boardResumeDAO;
	
	public int insertBoard_resume(BoardResume boardresume) {
		return boardResumeDAO.insertBoard_resume(boardresume);
	}
	
//	public ArrayList<BoardResume> selectList(){
//		return boardResumeDAO.selectList();
//	}
	
	public BoardResume selectView(int id){
		return boardResumeDAO.selectView(id);
	}
	public ArrayList<BoardResume> selectResume(String individual_id) {
		return boardResumeDAO.selectResume(individual_id);
	}
	
	public int deleteBoard(int board_resume_id) {
		return boardResumeDAO.deleteBoard(board_resume_id);
	}
	
	public int updateBoard(BoardResume boardresume) {
		return boardResumeDAO.updateBoard(boardresume);
	}
	
	public ArrayList<Career> selectCareers(int board_resume_id) {
		return boardResumeDAO.selectCareers(board_resume_id);
	}

	//게시판 검색
	public ArrayList<BoardResume> total_List(Map<String, Object> map) {
		return boardResumeDAO.total_List(map);
	}
	public int selectListCount(Map<String, Object> map) {
		return boardResumeDAO.selectListCount(map);
	}
		
	//조회수
	public int updateViews(int board_resume_id) {
		return boardResumeDAO.updateViews(board_resume_id);
	}
}
