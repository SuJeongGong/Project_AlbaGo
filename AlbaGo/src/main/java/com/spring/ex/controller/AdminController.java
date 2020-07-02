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
	public String main(Model m) {
		ArrayList<HashMap<String, Object>> sales = adminService.selectRecentSales();
		m.addAttribute("Recent_sales", sales);

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

		// 공고글 리스트
		ArrayList<BoardRecruit> boardrecruits = adminService.recruit_List();
		System.out.println(boardrecruits);
		m.addAttribute("boardrecruits", boardrecruits);

		return "/admin/recruit";

	}

	@RequestMapping("/recruit/id") // 공고글 검색
	public String boardrecruit_id(Model m, @RequestParam("category") String category,
			@RequestParam("search") String search) {
		String page = "/admin/recruit";
		ArrayList<BoardRecruit> boardrecruits = adminService.recruit_List_id(category, search);
		m.addAttribute("boardrecruits", boardrecruits);

		return page;
	}

	@RequestMapping("/recruit/day") // 공고글 날짜 검색 (오늘, 일주일, 한달)
	public String boardrecruit_day(Model m, @RequestParam("day") String day,
			@RequestParam("daysearch") String daysearch) {
		String page = "/admin/recruit";
		ArrayList<BoardRecruit> boardrecruits = adminService.recruit_List_day(day, daysearch);
		m.addAttribute("boardrecruits", boardrecruits);

		return page;
	}

	@RequestMapping("/recruit/total") // 총 공고글 검색
	public String boardrecruit_t(Model m, @RequestParam("enterprise_category") String enterprise_category,
			@RequestParam("local_category") String local_category, @RequestParam("gender") String gender,
			@RequestParam("education") String education) {
		String page = "/admin/recruit";
		ArrayList<BoardRecruit> boardrecruits = adminService.total_List_Rc(enterprise_category, local_category, gender,
				education);
		m.addAttribute("boardrecruits", boardrecruits);
		
		// 전체 공고 갯수
		int allcount = adminService.all_Count();
		m.addAttribute("allcount", allcount);

		// 오늘 공고 갯수
		int todaycount = adminService.today_Count();
		m.addAttribute("todaycount", todaycount);

		// 오늘 공고 갯수
		int yesterdaycount = adminService.yesterday_Count();
		m.addAttribute("yesterdaycount", yesterdaycount);

		return page;
	}

	// ajax처리
	@RequestMapping(value = "/deleteBoardRecruits", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteBoardRecruits(
			@RequestParam(value = "boardrecruit_ids[]") ArrayList<String> boardrecruit_id) {

		System.out.println(boardrecruit_id);

		return adminService.deleteBoardRecruits(boardrecruit_id);
	}

	@RequestMapping("/resume") // 인재글 게시판 - 관리자 ver
	public String resume(Model m) {
		// 전체 인재 갯수
		int allcount_resume = adminService.all_Count_resume();
		m.addAttribute("allcount_resume", allcount_resume);

		// 오늘 인재 갯수
		int todaycount_resume = adminService.today_Count_resume();
		m.addAttribute("todaycount_resume", todaycount_resume);

		// 어제 인재 갯수
		int yesterdaycount_resume = adminService.yesterday_Count_resume();
		m.addAttribute("yesterdaycount_resume", yesterdaycount_resume);

		// 인재글 리스트
		ArrayList<BoardResume> boardresumes = adminService.resume_List();
		m.addAttribute("boardresumes", boardresumes);
		return "/admin/resume";
	}

	@RequestMapping("/resume/id") // 인재글 검색
	public String boardresume_id(Model m, @RequestParam("category") String category,
			@RequestParam("search") String search) {
		String page = "/admin/resume";
		ArrayList<BoardResume> boardresumes = adminService.resume_List_id(category, search);
		m.addAttribute("boardresumes", boardresumes);

		return page;
	}

	@RequestMapping("/resume/day") // 인재글 날짜 검색 (오늘, 일주일, 한달)
	public String boardresume_day(Model m, @RequestParam("day") String day,
			@RequestParam("daysearch") String daysearch) {
		String page = "/admin/resume";
		ArrayList<BoardResume> boardresumes = adminService.resume_List_day(day, daysearch);
		m.addAttribute("boardresumes", boardresumes);

		return page;
	}

	@RequestMapping("/resume/total") // 인재글 검색
	public String boardresume_t(Model m, @RequestParam("individual_category") String individual_category,
			@RequestParam("local_category") String local_category, @RequestParam("gender") String gender,
			@RequestParam("education") String education) {
		String page = "/admin/resume";
		ArrayList<BoardResume> boardresumes = adminService.total_List_Rs(individual_category, local_category, gender,
				education);
		m.addAttribute("boardresumes", boardresumes);
		
		// 전체 인재 갯수
		int allcount_resume = adminService.all_Count_resume();
		m.addAttribute("allcount_resume", allcount_resume);

		// 오늘 인재 갯수
		int todaycount_resume = adminService.today_Count_resume();
		m.addAttribute("todaycount_resume", todaycount_resume);

		// 어제 인재 갯수
		int yesterdaycount_resume = adminService.yesterday_Count_resume();
		m.addAttribute("yesterdaycount_resume", yesterdaycount_resume);

		return page;
	}

	// ajax처리
	@RequestMapping(value = "/deleteBoardResumes", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteBoardResumes(
			@RequestParam(value = "boardresume_ids[]") ArrayList<String> boardresume_id) {
		System.out.println(boardresume_id);
		return adminService.deleteBoardResumes(boardresume_id);
	}

	@RequestMapping("/community") // 커뮤니티 게시판 -관리자 ver
	public String community(Model m) {
		// 커뮤니티 리스트
		ArrayList<BoardCommunity> boardcommunities = adminService.community_List();
		m.addAttribute("boardcommunities", boardcommunities);
		return "admin/community";
	}

	@RequestMapping("/community/id") // 커뮤니티 검색
	public String community_id(Model m, @RequestParam("category") String category,
			@RequestParam("search") String search) {
		String page = "/admin/community";
		ArrayList<BoardCommunity> boardcommunities = adminService.community_List_id(category, search);
		m.addAttribute("boardcommunities", boardcommunities);

		return page;
	}

	@RequestMapping("/community/day") // 커뮤니티 날짜 검색 (오늘, 일주일, 한달)
	public String community_day(Model m, @RequestParam("day") String day, @RequestParam("daysearch") String daysearch) {
		String page = "/admin/community";
		ArrayList<BoardCommunity> boardcommunities = adminService.community_List_day(day, daysearch);
		m.addAttribute("boardcommunities", boardcommunities);

		return page;
	}

	// ajax처리
	@RequestMapping(value = "/deleteBoardCommunities", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteBoardCommunities(
			@RequestParam(value = "boardcommunity_ids[]") ArrayList<String> boardcommunity_id) {
		System.out.println(boardcommunity_id);
		return adminService.deleteBoardCommunities(boardcommunity_id);
	}

	@RequestMapping("/individual_list") // 개인 리스트
	public String individual_list(Model m) {
		String page = "/admin/individual_list";

		ArrayList<Individual> individuals = adminService.selectlist();
		m.addAttribute("individuals", individuals);
		System.out.println(individuals);
		return page;
	}

	@RequestMapping("/individual_list/id") // 개인 검색
	public String individual_id(Model m, @RequestParam("category") String category,
			@RequestParam("search") String search) {
		String page = "/admin/individual_list";
		ArrayList<Individual> individuals = adminService.selectId(category, search);
		m.addAttribute("individuals", individuals);

		return page; //
	}

	@RequestMapping("/enterprise_list") // 기업 리스트
	public String enterprise_list(Model m) {
		String page = "admin/enterprise_list";
		ArrayList<Enterprise> enterprises = adminService.selectEnterpriselist();
		m.addAttribute("enterprises", enterprises);

		return page;
	}

	@RequestMapping("/enterprise_list/id") // 기업 검색
	public String enterprise_id(Model m, @RequestParam("category") String category,
			@RequestParam("search") String search) {
		String page = "/admin/enterprise_list";
		ArrayList<Enterprise> enterprises = adminService.selectEnterpriselist(category, search);
		m.addAttribute("enterprises", enterprises);

		return page; //
	}

	@RequestMapping("/individual_detail") // 개인 - 디테일?
	public String individual_detail(Model m, @RequestParam("individual_id") String individual_id) {
		String page = "/admin/individual_detail";

		// 개인 회원정보 상세보기
		Individual individual = adminService.selectIndividualAccount(individual_id);
		m.addAttribute("individual", individual);

		// 이력서 관리
		ArrayList<Resume> resume = adminService.selectResume(individual_id);
		m.addAttribute("resume", resume);

		// 지원한알바
		ArrayList<Volunteer> volunteer = adminService.selectApplypartjob(individual_id);
		m.addAttribute("volunteers", volunteer);

		// 인재 게시판 작성글
		ArrayList<BoardResume> resumewrite = adminService.selectResumeWrite(individual_id);
		m.addAttribute("resumewrite", resumewrite);

		// 커뮤니티 게시판 작성글
		ArrayList<BoardCommunity> community = adminService.selectCommunity(individual_id);
		m.addAttribute("communitys", community);

		return page;

	}

	@RequestMapping("/individual_detail/update") // 개인정보 수정 - 수정하기
	public String individual_detail(@ModelAttribute("individual") Individual individual) {
		String page = "/admin/individual_detail";
		if (1 <= adminService.updateIndividualAccount(individual)) {
			System.out.println(individual);
			System.out.println("수정");
			page = "redirect:/admin/individual_list";

		}
		return page;
	}

	// ajax
	//// 계정정지 AJAX
	@RequestMapping(value = "/changestate", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int changestate(@RequestParam("individual_id") String individual_id,@RequestParam("result") int result) {
		return adminService.changestate(individual_id,result);
	}

	// 이력서삭제 AJAX
	@RequestMapping(value = "/deleteResume", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteResume(@RequestParam("resume_id") int resume_id) {
		return adminService.deleteResume(resume_id);
	}

	// 지원한 알바 지원취소 AJAX
	@RequestMapping(value = "/deleteVolunteer", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteVolunteer(@RequestParam("volunteer_id") int volunteer_id) {
		System.out.println("volunteer_id" + volunteer_id);
		return adminService.deleteVolunteer(volunteer_id);
	}

	// 인재 게시판 취소 AJAX
	@RequestMapping(value = "/deletBoardResume", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deletBoardResume(@RequestParam("board_resume_id") int board_resume_id) {
		System.out.println("board_resume_id" + board_resume_id);
		return adminService.deletBoardResume(board_resume_id);
	}

	// 커뮤니티 게시판 삭제 AJAX
	@RequestMapping(value = "/deleteCommunity", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE) // 삭제
	public @ResponseBody int delete(@RequestParam("community_id") int community_id) {
		System.out.println("community_id :" + community_id);
		return adminService.deleteCommunity(community_id);
	} // 글삭제

	@RequestMapping("/enterprise_detail") // 기업 - 디테일?
	public String enterprise_detail(Model m, @RequestParam("enterprise_id") String enterprise_id) {
		String page = "admin/enterprise_detail";

		// 기업 회원정보 상세보기
		Enterprise enterprise = adminService.selectEnterpriseAccount(enterprise_id);
		m.addAttribute("enterprise", enterprise);
		
		//공고관리
		ArrayList<Recruit> recruit = adminService.selectRecruit(enterprise_id);
		m.addAttribute("recruit", recruit);
		
		// 공고글 관리
		ArrayList<BoardRecruit> boardrecruit = adminService.selectRecruitWrite(enterprise_id);
		m.addAttribute("boardrecruit", boardrecruit);

		// 인재스크랩
		ArrayList<Scrap_enterprise> scrap_enterprise = adminService.selectScrap(enterprise_id);
		m.addAttribute("scrap_enterprise", scrap_enterprise);

		// 결제내역
		ArrayList<Payment> payment = adminService.selectPayment(enterprise_id);
		m.addAttribute("payment", payment);

		return page;
	}

	@RequestMapping("/enterprise_detail/update") // 기업정보 수정 - 수정하기
	public String enterprise_detail(@ModelAttribute("enterprise") Enterprise enterprise) {
		String page = "/admin/enterprise_detail";
		System.out.println();

		System.out.println("컨트롤러 if전" + enterprise);
		if (1 <= adminService.updateEnterpriseAccount(enterprise)) {
 
			System.out.println(enterprise);
			System.out.println("수정");
			page = "redirect:/admin/enterprise_list";

		}
 
		return page;
	}
	//관리자
	//기업 계정정지 AJAX
	@RequestMapping(value = "/changeEnterprisestate", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int changeEnterprisestate(@RequestParam("enterprise_id") String enterprise_id,@RequestParam("result") int result) {
		return adminService.changeEnterprisestate(enterprise_id,result);
	}

	// 공고삭제 AJAX
	@RequestMapping(value = "/deleteEnterpriseRecruit", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteEnterpriseRecruit(@RequestParam("recruit_id") int recruit_id) {
		return adminService.deleteEnterpriseRecruit(recruit_id);
	}
	//공고글 삭제 AJAX
	@RequestMapping(value = "/deleteEnterpriseBoardRecruit", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteEnterpriseBoardRecruit(@RequestParam("board_recruit_id") int board_recruit_id) {
		return adminService.deleteEnterpriseBoardRecruit(board_recruit_id);
	}
	//인재글 삭제 AJAX
	@RequestMapping(value = "/deleteScrap", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteScrap(@RequestParam("scrap_id") int scrap_id) {
		return adminService.deleteScrap(scrap_id);
	}
	
	
	//--------------------------------
	
	
	@RequestMapping("/product/product") // 상품보기
	public String list(Model m, HttpServletRequest request) {

		ArrayList<Product> products = productService.selectProductList();
		m.addAttribute("products", products);

		return "/admin/product_product";
	}

	@RequestMapping("/product_account") // 상품상세보기
	public String update_account(HttpServletRequest request, Model m, @RequestParam("product_id") int product_id) {
		String page = "/admin/product_account";
		Product product = productService.product_account(product_id);
		m.addAttribute("product", product);

		return page;
	}

	@RequestMapping("/advertising/product") // 광고 보기
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

	@RequestMapping("/add_product/result") // 상품추가 DB
	public String add_product_term_result(HttpServletRequest request, @ModelAttribute("product") Product product,
			BindingResult result) {

		String page = "/admin/add_product/result";
		System.out.println(product);
		if (productService.insertProduct(product) >= 1) {// DB연결 , 연결 결과값 비교로 리턴될 페이지 경로값 변경
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
	
	@RequestMapping("/volunteerlist")
	public String volunteer_list() {
		return "/admin/volunteerlist";
	}
	
	

}