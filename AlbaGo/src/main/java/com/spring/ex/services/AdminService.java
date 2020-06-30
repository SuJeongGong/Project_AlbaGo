package com.spring.ex.services;
  
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminDAO;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;
 
@Service
public class AdminService {
	@Autowired
	AdminDAO adminDAO;
	
	//개인회원정보 '리스트'전체를 보여주는 테이블
	public ArrayList<Individual> selectlist() {
		return adminDAO.selectlist();
	}
	//개인회원정보에서 카테고리를 선택해서 검색
	public ArrayList<Individual> selectId(String category, String search) {
		ArrayList<Individual> individuals=null;
		
		if(category.equals("individual_id")) {
			return adminDAO.selectIdIndividual_id(search);
		}else if(category.equals("name")) {
			return adminDAO.selectIdName(search);
		}else if(category.equals("phone")) {
			return adminDAO.selectIdPhone(search);
		}
		return null;
	}
	//개인회원정보 '상세정보'를 볼수있는 테이블
	public Individual selectIndividualAccount(String id){
		return adminDAO.selectIndividualAccount(id);	
	}
	//개인회원정보 '수정' ajax
	public int updateIndividualAccount(Individual individual) {
		return adminDAO.updateIndividualAccount(individual);	
	}
	//이력서 관리를 할 수 있는 테이블
	public ArrayList<Resume> selectResume(String id) {
		return adminDAO.selectResume(id);	
	}
	//이력서 삭제 ajax
	public int deleteResume(String individual_id,int resume_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("individual_id", individual_id);
		map.put("resume_id", resume_id);
		return adminDAO.deleteResume(map);	
	}

	
	//지원한 알바
	public ArrayList<Volunteer> selectApplypartjob(String id){
		return adminDAO.selectApplypartjob(id);
	}

	// 지원 취소 ajax
	public int deleteVolunteer(int volounteer_id) {
		return adminDAO.deleteVolunteer(volounteer_id);	
	}

	//인재 게시판 작성글
	public ArrayList<BoardResume> selectResumeWrite(String id) {
		return adminDAO.selectResumeWrite(id);	
	}
	//커뮤니티 게시판 작성글
	public ArrayList<BoardCommunity> selectCommunity(String id) {
		return adminDAO.selectCommunity(id);	
	}
	
	//기업회원정보 '리스트'전체를 보여주는 테이블
	public ArrayList<Enterprise> selectEnterpriselist() {
		return adminDAO.selectEnterpriselist();
	}
	//개인회원정보에서 카테고리를 선택해서 검색
		public ArrayList<Enterprise> selectEnterpriselist(String category, String search) {
			ArrayList<Enterprise> enterprises=null;
			
			if(category.equals("enterprise_id")) {
				return adminDAO.selectEnterprise_id(search);				//아이디
			}else if(category.equals("name")) {
				return adminDAO.selectEnterprise_name(search);				//기업이름
			}else if(category.equals("phone")) {
				return adminDAO.selectEnterprise_phone(search);				//기업전화번호
			}else if(category.equals("manager_name")) {
				return adminDAO.selectEnterprise_manager_name(search);		//담당자이름
			}else if(category.equals("manager_phone")) {
				return adminDAO.selectEnterprise_manager_phone(search);		//담당자 번호
			}
			
			return null;
		}
	//기업회원정보 '상세정보'를 볼수있는 테이블
	public Enterprise selectEnterpriseAccount(String id){
		return adminDAO.selectEnterpriseAccount(id);	
	}
	//공고글 관리
	public ArrayList<BoardRecruit> selectRecruitWrite(String id) {
		return adminDAO.selectRecruitWrite(id);
	}
	//인재스크랩
	public ArrayList<Scrap_enterprise> selectScrap(String id) {
		return adminDAO.selectScrap(id);
	}
	//상품결제내역
	public ArrayList<Payment> selectPayment(String id) {
		return adminDAO.selectPayment(id);
	}

	/*##################################################*/
	//임승재
	//전체 인재 갯수
	public int all_Count() {
		return adminDAO.all_Count();
	}
	
	//오늘쓴 공고 갯수
	public int today_Count() {
		return adminDAO.today_Count();
	}
	
	//어제쓴 공고 갯수
	public int yesterday_Count() {
		return adminDAO.yesterday_Count();
	}
	
	//공고 게시판
	public ArrayList<BoardRecruit> recruit_List() {
		return adminDAO.recruit_List();
	}
	
	//공고 게시판 선택검색
	public ArrayList<BoardRecruit> recruit_List_id(String category, String search) {
		ArrayList<BoardRecruit> boardrecruits = null;
		
		if(category.equals("writer")) {
			return adminDAO.writer_search_Rc(search);
		}
		else if(category.equals("title")) {
			return adminDAO.title_search_Rc(search);
		}
		return null;
	}
	
	
	//공고 게시판 날짜 검색
	public ArrayList<BoardRecruit> recruit_List_day(String day, String daysearch) {
		ArrayList<BoardRecruit> boardrecruits = null;
		
		if(day.equals("today")) {
			return adminDAO.today_search_Rc(daysearch);
		}
		else if(day.equals("week")) {
			return adminDAO.week_search_Rc(daysearch);
		}
		else if(day.equals("month")) {
			return adminDAO.month_search_Rc(daysearch);
		}
		return null;
	}
	
	//공고 게시판 선택삭제
	public int deleteBoardRecruits(ArrayList<String> ids) {
		System.out.println(ids);
		System.out.println("서비스 deleteBoardRecruits ");
		
		return forDeleteSQL(ids, "deleteBoardRecruit");
	}
	
	// 게시글 삭제
	public int forDeleteSQL(ArrayList<String> ids, String methodName) {
		System.out.println(ids.size());
		int res = 0;
		for(int i=0; i<ids.size(); i++) {
			if(methodName.equals("deleteBoardRecruit")) {
				System.out.println("if문  methodName ");
				if (1 <= adminDAO.deleteBoardRecruits(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
			else if(methodName.equals("deleteBoardResume")) {
				System.out.println("if문  methodName ");
				if (1 <= adminDAO.deleteBoardResumes(Integer.parseInt(ids.get(i)))) {
					res = 1;
				}
			}
//			else if(methodName.equals("deleteBoardCommunity")) {
//				System.out.println("if문  methodName ");
//				if (1 <= adminDAO.deleteBoardCommunities(Integer.parseInt(ids.get(i)))) {
//					
//					res = 1;
//				}
//			}
			else if(methodName.equals("deleteBoardCommunity")) {
				
				if(1<=adminDAO.countComment(Integer.parseInt(ids.get(i)))) {
					adminDAO.deleteComment(Integer.parseInt(ids.get(i)));
				}
				if(1<=adminDAO.deleteCommunities(Integer.parseInt(ids.get(i)))){
					res = 1;
				}
				//select count(*) from comment where community_id = #{id} -> 댓글 갯수 1이상이나 같다면
				//if문으로 댓글있는지 체크 
				//있ㄷㅏ면 댓글 삭제, delete from comment where community_id =#{id}
				//없다면 글만 삭제, delete from community whre community_id =#{id}
				
			}
		}
		return res;
	}


	//전체 인재 갯수
	public int all_Count_resume() {
		return adminDAO.all_Count_resume();
	}
	
	//오늘쓴 인재 갯수
	public int today_Count_resume() {
		return adminDAO.today_Count_resume();
	}
	
	//어제쓴 인재 갯수
	public int yesterday_Count_resume() {
		return adminDAO.yesterday_Count_resume();
	}
	
	//인재 게시판
	public ArrayList<BoardResume> resume_List() {
		return adminDAO.resume_List();
	}
	
	//인재 게시판 선택검색
	public ArrayList<BoardResume> resume_List_id(String category, String search) {
		ArrayList<BoardResume> boardresumes = null;
		
		if(category.equals("writer")) {
			return adminDAO.writer_search_R(search);
		}
		else if(category.equals("title")) {
			return adminDAO.title_search_R(search);
		}
		return null;
	}
	
	//인재 게시판 날짜 검색
	public ArrayList<BoardResume> resume_List_day(String day, String daysearch) {
		ArrayList<BoardResume> boardresumes = null;
		
		if(day.equals("today")) {
			return adminDAO.today_search_Rs(daysearch);
		}
		else if(day.equals("week")) {
			return adminDAO.week_search_Rs(daysearch);
		}
		else if(day.equals("month")) {
			return adminDAO.month_search_Rs(daysearch);
		}
		return null;
	}
		
	
	//인재 게시판 선택삭제
	public int deleteBoardResumes(ArrayList<String> ids) {
		System.out.println(ids);
		System.out.println("서비스 deleteBoardResumes ");
		
		return forDeleteSQL(ids, "deleteBoardResume");
	}
	

	
	
	//커뮤니티 게시판
	public ArrayList<BoardCommunity> community_List() {
		return adminDAO.community_List();
	}
	
	//커뮤니티 게시판 선택삭제
	public int deleteBoardCommunities(ArrayList<String> ids) {
		System.out.println(ids);
		System.out.println("서비스 deleteBoardCommunities ");

		return forDeleteSQL(ids, "deleteBoardCommunity");
	}
	
		
	//커뮤니티 게시판 선택검색
	public ArrayList<BoardCommunity> community_List_id(String category, String search) {
		ArrayList<BoardCommunity> boardcommunities = null;
		
		if(category.equals("writer")) {
			return adminDAO.writer_search_C(search);
		}
		else if(category.equals("title")) {
			return adminDAO.title_search_C(search);
		}
		return null;
	}
	
	//커뮤니티 게시판 날짜 검색
	public ArrayList<BoardCommunity> community_List_day(String day, String daysearch) {
		ArrayList<BoardCommunity> boardcommunities = null;
		
		if(day.equals("today")) {
			return adminDAO.today_search_C(daysearch);
		}
		else if(day.equals("week")) {
			return adminDAO.week_search_C(daysearch);
		}
		else if(day.equals("month")) {
			return adminDAO.month_search_C(daysearch);
		}
		return null;
	}

}

