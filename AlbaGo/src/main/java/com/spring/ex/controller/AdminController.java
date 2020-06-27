package com.spring.ex.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.dao.ProductDAO;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Product;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Volunteer;
import com.spring.ex.services.AdminService;
import com.spring.ex.services.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	ProductService productService;
	@Autowired
	AdminService adminService;
	

	@RequestMapping("/main") // 관리자 메인
	public String main() {
		return "admin/main";
		
	}

	@RequestMapping("/recruit") // 공고글 게시판 - 관리자ver
	public String recruit(Model m) {
		
		// 전체 공고 갯수
		int allcount = adminService.all_Count();
		m.addAttribute("allcount", allcount);
		
		// 오늘 공고 갯수
		int todaycount = adminService.today_Count();
		m.addAttribute("todaycount", todaycount);
		
		// 오늘 공고 갯수
		int yesterdaycount = adminService.yesterday_Count();
		m.addAttribute("yesterdaycount", yesterdaycount);
		
		//공고글 리스트
		ArrayList<BoardRecruit> boardrecruits=adminService.recruit_List();
		m.addAttribute("boardrecruits",boardrecruits);
		
		return "/admin/recruit";
		
	}
	
	@RequestMapping("/recruit/id") //공고글 검색
	public String boardrecruit_id(Model m, @RequestParam("category")String category, @RequestParam("search")String search) {
		String page = "/admin/recruit";
		ArrayList<BoardRecruit> boardrecruits = adminService.recruit_List_id(category, search);
		m.addAttribute("boardrecruits", boardrecruits);
		
		return page;
	}
	
	@RequestMapping("/recruit/day") //공고글 날짜 검색 (오늘, 일주일, 한달)
	public String boardrecruit_day(Model m, @RequestParam("day")String day, @RequestParam("daysearch")String daysearch) {
		String page = "/admin/recruit";
		ArrayList<BoardRecruit> boardrecruits = adminService.recruit_List_day(day, daysearch);
		m.addAttribute("boardrecruits", boardrecruits);
		
		return page;
	}
	
	// ajax처리
	@ResponseBody
	@RequestMapping(value = "/deleteBoardRecruits", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public String deleteBoardRecruits(@RequestParam(value = "boardrecruit_ids[]") ArrayList<String> boardrecruit_id) {
		String res = "";
		System.out.println(boardrecruit_id);
		if (1 <= adminService.deleteBoardRecruits(boardrecruit_id)) {
			System.out.println("DB연결 성공");
			res = "성공";
		}
		return res;
	}

	@RequestMapping("/resume") // 인재글 게시판 - 관리자 ver
	public String resume(Model m) {
		// 전체 인재 갯수
		int allcount_resume = adminService.all_Count_resume();
		m.addAttribute("allcount_resume", allcount_resume);
		
		// 오늘 인재 갯수
		int todaycount_resume = adminService.today_Count_resume();
		m.addAttribute("todaycount_resume", todaycount_resume);
		
		// 오늘 인재 갯수
		int yesterdaycount_resume = adminService.yesterday_Count_resume();
		m.addAttribute("yesterdaycount_resume", yesterdaycount_resume);
				
		//인재글 리스트
		ArrayList<BoardResume> boardresumes=adminService.resume_List();
		m.addAttribute("boardresumes",boardresumes);
		return "/admin/resume";
	}
	
	// ajax처리
	@ResponseBody
	@RequestMapping(value = "/deleteBoardResumes", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public String deleteBoardResumes(@RequestParam(value = "boardresume_ids[]") ArrayList<String> boardresume_id) {
		String res = "";
		System.out.println(boardresume_id);
		if (1 <= adminService.deleteBoardResumes(boardresume_id)) {
			System.out.println("DB연결 성공");
			res = "성공";
		}
		return res;
	}

	@RequestMapping("/community") // 커뮤니티 게시판 -관리자 ver
	public String community(Model m) {
		//커뮤니티 리스트
		ArrayList<BoardCommunity> boardcommunities=adminService.community_List();
		m.addAttribute("boardcommunities",boardcommunities);
		return "admin/community";
	}
	
	@RequestMapping("/community/id") //커뮤니티 검색
	public String community_id(Model m, @RequestParam("category")String category, @RequestParam("search")String search) {
		String page = "/admin/community";
		ArrayList<BoardCommunity> boardcommunities = adminService.community_List_id(category, search);
		m.addAttribute("boardcommunities", boardcommunities);
		
		return page;
	}
	
	@RequestMapping("/community/day") //커뮤니티 날짜 검색 (오늘, 일주일, 한달)
	public String community_day(Model m, @RequestParam("day")String day, @RequestParam("daysearch")String daysearch) {
		String page = "/admin/community";
		ArrayList<BoardCommunity> boardcommunities = adminService.community_List_day(day, daysearch);
		m.addAttribute("boardcommunities", boardcommunities);
		
		return page;
	}
	
	// ajax처리
	@ResponseBody
	@RequestMapping(value = "/deleteBoardCommunities", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public String deleteBoardCommunities(@RequestParam(value = "boardcommunity_ids[]") ArrayList<String> boardcommunity_id) {
		String res = "";
		System.out.println(boardcommunity_id);
		if (1 <= adminService.deleteBoardCommunities(boardcommunity_id)) {
			System.out.println("DB연결 성공");
			res = "성공";
		}
		return res;
	}
	

	@RequestMapping("/individual_list") // 개인 리스트
	public String individual_list(Model m) {
		String page="/admin/individual_list";
	   
		ArrayList<Individual> individuals=adminService.selectlist();
		m.addAttribute("individuals",individuals);
		System.out.println(individuals);
		return page;
	}   
	@RequestMapping("/individual_list/id") //  개인 검색
	public String individual_id(Model m ,@RequestParam("category")String category,@RequestParam("search")String search) {
		String page="/admin/individual_list";
		ArrayList<Individual> individuals=adminService.selectId(category, search); 
		m.addAttribute("individuals",individuals); 
	
		return page; // 
	}

	@RequestMapping("/enterprise_list") // 기업 리스트
	public String enterprise_list(Model m) {
	String page="admin/enterprise_list";
		ArrayList<Enterprise> enterprises=adminService.selectEnterpriselist();
		m.addAttribute("enterprises",enterprises);
		
			return page; 
	}
	@RequestMapping("/enterprise_list/id") //  기업 검색
	public String enterprise_id(Model m ,@RequestParam("category")String category,@RequestParam("search")String search) {
		String page="/admin/enterprise_list";
		ArrayList<Enterprise> enterprises=adminService.selectEnterpriselist(category, search); 
		m.addAttribute("enterprises",enterprises); 
	
		return page; // 
	}
 
	@RequestMapping("/individual_detail") // 개인 - 디테일?
	public String individual_detail(Model m,@RequestParam("individual_id") String individual_id) { 
		String page="/admin/individual_detail";
		
		//개인 회원정보 상세보기
		Individual individual = adminService.selectIndividualAccount(individual_id); 
		m.addAttribute("individual", individual);
		
		//이력서 관리
		ArrayList<Resume> resume=adminService.selectResume(individual_id);
		m.addAttribute("resume",resume);
	
		//지원한알바
		ArrayList<Volunteer> volunteer=adminService.selectApplypartjob(individual_id);
		m.addAttribute("volunteers", volunteer);

		//인재 게시판 작성글
		ArrayList<BoardResume> resumewrite=adminService.selectResumeWrite(individual_id);
		m.addAttribute("resumewrite",resumewrite); 
		
		//커뮤니티 게시판 작성글
		ArrayList<BoardCommunity> community=adminService.selectCommunity(individual_id);
		m.addAttribute("communitys",community);  
	
		
		return page;  
		
		} 


	@RequestMapping("/enterprise_detail") // 기업 - 디테일?
	public String enterprise_detail(Model m,@RequestParam("enterprise_id") String enterprise_id) {
		String page="admin/enterprise_detail";
		
		//기업 회원정보 상세보기
		Enterprise enterprise = adminService.selectEnterpriseAccount(enterprise_id); 
		m.addAttribute("enterprise", enterprise);
				
		
		return page;
	} 

	@RequestMapping("/payment") // 결제관리
	public String manager_payment() {
		return "admin/payment";
	}

	@RequestMapping("/product") // 상품보기
	public String list(Model m, HttpServletRequest request) {
		
		ArrayList<Product> products = productService.selectList();
		m.addAttribute("products", products);  

		return "/admin/product";
	} 

	@RequestMapping("/product_account") // 상품상세보기
	public String update_account(HttpServletRequest request, Model m, @RequestParam("product_id") int product_id) {
		String page = "/admin/product_account";
		Product product = productService.product_account(product_id);
		m.addAttribute("product", product);

		return page;
	} 
  
 
	@RequestMapping("/account/update") // 상품수정하기
	public String update(HttpServletRequest request, @ModelAttribute("product_id") Product product) {

		System.out.println(product);
		String page = "/admin/product_account";
		if (productService.update_product(product) >= 1) {
			page = "/admin/main";
			System.out.println("DB연결성공");
		} else {
			page = "/admin/product_account";
		System.out.println("실패라고요");
		}
		return page;
	}
	
	@RequestMapping("/account/delete") // 상품삭제하기
	public String delete(HttpServletRequest request, @ModelAttribute("product_id") Product product) {

		String page = "/admin/product_account"; 
		  
		if (productService.delete_product(product) >= 1) {
			page = "/admin/main";
			System.out.println("DB연결성공");
		} else {
			page = "/admin/product_account";
		System.out.println("실패라고요");
		}
		return page;
	}

	
	@RequestMapping("/add_product_term") // 기간있는 상품추가 보여주는 폼
	public String add_product_term() {
		String page = "/admin/add_product_term";
		return page;
	}

	@RequestMapping("/add_product_term/result") // 상품추가 DB
	public String add_product_term_result(HttpServletRequest request, @ModelAttribute("product") Product product,
			BindingResult result) {

		String page = "/admin/add_product_term/result";

		if (productService.insertProduct_term(product) >= 1) {// DB연결 , 연결 결과값 비교로 리턴될 페이지 경로값 변경
			page = "/admin/main";
		}

		return page;
	}

	@RequestMapping("/add_product_no_term") // 기간이없는 상품추가 보여주는 폼
	public String add_product_no_term() {
		String page = "admin/add_product_no_term";
		return page;
	}

	@RequestMapping("/add_product_no_term/result") // 기간이없는 상품추가 DB
	public String add_product_no_term_result(HttpServletRequest request, @ModelAttribute("product") Product product,
			BindingResult result) {

		String page = "/admin/add_product_no_term/result";

		if (productService.insertProduct_no_term(product) >= 1) {// DB연결 , 연결 결과값 비교로 리턴될 페이지 경로값 변경
			page = "/admin/main";
		}

		return page;
	}

	@RequestMapping("/approve") // 결제승인
	public String approve(Model m) {
		ArrayList<Payment> payments= productService.selectPayments();
		
		m.addAttribute("payments",payments);
		
		return "admin/approve";
	}	// 아약스 처리
	@RequestMapping(value = "/updateResult", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResult(@RequestParam(value = "result") String result,@RequestParam(value = "id") int id) {

		System.out.println("volunteer_ids" + id);
		System.out.println("result" + result);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("payment_id", id);
		map.put("result", result);

		return productService.updatePaymentResult(map);
	}
	@RequestMapping(value = "/updateResults", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResults(@RequestParam(value = "result") String result,	@RequestParam(value = "payment_ids[]") ArrayList<String> payment_ids) {

		System.out.println("payment_ids" + payment_ids);
		System.out.println("result" + result);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("payment_ids", payment_ids);
		map.put("result", result);
		return productService.updatePaymentsResult(map);
	}

}