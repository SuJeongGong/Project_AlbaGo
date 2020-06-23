package com.spring.ex.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.CommunityDAO;
import com.spring.ex.dto.BoardCommunity;

@Service
public class CommunityService {
	@Autowired
	CommunityDAO communityDAO;

	public int insertContent(BoardCommunity content) {
		return communityDAO.insertContent(content);
	}

	public ArrayList<BoardCommunity> selectList() {
		return communityDAO.selectList();
	}

	public List<BoardCommunity> selectContent() {
		return communityDAO.selectContent();
	}

}