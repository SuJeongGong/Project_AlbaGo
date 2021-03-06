package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
public class AdminMainController {

	@Autowired
	ProductService productService;
	@Autowired
	AdminService adminService;
	@Autowired
	EnterpriseService enterpriseService;
	
	@RequestMapping("/search")
	public String search(Model m		
			,@RequestParam(value = "search", defaultValue = "") String search) {
		System.out.println(search);
		ArrayList<HashMap<String, Object>>  E_members = adminService.searchEnter(search);
		ArrayList<HashMap<String, Object>>  I_members = adminService.searchIndi(search);
		System.out.println(E_members);
		m.addAttribute("E_members", E_members);
		m.addAttribute("I_members", I_members);
		System.out.println(I_members);
		
		return "admin/search";
	}

	@RequestMapping("/main") // 관리자 메인
	public String main(Model m) {
		
		m.addAttribute("sales", adminService.selectRecentSales());
		m.addAttribute("items", adminService.selectItems());
		m.addAttribute("upCount", adminService.selectCountItem_Enterprise("up"));
		m.addAttribute("resumeCount", adminService.selectCountItem_Enterprise("resume"));
		m.addAttribute("adCount", adminService.selectCountItem_Enterprise("ad"));
		m.addAttribute("boardCount", adminService.selectCountItem_Enterprise("board"));
	
		// 두개 더한거
		m.addAttribute("todaytotal", adminService.selet_TE_join() + adminService.select_TI_join());

		// 오늘 매출액
		m.addAttribute("totalM", adminService.total_M());
		
		//일주일 매출액 
		m.addAttribute("selectweek", adminService.selectWeekTotal());

		// 오늘 공고 갯수
		m.addAttribute("todaycount", adminService.today_Count());
		// 오늘 인재 갯수
		m.addAttribute("todaycount_resume", adminService.today_Count_resume());
		return "admin/main";

	}

	
	@RequestMapping("/product/product") // 상품보기 리스트 
	public String list(Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		m.addAttribute("products", productService.selectProductList((pageNum-1)*10));
		m.addAttribute("count", productService.selectProductListCount()/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
		return "/admin/product_product";
	}

	@RequestMapping("/product/product_account") // 상품상세보기
	public String update_account(HttpServletRequest request, Model m, @RequestParam("product_id") int product_id) {
		m.addAttribute("product", productService.product_account(product_id));
		return "/admin/product_account";
	}

	@RequestMapping("/advertising/product") // 광고 보기 - 리스트 
	public String advertisingㅣist(Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {		
		m.addAttribute("products", productService.selectAdvertisingList((pageNum-1)*10));
		m.addAttribute("count", productService.selectAdvertisingListCount()/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return "/admin/advertising_product";
	}

	@RequestMapping("/advertising/product_account") // 광고상세보기
	public String advertisingㅕpdate_account(Model m, @RequestParam("product_id") int product_id) {
		m.addAttribute("product", productService.product_account(product_id));
		return "/admin/advertising_account";
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
		String page = "/admin/advertising/product_account";
		if (productService.update_product(product) >= 1) {
			page = "redirect:/admin/advertising/product";
			System.out.println("DB연결성공");
		} else {
			System.out.println("실패라고요");
		}
		return page;
	}

	@RequestMapping("/account/delete") // 상품삭제하기
	public String delete(HttpServletRequest request, @ModelAttribute("product_id") Product product) {

		String page = "/admin/product_account";

		if (productService.delete_product(product) >= 1) {
			page = "redirect:/admin/product/product";
			System.out.println("DB연결성공");
		} else {
			System.out.println("실패라고요");
		}
		return page;
	}

	@RequestMapping("/product/approve") // 결제승인
	public String approve(Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		m.addAttribute("payments", productService.selectProductPayments((pageNum-1)*10));
		m.addAttribute("count", productService.selectProductPaymentsCount()/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
		return "admin/product_approve"; 
	}

	@RequestMapping("/add_product_term") // 기간있는 상품추가 보여주는 폼
	public String add_product_term() {
		return "/admin/add_product_term";
	}
	@RequestMapping("/add_advertising") // 광고상품추가 보여주는 폼
	public String add_advertising() {
		return  "/admin/add_advertising";
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
	public String advertisingApprove(Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		m.addAttribute("payments", productService.selectAdvertisingPayments((pageNum-1)*10));
		m.addAttribute("count", productService.selectAdvertisingPaymentsCount()/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
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
	
//	@RequestMapping("/payment") 
//	public String payment(Model m,
//			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
//		String page = "/admin/payment";
//
//		// 전체 매출
//		m.addAttribute("all_totalsales", adminService.all_totalsales());
//		// 오늘 매출 
//		m.addAttribute("todaysales", adminService.todaysales());
//		// 주간 매출 
//		m.addAttribute("weeklysales",  adminService.weeklysales());
//		// 매출 리스트		
//		m.addAttribute("payment", adminService.selectPaymentList());
//		
//		return page;
//	}
	
	@RequestMapping("/payment") // 매출관리 검색
	public String payment_T(Model m, 
			@RequestParam(value = "start", defaultValue="0000-00-00") String start,
			@RequestParam(value = "end", defaultValue="9999-12-31") String end,
			@RequestParam(value ="product_type",defaultValue="") String product_type,
			@RequestParam(value ="search",defaultValue="") String search,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "/admin/payment";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start+" 00:00:00");
		map.put("end", end+" 23:59:59");
		map.put("product_type", product_type);
		map.put("search", search);
		map.put("page", (pageNum-1)*10);
		ArrayList<Payment> payment = adminService.PaymentSearch(map);
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

		m.addAttribute("count", adminService.PaymentSearchCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
		m.addAttribute("payment", payment);
		return page;
	}
}