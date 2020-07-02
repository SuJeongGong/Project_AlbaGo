package com.spring.ex.services;
  
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
import com.spring.ex.dto.Product;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_Individual;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;
 
@Service
public class AdminService {
	@Autowired
	AdminDAO adminDAO;
	public ArrayList<HashMap<String, Object>> selectRecentSales() {
		return adminDAO.selectRecentSales();
	}
	public ArrayList<HashMap<String, Object>> selectItems() {
		return adminDAO.selectItems();
	}
	//일주일 매출액 
	public int  selectWeekTotal() {
		return adminDAO.selectWeekTotal();
	}
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
	//개인 계정정지
	public int changestate(String individual_id,int result) {
		
		HashMap<String, Object> map= new HashMap<String, Object>();
		
		map.put("individual_id", individual_id);
		map.put("result", result);
		return adminDAO.changestate(map);
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
	public int deleteResume(int resume_id) {

		return adminDAO.deleteResume(resume_id);	
	}
	
	
	//지원한 알바
	public ArrayList<Volunteer> selectApplypartjob(String id){
		return adminDAO.selectApplypartjob(id);
	}

	// 지원 취소 ajax
	public int deleteVolunteer(int volounteer_id) {
		
		System.out.println(adminDAO.deleteVolunteer(volounteer_id));
		return adminDAO.deleteVolunteer(volounteer_id);	
	}

	//인재 게시판 작성글
	public ArrayList<BoardResume> selectResumeWrite(String id) {
		return adminDAO.selectResumeWrite(id);	
	}
	
	//인재 게시판 삭제 ajax
	public int deletBoardResume(int board_resume_id) {
		System.out.println(board_resume_id);
		System.out.println(adminDAO.deletBoardResume(board_resume_id));
		return adminDAO.deletBoardResume(board_resume_id);	
	}
	
	//커뮤니티 게시판 작성글
	public ArrayList<BoardCommunity> selectCommunity(String id) {
		return adminDAO.selectCommunity(id);	
	}
	
	//커뮤니티 게시판 삭제 ajax
	public int deleteCommunity(int community_id) {
		int res = -1;

		if(adminDAO.deleteComments(community_id)>=1) {//댓글부터 삭제 
			if(adminDAO.deleteCommunity(community_id)>=1) {
				res = 1;
			}
		}else {//댓글이 없는경우, 댓글 삭제를 못한경우 
			res = adminDAO.deleteCommunity(community_id);
		}
		return res;
	}
	//기업스크랩
	public ArrayList<Scrap_Individual> selectEnterpriseScrap(String id) {
		return adminDAO.selectEnterpriseScrap(id);
	}
	//기업스크랩 삭제 
	public int deleteEnterpriseScrap(int scrap_individual_id) {
		return adminDAO.deleteEnterpriseScrap(scrap_individual_id);
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
	//기업회원정보수정할수있는 
	public int updateEnterpriseAccount(Enterprise enterprise){
		System.out.println(enterprise);
		return adminDAO.updateEnterpriseAccount(enterprise);	
	}
	//기업 계정정지
	public int changeEnterprisestate(String enterprise_id,int result) {
		
		HashMap<String, Object> map= new HashMap<String, Object>();
		
		map.put("enterprise_id", enterprise_id);
		map.put("result", result);
		return adminDAO.changeEnterprisestate(map);
	}
	//공고 관리
	public ArrayList<Recruit> selectRecruit(String id) {
		return adminDAO.selectRecruit(id);
	}
	//공고 삭제 
	public int deleteEnterpriseRecruit(int recruit_id) {
		return adminDAO.deleteEnterpriseRecruit(recruit_id);
	}
	//공고글 삭제
	public int deleteEnterpriseBoardRecruit(int board_recruit_id) {
		System.out.println("공고글삭제"+board_recruit_id);
		return adminDAO.deleteEnterpriseBoardRecruit(board_recruit_id);
	}
	//공고글 관리
	public ArrayList<BoardRecruit> selectRecruitWrite(String id) {
		return adminDAO.selectRecruitWrite(id);
	}
	//인재스크랩
	public ArrayList<Scrap_enterprise> selectScrap(String id) {
		return adminDAO.selectScrap(id);
	}
	//인재스크랩 삭제
	public int deleteScrap(int scrap_id) {
		return adminDAO.deleteScrap(scrap_id);
	}
	//상품결제내역
	public ArrayList<Payment> selectPayment(String id) {
		return adminDAO.selectPayment(id);
	}
	//상품 총계
	public Product sumPayment(String id) {
		return adminDAO.sumPayment(id);
	}

	/*##################################################*/
	//임승재
	//오늘 가입한 개인회원수
	public int select_TI_join() {
		return adminDAO.select_TI_join();
	}
	
	//기업회원수
	public int selet_TE_join() {
		return adminDAO.selet_TE_join();
	}
	
	//오늘 매출액
	public HashMap<String,Object> total_M() {
		return adminDAO.total_M();
	}
	
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
	
	//공고 게시판 총검색
	public ArrayList<BoardRecruit> total_List_Rc(String category, String place, String gender, String education) {
		ArrayList<BoardRecruit> boardrecruits = null;
		
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("category",category);
		map.put("place",place);
		map.put("gender",gender);
		map.put("education",education);
		return adminDAO.total_List_Rc(map);
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
	
	
	//인재 게시판 총검색
	public ArrayList<BoardResume> total_List_Rs(String category, String place, String gender, String education) {
		ArrayList<BoardResume> boardresumes = null;
		
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("category",category);
		map.put("place",place);
		map.put("gender",gender);
		map.put("education",education);
		return adminDAO.total_List_Rs(map);
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
	
	//공수정
	//아이템별로 기업결제 횟수 알려주는거 
	public ArrayList<HashMap<String ,Object>> selectCountItem_Enterprise(String item){
		return adminDAO.selectCountItem_Enterprise(item);
	}
	
	/*##################################################*/
	//송원준
	
	//매출 게시판
		public ArrayList<Payment> selectPaymentList() {
			return adminDAO.selectPaymentList();
		}
		
		//젠체 매출
		public int all_totalsales() {
			return adminDAO.all_totalsales();
		}
		
	
	    //오늘 매출 
		public int todaysales() { 
			return adminDAO.todaysales(); 
		}
	  
	    //주간 매출 
		public int weeklysales() { 
			return adminDAO.weeklysales(); 
		}
		
	//인재 게시판 총검색
	public ArrayList<Payment> PaymentSearch(String payment_date, String product_type) {
		ArrayList<Payment> Payment = null;
			
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("payment_date",payment_date);
		map.put("product_type",product_type);
		return adminDAO.PaymentSearch(map);
	}
	 
}

