package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.BoardRecruitDAO;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Recruit_Content;

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

	public Recruit_Content selectView(String id) {
		return boardRecruitDAO.selectView(id);
	}

	public void deleteBoard(String id) {
		boardRecruitDAO.deleteBoard(id);
	}
}
