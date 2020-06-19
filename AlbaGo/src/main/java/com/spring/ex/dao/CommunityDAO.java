package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring.ex.dto.BoardCommunity;

public interface CommunityDAO {
	
	int insertContent(HashMap<String, String> content);
	
	ArrayList<BoardCommunity> selectList();
	
 }
