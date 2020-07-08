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
import com.spring.ex.services.AdminBoardService;
import com.spring.ex.services.EnterpriseService;
import com.spring.ex.services.ProductService;

@Controller
@RequestMapping("/admin/board")
public class AdminBoardController {

	@Autowired
	AdminBoardService adminBoardService;
	@Autowired
	EnterpriseService enterpriseService;

	@RequestMapping("/recruit") // 총 공고글 검색
	public String boardrecruit_t(Model m
			,@RequestParam(value="enterprise_category", defaultValue = "") String enterprise_category
			,@RequestParam(value="local_category", defaultValue = "") String local_category
			,@RequestParam(value="gender", defaultValue = "") String gender
			,@RequestParam(value="education", defaultValue = "") String education
			,@RequestParam(value="day", defaultValue = "all") String day
			,@RequestParam(value="search", defaultValue = "") String search
			,@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "/admin/recruit";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("enterprise_category", enterprise_category);
		map.put("local_category", local_category);
		map.put("gender", gender);
		map.put("education", education);
		map.put("day", day);
		map.put("search", search);
		map.put("page", (pageNum-1)*10);
		
		System.out.println(map);
		System.out.println(search);
		ArrayList<BoardRecruit> boardrecruits = adminBoardService.selectRecruit(map);
		m.addAttribute("boardrecruits", boardrecruits);

		// 전체 공고 갯수
		int allcount = adminBoardService.all_Count();
		m.addAttribute("allcount", allcount);

		// 오늘 공고 갯수
		int todaycount = adminBoardService.today_Count();
		m.addAttribute("todaycount", todaycount);

		// 오늘 공고 갯수
		int yesterdaycount = adminBoardService.yesterday_Count();
		m.addAttribute("yesterdaycount", yesterdaycount);

		m.addAttribute("map", map);
		m.addAttribute("count", adminBoardService.selectRecruitCount(map) / 10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
		return page;
	}

	// ajax처리
	@RequestMapping(value = "/deleteBoardRecruits", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteBoardRecruits(
			@RequestParam(value = "boardrecruit_ids[]") ArrayList<String> boardrecruit_id) {

		System.out.println(boardrecruit_id);

		return adminBoardService.deleteBoardRecruits(boardrecruit_id);
	}

//	@RequestMapping("/resume") // 인재글 게시판 - 관리자 ver
//	public String resume(Model m) {
//
//
//		// 인재글 리스트
//		ArrayList<BoardResume> boardresumes = adminBoardService.resume_List();
//		m.addAttribute("boardresumes", boardresumes);
//		return "/admin/resume";
//	}
//
//	@RequestMapping("/resume/id") // 인재글 검색
//	public String boardresume_id(Model m, @RequestParam("category") String category,
//			@RequestParam("search") String search) {
//		String page = "/admin/resume";
//		ArrayList<BoardResume> boardresumes = adminBoardService.resume_List_id(category, search);
//		m.addAttribute("boardresumes", boardresumes);
//
//		return page;
//	}
//
//	@RequestMapping("/resume/day") // 인재글 날짜 검색 (오늘, 일주일, 한달)
//	public String boardresume_day(Model m, @RequestParam("day") String day,
//			@RequestParam("daysearch") String daysearch) {
//		String page = "/admin/resume";
//		ArrayList<BoardResume> boardresumes = adminBoardService.resume_List_day(day, daysearch);
//		m.addAttribute("boardresumes", boardresumes);
//
//		return page;
//	}

	@RequestMapping("/resume") // 인재글 검색
	public String boardresume_t(Model m
			,@RequestParam(value="individual_category", defaultValue = "") String individual_category
			,@RequestParam(value="local_category", defaultValue = "") String local_category
			,@RequestParam(value="gender", defaultValue = "") String gender
			,@RequestParam(value="education", defaultValue = "") String education
			,@RequestParam(value="day", defaultValue = "all") String day
			,@RequestParam(value="search", defaultValue = "") String search
			,@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "/admin/resume";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("individual_category", individual_category);
		map.put("local_category", local_category);
		map.put("gender", gender);
		map.put("education", education);
		map.put("day", day);
		map.put("search", search);
		map.put("page", (pageNum-1)*10);
		
		ArrayList<BoardResume> boardresumes = adminBoardService.selectResume(map);
		m.addAttribute("boardresumes", boardresumes);

		// 전체 인재 갯수
		int allcount_resume = adminBoardService.all_Count_resume();
		m.addAttribute("allcount_resume", allcount_resume);

		// 오늘 인재 갯수
		int todaycount_resume = adminBoardService.today_Count_resume();
		m.addAttribute("todaycount_resume", todaycount_resume);

		// 어제 인재 갯수
		int yesterdaycount_resume = adminBoardService.yesterday_Count_resume();
		m.addAttribute("yesterdaycount_resume", yesterdaycount_resume);

		m.addAttribute("map", map);
		m.addAttribute("count", adminBoardService.selectResumeCount(map) / 10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
		return page;
	}

	// ajax처리
	@RequestMapping(value = "/deleteBoardResumes", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteBoardResumes(
			@RequestParam(value = "boardresume_ids[]") ArrayList<String> boardresume_id) {
		System.out.println(boardresume_id);
		return adminBoardService.deleteBoardResumes(boardresume_id);
	}

//	@RequestMapping("/community") // 커뮤니티 게시판 -관리자 ver
//	public String community(Model m) {
//		// 커뮤니티 리스트
//		ArrayList<BoardCommunity> boardcommunities = adminBoardService.community_List();
//		m.addAttribute("boardcommunities", boardcommunities);
//		return "admin/community";
//	}

	@RequestMapping("/community") // 커뮤니티 날짜 검색 (오늘, 일주일, 한달)
	public String community_day(Model m
			,@RequestParam(value = "start", defaultValue = "0000-00-00") String start
			,@RequestParam(value = "end", defaultValue = "9999-12-31") String end
			,@RequestParam(value = "search", defaultValue = "") String search
			,@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "/admin/community";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start+" 00:00:00");
		map.put("end", end+" 23:59:59");
		map.put("search", search);
		map.put("page", (pageNum-1)*10);

		System.out.println(start);
		System.out.println(end);
		System.out.println(search);
		ArrayList<BoardCommunity> boardcommunities = adminBoardService.selectCommunity(map);
		System.out.println(boardcommunities);
		m.addAttribute("boardcommunities", boardcommunities);
		m.addAttribute("map", map);
		m.addAttribute("count", adminBoardService.selectCommunityCount(map) / 10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
		return page;
	}

	// ajax처리
	@RequestMapping(value = "/deleteBoardCommunities", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteBoardCommunities(
			@RequestParam(value = "boardcommunity_ids[]") ArrayList<String> boardcommunity_id) {
		System.out.println(boardcommunity_id);
		return adminBoardService.deleteBoardCommunities(boardcommunity_id);
	}

	@RequestMapping("/volunteerlist") //지원자보기
	public String volunteer_list(Model m, @RequestParam(value = "board_recruit_id") String board_recruit_id) {
		System.out.println(board_recruit_id);
		
		ArrayList<Volunteer> volunteers = adminBoardService.board_list(board_recruit_id);
		System.out.println(volunteers);
		m.addAttribute("volunteers", volunteers);
		return "/admin/volunteerlist";
	}
	 
	// 아약스 처리 지원자 보기
	@RequestMapping(value = "/updateResult", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResultB(String result, int id) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("volunteer_id", id);
		map.put("result", result);
		return enterpriseService.updateVolunteerResult(map);
	}

	@RequestMapping(value = "/updateResults", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResultsB(@RequestParam(value = "result") String result,
		@RequestParam(value = "volunteer_ids[]") ArrayList<String> volunteer_ids) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("volunteer_ids", volunteer_ids);
		map.put("result", result);
		return enterpriseService.updateVolunteerResults(map);
	}

}