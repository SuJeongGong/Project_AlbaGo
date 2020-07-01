package com.spring.ex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;

public interface AdminDAO {
	//---이예슬---
	//## 관리자페이지 ##.
	ArrayList<HashMap<String, Object>> selectRecentSales() ;
	ArrayList<HashMap<String, Object>> selectItems() ;
	ArrayList<Individual> selectlist(); //개인회원정보 전체를 보여주는 테이블
	
	//개인회원정보에서 카테고리를 선택해서 검색
	ArrayList<Individual> selectId(String category,String search);
	ArrayList<Individual> selectIdIndividual_id(String individual_id);
	ArrayList<Individual> selectIdName(String name);
	ArrayList<Individual> selectIdPhone(String phone);
	
	//<!-- 개인관리자 링크타고 -->
	//<!-- 개인 회원 정보 -->
	Individual selectIndividualAccount(String id);
	//<!--개인 계정정지-->
	int changestate(HashMap<String, Object> map);
	//<!-- 개인 회원 정보 수정-->
	int updateIndividualAccount(Individual individual);
	//<!-- 이력서 관리 -->
	ArrayList<Resume> selectResume(String id);
	//<!--이력서 삭제 AJAX -->
	int deleteResume(int resume_id);
	//<!-- 지원한 알바-->
	ArrayList<Volunteer> selectApplypartjob(String id);
	//<!--지원알바 취소 AJAX-->
	   int deleteVolunteer(int volounteer_id);
	//<!--인재글 게시판-->
	ArrayList<BoardResume> selectResumeWrite(String id);
	//<!-- 인재 게시판 취소 AJAX -->
	int deletBoardResume(int board_resume_id);
	//<!--커뮤니티 게시판 작성글-->
	ArrayList<BoardCommunity> selectCommunity(String id);
	//<!--커뮤니티 게시판 삭제 AJAX -->
	int deleteCommunity(int comment_id);    //댓글삭제  -댓글번호로 삭제  -> 1개만 지워지고
	int deleteComments(int comment_id);    //댓글삭제  -글 번호로 삭제  -> 몇개가 있던
	
	//기업회원 검색 전체를 보여주는 테이블
	ArrayList<Enterprise> selectEnterpriselist();
	//개인회원정보에서 카테고리를 선택해서 검색
	ArrayList<Enterprise> selectEnterpriselist(String category,String search);
	ArrayList<Enterprise> selectEnterprise_id(String enterprise_id); 			//아이디
	ArrayList<Enterprise> selectEnterprise_name(String name);					//기업이름
	ArrayList<Enterprise> selectEnterprise_phone(String business_number);		//기업전화번호
	ArrayList<Enterprise> selectEnterprise_manager_name(String manager_name);	//담당자이름
	ArrayList<Enterprise> selectEnterprise_manager_phone(String manager_phone);	//담당자 번호
	
	//<!--기업관리자 링크타고-->
	//<!--기업 회원 정보-->
	Enterprise selectEnterpriseAccount(String id);
	//<!-- 기업 회원 정보 수정-->
	int updateEnterpriseAccount(Enterprise enterprise);
	//<!--기업 계정상태바꾸기-->
	int changeEnterprisestate(HashMap<String, Object> map);
	//<!--공고관리-->
	ArrayList<Recruit> selectRecruit(String id);
	//<!--공고삭제-->
	int deleteEnterpriseRecruit(int recruit_id);
	//<!--공고글 삭제-->
	int deleteEnterpriseBoardRecruit(int board_recruit_id);

	//<!-- 공고글관리 -->
	ArrayList<BoardRecruit> selectRecruitWrite(String id);
	//<!--인재스크랩-->	
	ArrayList<Scrap_enterprise> selectScrap(String id);
	//<!--인재스크랩 삭제-->
	int deleteScrap(int scrap_id);
	//<!--상품결제내역-->
	ArrayList<Payment> selectPayment(String id);
	
	
	/*############################*/
	//---임승재---
	/** 오늘 가입한 기업,개인 개수 */
		//개인 
		int select_TI_join();
		//기업
		int selet_TE_join();
		//오늘 매출액
		HashMap<String,Object> total_M();
	
	/** 공고글 관리 */
		//전체 공고 갯수
		int all_Count();
		
		//오늘 공고 갯수
		int today_Count();
		
		//어제 공고 갯수
		int yesterday_Count();
		
		//공고 게시판
		ArrayList<BoardRecruit> recruit_List();
		int deleteBoardRecruits(int boardrecruit_id);//공고 삭제하기
		ArrayList<BoardRecruit> recruit_List_id(String category, String search);//선택검색
		ArrayList<BoardRecruit> writer_search_Rc(String writer); //작성자검색
		ArrayList<BoardRecruit> title_search_Rc(String title); //제목 검색
		ArrayList<BoardRecruit> recruit_List_day(String day, String daysearch); //날짜검색(오늘, 일주일, 한달)
		ArrayList<BoardRecruit> today_search_Rc(String today);
		ArrayList<BoardRecruit> week_search_Rc(String week);
		ArrayList<BoardRecruit> month_search_Rc(String month);
		ArrayList<BoardRecruit> total_List_Rc(Map<String, Object> map);
	
	/** 인재글관리 */
		//전체 인재 갯수
		int all_Count_resume();
		
		//오늘 인재 갯수
		int today_Count_resume();
		
		//어제 인재 갯수
		int yesterday_Count_resume();
		
		//인제 게시판
		ArrayList<BoardResume> resume_List();
		int deleteBoardResumes(int boardresume_id); //인재글 삭제하기
		
		ArrayList<BoardResume> resume_List_id(String category, String search);//선택검색
		ArrayList<BoardResume> writer_search_R(String writer); //작성자검색
		ArrayList<BoardResume> title_search_R(String title); //제목 검색
		ArrayList<BoardResume> resume_List_day(String day, String daysearch); //날짜검색(오늘, 일주일, 한달)
		ArrayList<BoardResume> today_search_Rs(String today);
		ArrayList<BoardResume> week_search_Rs(String week);
		ArrayList<BoardResume> month_search_Rs(String month);
		ArrayList<BoardResume> total_List_Rs(Map<String, Object> map);
		
	/** 커뮤니티 관리 */
		//공고 게시판
		ArrayList<BoardCommunity> community_List();
		ArrayList<BoardCommunity> community_List_id(String category, String search);//선택검색
		ArrayList<BoardCommunity> writer_search_C(String writer); //작성자검색
		ArrayList<BoardCommunity> title_search_C(String title); //제목 검색
		int deleteCommunities(int community_id); //커뮤니티글 삭제하기
		int countComment(int comment_id); //댓글 확인
		int deleteComment(int comment_id); //댓글 삭제
		ArrayList<BoardCommunity> community_List_day(String day, String daysearch); //날짜검색(오늘, 일주일, 한달)
		ArrayList<BoardCommunity> today_search_C(String today);
		ArrayList<BoardCommunity> week_search_C(String week);
		ArrayList<BoardCommunity> month_search_C(String month);
		
	/** 매출 관리 */
		//---송원준---
		ArrayList<Payment> selectPaymentList(); //매출 리스트
	
		
		
		
		
		
		
		//공수정 - 관리자 메인 화면
		ArrayList<HashMap<String ,Object>> selectCountItem_Enterprise(String item);
}
