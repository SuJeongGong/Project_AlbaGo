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

	public BoardCommunity selectContent(int community_id) {
		return communityDAO.selectContent(community_id);
	}
	
	public int deleteContent(int community_id) {
		return communityDAO.deleteContent(community_id);
	}
	
	public int updateContent(BoardCommunity content) {
		return communityDAO.updateContent(content);
	}
	public int updateViews(int community_id) {
		return communityDAO.updateViews(community_id);
	}

}