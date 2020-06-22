package com.spring.ex.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.ex.dao.CommunityDAO;
import com.spring.ex.dto.BoardCommunity;

public class CommunityService {
	@Autowired
	CommunityDAO communityDAO;
	
	public int insertContent(BoardCommunity content) {
		return communityDAO.insertContent(content);
	}
	
	public	ArrayList<BoardCommunity> selectList( ) {
		return communityDAO.selectList();
	}
	
	public 	ArrayList<BoardCommunity> selectContent() {
		return communityDAO.selectContent();
	}
	

}