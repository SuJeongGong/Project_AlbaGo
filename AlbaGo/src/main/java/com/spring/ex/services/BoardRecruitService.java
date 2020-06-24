package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.BoardRecruitDAO;
import com.spring.ex.dto.BoardRecruit;

@Service
public class BoardRecruitService {

	@Autowired
	BoardRecruitDAO boardRecruitDAO;

	public int insertBoard_recruit(BoardRecruit boardrecruit) {
		return boardRecruitDAO.insertBoard_recruit(boardrecruit);
	}

	public ArrayList<BoardRecruit> selectList() {
		return boardRecruitDAO.selectList();
	}

	public BoardRecruit selectView(int id) {
		return boardRecruitDAO.selectView(id);
	}

	public int deleteBoard(int board_recruit_id) {
		return boardRecruitDAO.deleteBoard(board_recruit_id);
	}
	
	public int updateBoard(BoardRecruit boardrecruit) {
		return boardRecruitDAO.updateBoard(boardrecruit);
	}

	
}
