package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.BoardResumeDAO;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Resume_Content;
@Service
public class BoardResumeService {
	
	
	@Autowired
	BoardResumeDAO boardResumeDAO;
	
	
	public ArrayList<BoardResume> selectList(){
		return boardResumeDAO.selectList();
	}
	
	public int insertBoard_resume(BoardResume boardresume) {
		return boardResumeDAO.insertBoard_resume(boardresume);
	}
	public Resume_Content selectView(String id){
		return boardResumeDAO.selectView(id);
	}
	
}
