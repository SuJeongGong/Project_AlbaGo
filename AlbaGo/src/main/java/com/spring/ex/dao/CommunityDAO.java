package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring.ex.dto.BoardCommunity;

public interface CommunityDAO {
	//insert, update, delete 는 성공하면 1이상의 값 , 아니면 0을 리턴 -> resultType을 XML에 적지 않아도 된다. selet는 적어주어야함
	int insertContent(BoardCommunity content);//BoardCommunity = 필요한값 , 결과값의 형태는 int   //write
	
	ArrayList<BoardCommunity> selectList();   //list
	
	ArrayList<BoardCommunity> selectContent();   //content
	
		
 }
