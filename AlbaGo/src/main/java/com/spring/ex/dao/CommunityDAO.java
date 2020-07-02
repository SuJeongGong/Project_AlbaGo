package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring.ex.dto.BoardComment;
import com.spring.ex.dto.BoardCommunity;

public interface CommunityDAO {
	//insert, update, delete 는 성공하면 1이상의 값 , 아니면 0을 리턴 -> resultType을 XML에 적지 않아도 된다. selet는 적어주어야함
	int insertContent(BoardCommunity content);//BoardCommunity = 필요한값 , 결과값의 형태는 int   //write
	
	ArrayList<BoardCommunity> selectList(int page);   //list 글 리스트
	int selectListCount();   //list 글 리스트
	
	BoardCommunity selectContent(int community_id);   //content 글 보기
	
	int deleteContent(int community_id);    //삭제
	
	int updateContent(BoardCommunity content);    //수정
	
	int updateViews(int community_id);//조회수 증가
	
	//insert, update, delete 는 성공하면 1이상의 값 , 아니면 0을 리턴 -> resultType을 XML에 적지 않아도 된다. selet는 적어주어야함
	int insertComment(BoardComment content);//BoardCommunity = 필요한값 , 결과값의 형태는 int   //write
	
	ArrayList<BoardComment> selectComments(int community_id);   //글번호를 이용한 댓글 가져오기 
	
	
	int deleteComment(int comment_id);    //댓글삭제  -댓글번호로 삭제  -> 1개만 지워지고
	int deleteComments(int comment_id);    //댓글삭제  -글 번호로 삭제  -> 몇개가 있던
	
	
	//int updateComment(BoardComment content);    //수정
	
	int CommentsCount(int community_id); //댓글 갯수
	int  updateComment(HashMap<String , Object> map);
 }
