package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.CommunityDAO;
import com.spring.ex.dto.BoardComment;
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
		int res = -1;
		
		if(communityDAO.deleteComments(community_id)>=1) {//댓글부터 삭제 
			if(communityDAO.deleteContent(community_id)>=1) {
				res = 1;
			}
		}
		return res;
	}
	
	public int updateContent(BoardCommunity content) {
		return communityDAO.updateContent(content);
	}
	public int updateViews(int community_id) {
		return communityDAO.updateViews(community_id);
	}
	
	public int insertComment(BoardComment content) {
		return communityDAO.insertComment(content);
	}

	public ArrayList<BoardComment> selectComments(int community_id) {
		return communityDAO.selectComments(community_id);
	}

	
	public int deleteComment(int comment_id) {
		return communityDAO.deleteComment(comment_id);
	}
	
//	public int updateComment(BoardComment comment_id) {
//		return communityDAO.updateComment(comment_id);
//	}
	
	public int CommentsCount(int community_id) {
		return communityDAO.CommentsCount(community_id);
	}
	
	public int updateComment(HashMap<String , Object> map) {
		return communityDAO.updateComment(map);
	}

}