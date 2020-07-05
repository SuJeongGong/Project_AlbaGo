package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletRequest;
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
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_Individual;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;
import com.spring.ex.interceptor.AuthUser;
import com.spring.ex.services.AdminService;
import com.spring.ex.services.EnterpriseService;
import com.spring.ex.services.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	ProductService productService;
	@Autowired
	AdminService adminService;
	@Autowired
	EnterpriseService enterpriseService;
	
	@RequestMapping("/manager_topbar")
	public String manager_topbar(Model m, @RequestParam("search") String search) {
		String page = null;
		System.out.println(search);
		ArrayList<BoardResume> boardresumes = adminService.total_I(search);
		ArrayList<BoardRecruit> boardrecruits = adminService.total_E(search);
		m.addAttribute("boardresumes", boardresumes);
		m.addAttribute("boardrecruits", boardrecruits);
		System.out.println(boardresumes);
		System.out.println(boardrecruits);
		
		return page;
	}

	@RequestMapping("/main") // 관리자 메인
	public String main(Model m) {
		
		ArrayList<HashMap<String, Object>> sales = adminService.selectRecentSales();
		m.addAttribute("sales", sales);

		ArrayList<HashMap<String, Object>> items = adminService.selectItems();
		m.addAttribute("items", items);
		
		ArrayList<HashMap<String, Object>> upCount =adminService.selectCountItem_Enterprise("up");
		m.addAttribute("upCount", upCount);
		ArrayList<HashMap<String, Object>> resumeCount =adminService.selectCountItem_Enterprise("resume");
		m.addAttribute("resumeCount", resumeCount);
		ArrayList<HashMap<String, Object>> adCount =adminService.selectCountItem_Enterprise("ad");
		m.addAttribute("adCount", adCount);
		ArrayList<HashMap<String, Object>> boardCount =adminService.selectCountItem_Enterprise("board");
		m.addAttribute("boardCount", boardCount);
		

		// 오늘 가입한 개인회원수
		int todayindividual = adminService.select_TI_join();

		// 오늘 가입한 기업회원수
		int todayenterprise = adminService.selet_TE_join();

		// 두개 더한거
		m.addAttribute("todaytotal", todayenterprise + todayindividual);

		// 오늘 매출액
		HashMap<String, Object> totalM = adminService.total_M();
		m.addAttribute("totalM", totalM);
		
		//일주일 매출액 
		int selectWeekTotal=adminService.selectWeekTotal();
		m.addAttribute("selectweek", selectWeekTotal);

		// 오늘 공고 갯수
		int todaycount = adminService.today_Count();
		m.addAttribute("todaycount", todaycount);
		// 오늘 인재 갯수
		int todaycount_resume = adminService.today_Count_resume();
		m.addAttribute("todaycount_resume", todaycount_resume);
		return "admin/main";

	}

//	@RequestMapping("/recruit") // 공고글 게시판 - 관리자ver
//	public String recruit(Model m) {
//
//		// 전체 공고 갯수
//		int allcount = adminService.all_Count();
//		m.addAttribute("allcount", allcount);
//
//		// 오늘 공고 갯수
//		int todaycount = adminService.today_Count();
//		m.addAttribute("todaycount", todaycount);
//
//		// 오늘 공고 갯수
//		int yesterdaycount = adminService.yesterday_Count();
//		m.addAttribute("yesterdaycount", yesterdaycount);
//
//		// 공고글 리스트
//		ArrayList<BoardRecruit> boardrecruits = adminService.recruit_List();
//		System.out.println(boardrecruits);
//		m.addAttribute("boardrecruits", boardrecruits);
//
//		return "/admin/recruit";
//
//	}
//
////	@RequestMapping("/recruit/id") // 공고글 검색
////	public String boardrecruit_id(Model m, @RequestParam("category") String category,
////			@RequestParam("search") String search) {
////		String page = "/admin/recruit";
////		ArrayList<BoardRecruit> boardrecruits = adminService.recruit_List_id(category, search);
////		m.addAttribute("boardrecruits", boardrecruits);
////
////		return page;
////	}
//
//	@RequestMapping("/recruit/day") // 공고글 날짜 검색 (오늘, 일주일, 한달)
//	public String boardrecruit_day(Model m, @RequestParam("day") String day,
//			@RequestParam("daysearch") String daysearch) {
//		String page = "/admin/recruit";
//		ArrayList<BoardRecruit> boardrecruits = adminService.recruit_List_day(day, daysearch);
//		m.addAttribute("boardrecruits", boardrecruits);
//
//		return page;
//	}
//
//	@RequestMapping("/recruit/total") // 총 공고글 검색
//	public String boardrecruit_t(Model m, @RequestParam("enterprise_category") String enterprise_category,
//			@RequestParam("local_category") String local_category, @RequestParam("gender") String gender,
//			@RequestParam("education") String education,
//			@RequestParam("day") String day,
//			@RequestParam("search") String search
//			) {
//		String page = "/admin/recruit";
//		System.out.println(day);
//		System.out.println(search);
//		ArrayList<BoardRecruit> boardrecruits = adminService.total_List_Rc(enterprise_category, local_category, gender,
//				education, day, search);
//		m.addAttribute("boardrecruits", boardrecruits);
//		
//		// 전체 공고 갯수
//		int allcount = adminService.all_Count();
//		m.addAttribute("allcount", allcount);
//
//		// 오늘 공고 갯수
//		int todaycount = adminService.today_Count();
//		m.addAttribute("todaycount", todaycount);
//
//		// 오늘 공고 갯수
//		int yesterdaycount = adminService.yesterday_Count();
//		m.addAttribute("yesterdaycount", yesterdaycount);
//
//		return page;
//	}
//
//	// ajax처리
//	@RequestMapping(value = "/deleteBoardRecruits", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//	public @ResponseBody int deleteBoardRecruits(
//			@RequestParam(value = "boardrecruit_ids[]") ArrayList<String> boardrecruit_id) {
//
//		System.out.println(boardrecruit_id);
//
//		return adminService.deleteBoardRecruits(boardrecruit_id);
//	}
//
//	@RequestMapping("/resume") // 인재글 게시판 - 관리자 ver
//	public String resume(Model m) {
//		// 전체 인재 갯수
//		int allcount_resume = adminService.all_Count_resume();
//		m.addAttribute("allcount_resume", allcount_resume);
//
//		// 오늘 인재 갯수
//		int todaycount_resume = adminService.today_Count_resume();
//		m.addAttribute("todaycount_resume", todaycount_resume);
//
//		// 어제 인재 갯수
//		int yesterdaycount_resume = adminService.yesterday_Count_resume();
//		m.addAttribute("yesterdaycount_resume", yesterdaycount_resume);
//
//		// 인재글 리스트
//		ArrayList<BoardResume> boardresumes = adminService.resume_List();
//		m.addAttribute("boardresumes", boardresumes);
//		return "/admin/resume";
//	}
//
//	@RequestMapping("/resume/id") // 인재글 검색
//	public String boardresume_id(Model m, @RequestParam("category") String category,
//			@RequestParam("search") String search) {
//		String page = "/admin/resume";
//		ArrayList<BoardResume> boardresumes = adminService.resume_List_id(category, search);
//		m.addAttribute("boardresumes", boardresumes);
//
//		return page;
//	}
//
//	@RequestMapping("/resume/day") // 인재글 날짜 검색 (오늘, 일주일, 한달)
//	public String boardresume_day(Model m, @RequestParam("day") String day,
//			@RequestParam("daysearch") String daysearch) {
//		String page = "/admin/resume";
//		ArrayList<BoardResume> boardresumes = adminService.resume_List_day(day, daysearch);
//		m.addAttribute("boardresumes", boardresumes);
//
//		return page;
//	}
//
//	@RequestMapping("/resume/total") // 인재글 검색
//	public String boardresume_t(Model m, @RequestParam("individual_category") String individual_category,
//			@RequestParam("local_category") String local_category, @RequestParam("gender") String gender,
//			@RequestParam("education") String education,
//			@RequestParam("day") String day,
//			@RequestParam("search") String search) {
//		String page = "/admin/resume";
//		ArrayList<BoardResume> boardresumes = adminService.total_List_Rs(individual_category, local_category, gender,
//				education, day, search);
//		m.addAttribute("boardresumes", boardresumes);
//		
//		// 전체 인재 갯수
//		int allcount_resume = adminService.all_Count_resume();
//		m.addAttribute("allcount_resume", allcount_resume);
//
//		// 오늘 인재 갯수
//		int todaycount_resume = adminService.today_Count_resume();
//		m.addAttribute("todaycount_resume", todaycount_resume);
//
//		// 어제 인재 갯수
//		int yesterdaycount_resume = adminService.yesterday_Count_resume();
//		m.addAttribute("yesterdaycount_resume", yesterdaycount_resume);
//
//		return page;
//	}
//
//	// ajax처리
//	@RequestMapping(value = "/deleteBoardResumes", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//	public @ResponseBody int deleteBoardResumes(
//			@RequestParam(value = "boardresume_ids[]") ArrayList<String> boardresume_id) {
//		System.out.println(boardresume_id);
//		return adminService.deleteBoardResumes(boardresume_id);
//	}
//	 
//	@RequestMapping("/community") // 커뮤니티 게시판 -관리자 ver
//	public String community(Model m) {
//		// 커뮤니티 리스트
//		ArrayList<BoardCommunity> boardcommunities = adminService.community_List();
//		m.addAttribute("boardcommunities", boardcommunities);
//		return "admin/community";
//	}
//
//	@RequestMapping("/community/total") // 커뮤니티 날짜 검색 (오늘, 일주일, 한달)
//	public String community_day(Model m, 
//			@RequestParam(value = "start", defaultValue ="0000-00-00") String start, 
//			@RequestParam(value = "end", defaultValue ="9999-12-31") String end,
//			@RequestParam("search") String search) {
//		String page = "/admin/community";
//		if(start.equals(null)) {
//			start="0000-00-00"; 
//		}
//		if(end.equals(null)) {
//			end="9999-12-31";
//		}
//		String endd = end+" 23:59:59";
//		System.out.println(start);
//		System.out.println(end);
//		System.out.println(search);
//		ArrayList<BoardCommunity> boardcommunities = adminService.community_total_search(start, endd, search);
//		System.out.println(boardcommunities);
//		m.addAttribute("boardcommunities", boardcommunities);
//
//		return page;
//	}
//
//	// ajax처리
//	@RequestMapping(value = "/deleteBoardCommunities", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//	public @ResponseBody int deleteBoardCommunities(
//			@RequestParam(value = "boardcommunity_ids[]") ArrayList<String> boardcommunity_id) {
//		System.out.println(boardcommunity_id);
//		return adminService.deleteBoardCommunities(boardcommunity_id);
//	}
//
//	@RequestMapping("/individual_list") // 개인 리스트
//	public String individual_list(Model m) {
//		String page = "/admin/individual_list";
//
//		ArrayList<Individual> individuals = adminService.selectlist();
//		m.addAttribute("individuals", individuals);
//		System.out.println(individuals);
//		return page;
//	}
//
//	@RequestMapping("/individual_list/id") // 개인 검색
//	public String individual_id(Model m, @RequestParam("category") String category,
//			@RequestParam("search") String search) {
//		String page = "/admin/individual_list";
//		ArrayList<Individual> individuals = adminService.selectId(category, search);
//		m.addAttribute("individuals", individuals);
//
//		return page; //
//	}
//
//	@RequestMapping("/enterprise_list") // 기업 리스트
//	public String enterprise_list(Model m) {
//		String page = "admin/enterprise_list";
//		ArrayList<Enterprise> enterprises = adminService.selectEnterpriselist();
//		m.addAttribute("enterprises", enterprises);
//
//		return page;
//	}

//--------------------------------
	
	
	@RequestMapping("/product/product") // 상품보기 리스트 
	public String list(Model m, HttpServletRequest request) {

		ArrayList<Product> products = productService.selectProductList();
		m.addAttribute("products", products);

		return "/admin/product_product";
	}

	@RequestMapping("/product/product_account") // 상품상세보기
	public String update_account(HttpServletRequest request, Model m, @RequestParam("product_id") int product_id) {
		String page = "/admin/product_account";
		Product product = productService.product_account(product_id);
		m.addAttribute("product", product);

		return page;
	}

	@RequestMapping("/advertising/product") // 광고 보기 - 리스트 
	public String advertisingㅣist(Model m, HttpServletRequest request) {

		ArrayList<Product> products = productService.selectAdvertisingList();
		m.addAttribute("products", products);

		return "/admin/advertising_product";
	}

	@RequestMapping("/advertising/product_account") // 광고상세보기
	public String advertisingㅕpdate_account(Model m, @RequestParam("product_id") int product_id) {
		String page = "/admin/advertising_account";
		Product product = productService.product_account(product_id);
		m.addAttribute("product", product);

		return page;
	}

	@RequestMapping("/account/product/update") // 상품수정하기
	public String update( @ModelAttribute("product") Product product) {

		System.out.println(product);
		String page = "/admin/product_account";
		if (productService.update_product(product) >= 1) {
			page = "redirect:/admin/product/product";
			System.out.println("DB연결성공");
		} else {
			page = "/admin/product_account";
			System.out.println("실패라고요");
		}
		return page;
	}

	@RequestMapping("/account/advertising/update") // 상품수정하기
	public String advertisingUpdate(HttpServletRequest request, @ModelAttribute("product_id") Product product) {

		System.out.println(product);
		String page = "/admin/product_account";
		if (productService.update_product(product) >= 1) {
			page = "redirect:/admin/advertising/product";
			System.out.println("DB연결성공");
		} else {
			page = "/admin/advertising/product_account";
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

	@RequestMapping("/product/approve") // 결제승인
	public String approve(Model m) {
		ArrayList<Payment> payments = productService.selectProductPayments();

		m.addAttribute("payments", payments);

		return "admin/product_approve"; 
	}

	@RequestMapping("/add_product_term") // 기간있는 상품추가 보여주는 폼
	public String add_product_term() {
		String page = "/admin/add_product_term";
		return page;
	}
	@RequestMapping("/add_advertising") // 광고상품추가 보여주는 폼
	public String add_advertising() {
		String page = "/admin/add_advertising";
		return page;
	}

	@RequestMapping("/add_product/result") // 상품추가 DB
	public String add_product_term_result(HttpServletRequest request, @ModelAttribute("product") Product product,
			BindingResult result) {

		String page = "/admin/add_product/result";
		System.out.println(product);
		if (productService.insertProduct(product) >= 1) {// DB연결 , 연결 결과값 비교로 리턴될 페이지 경로값 변경
			page = "redirect:/admin/product/product";
		}

		return page;
	}



	@RequestMapping("/advertising/approve") // 결제승인
	public String advertisingApprove(Model m) {
		ArrayList<Payment> payments = productService.selectAdvertisingPayments();

		m.addAttribute("payments", payments);

		return "admin/advertising_approve";
	} // 아약스 처리

	@RequestMapping(value = "/product/updateResult", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResult(@RequestParam(value = "result") String result,
			@RequestParam(value = "id") int id) {

		System.out.println("payment_id" + id);
		System.out.println("result" + result);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("payment_id", id);
		map.put("result", result);

		return productService.updatePaymentResult(map);
	}

	@RequestMapping(value = "/product/updateResults", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResults(@RequestParam(value = "result") String result,
			@RequestParam(value = "payment_ids[]") ArrayList<String> payment_ids) {

		System.out.println("payment_ids" + payment_ids);
		System.out.println("result" + result);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("payment_ids", payment_ids);
		map.put("result", result);
		return productService.updatePaymentsResult(map);
	}

	@RequestMapping(value = "/advertising/updateResult", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int advertisingUpdateResult(@RequestParam(value = "result") String result,
			@RequestParam(value = "id") int id) {

		System.out.println("payment_id" + id);
		System.out.println("result" + result);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("payment_id", id);
		map.put("result", result);

		return productService.advertisingUpdatePaymentResult(map);
	}

	@RequestMapping(value = "/advertising/updateResults", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int advertisingUpdateResults(@RequestParam(value = "result") String result,
			@RequestParam(value = "payment_ids[]") ArrayList<String> payment_ids) {

		System.out.println("payment_ids" + payment_ids);
		System.out.println("result" + result);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("payment_ids", payment_ids);
		map.put("result", result);
		return productService.advertisingUpdatePaymentsResult(map);
	}
	
	//---------------------------------------------
	
	@RequestMapping("/payment") 
	public String payment(Model m) {
		String page = "/admin/payment";

		// 전체 매출
		int all_totalsales = adminService.all_totalsales();
		m.addAttribute("all_totalsales", all_totalsales);

		
		// 오늘 매출 
		int todaysales = adminService.todaysales();
		m.addAttribute("todaysales", todaysales);
		  
		// 주간 매출 
		int weeklysales = adminService.weeklysales();
		m.addAttribute("weeklysales", weeklysales);
		
		// 매출 리스트		
		ArrayList<Payment> payment = adminService.selectPaymentList(); 
		m.addAttribute("payment", payment);
		System.out.println(payment);
		
		return page;
	}
	
	@RequestMapping("/payment/total") // 매출관리 검색
	public String payment_T(Model m, 
			@RequestParam(value = "start", defaultValue="0000-00-00") String start,
			@RequestParam(value = "end", defaultValue="9999-12-31") String end,
			@RequestParam("product_type") String product_type,
			@RequestParam("search") String search) {
		String page = "/admin/payment";
		if(start.equals(null)) {
			start="0000-00-00";
		}
		if(end.equals(null)) {
			end="9999-12-31";
		}
		String endd=end+" 23:59:59";
		System.out.println(start);
		System.out.println(end);
		System.out.println(product_type);
		System.out.println(search);
		ArrayList<Payment> payment = adminService.PaymentSearch(start, endd, product_type, search);
		System.out.println(payment);
		
		// 전체 매출
		int all_totalsales = adminService.all_totalsales();
		m.addAttribute("all_totalsales", all_totalsales);

				
		// 오늘 매출 
		int todaysales = adminService.todaysales();
		m.addAttribute("todaysales", todaysales);
				  
		// 주간 매출 
		int weeklysales = adminService.weeklysales();
		m.addAttribute("weeklysales", weeklysales);
		
		m.addAttribute("payment", payment);
		return page;
	}
	
	
//	@RequestMapping("/volunteerlist") //지원자보기
//	public String volunteer_list(Model m, @RequestParam(value = "board_recruit_id") String board_recruit_id) {
//		System.out.println(board_recruit_id);
//		
//		ArrayList<Volunteer> volunteers = adminService.board_list(board_recruit_id);
//		System.out.println(volunteers);
//		m.addAttribute("volunteers", volunteers);
//		return "/admin/volunteerlist";
//	}
//	 
//	// 아약스 처리 지원자 보기
//	@RequestMapping(value = "/updateResult", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//	public @ResponseBody int updateResultB(String result, int id) {
//
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		map.put("volunteer_id", id);
//		map.put("result", result);
//		return enterpriseService.updateVolunteerResult(map);
//	}
//
//	@RequestMapping(value = "/updateResults", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//	public @ResponseBody int updateResultsB(@RequestParam(value = "result") String result,
//		@RequestParam(value = "volunteer_ids[]") ArrayList<String> volunteer_ids) {
//
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		map.put("volunteer_ids", volunteer_ids);
//		map.put("result", result);
//		return enterpriseService.updateVolunteerResults(map);
//	}
	
	
	

}