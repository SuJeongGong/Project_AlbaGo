package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
import com.spring.ex.services.AdminMemberService;

@RequestMapping("/admin/member")
@Controller
public class AdminMember {
	@Autowired
	AdminMemberService adminMemberService;

	// 개인 회원#################################################################################################

	@RequestMapping("/individual") // 개인 리스트
	public String individual(Model m
			,@RequestParam(value = "category", defaultValue = "individual_id") String category
			,@RequestParam(value = "search", defaultValue = "") String search
			,@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "/admin/individual_list";
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("search", search);

		ArrayList<Individual> individuals = adminMemberService.selectIndividual(category, search,(pageNum - 1) * 10);
		System.out.println(individuals);
		System.out.println(map);
		m.addAttribute("individuals", individuals);
		m.addAttribute("map", map);
		m.addAttribute("count", adminMemberService.selectIndividualCount(category, search) / 10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return page; //
	}

	@RequestMapping("/individual/detail") // 개인 - 디테일?
	public String individual_detail(Model m, @RequestParam("individual_id") String individual_id
			,@RequestParam(value = "category", defaultValue = "enterprise_id") String category
			,@RequestParam(value = "search", defaultValue = "") String search
			,@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "/admin/individual_detail";

		// 개인 회원정보 상세보기
		Individual individual = adminMemberService.selectIndividualAccount(individual_id);
		m.addAttribute("individual", individual);

		// 이력서 관리
		ArrayList<Resume> resume = adminMemberService.selectResume(individual_id);
		m.addAttribute("resume", resume);

		// 지원한알바
		ArrayList<Volunteer> volunteer = adminMemberService.selectApplypartjob(individual_id);
		m.addAttribute("volunteers", volunteer);

		// 인재 게시판 작성글
		ArrayList<BoardResume> resumewrite = adminMemberService.selectResumeWrite(individual_id);
		m.addAttribute("resumewrite", resumewrite);

		// 커뮤니티 게시판 작성글
		ArrayList<BoardCommunity> community = adminMemberService.selectCommunity(individual_id);
		m.addAttribute("communitys", community);
		//기업스크랩
		ArrayList<Scrap_Individual> scrap_individual= adminMemberService.selectEnterpriseScrap(individual_id);
		m.addAttribute("scrap_individual", scrap_individual);
		return page;

	}

	@RequestMapping("/individual_detail/update") // 개인정보 수정 - 수정하기
	public String individual_detail(@ModelAttribute("individual") Individual individual	) {
		String page = "/admin/individual_detail";
		if (1 <= adminMemberService.updateIndividualAccount(individual)) {
			System.out.println(individual);
			System.out.println("수정");
			page = "redirect:/admin/main";

		}
		
		return page;
	}

	// ajax
	//// 계정정지 AJAX
	@RequestMapping(value = "/changestate", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int changestate(@RequestParam("individual_id") String individual_id,
			@RequestParam("result") int result) {
		return adminMemberService.changestate(individual_id, result);
	}

	// 이력서삭제 AJAX
	@RequestMapping(value = "/deleteResume", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteResume(@RequestParam("resume_id") int resume_id) {
		return adminMemberService.deleteResume(resume_id);
	}

	// 지원한 알바 지원취소 AJAX
	@RequestMapping(value = "/deleteVolunteer", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteVolunteer(@RequestParam("volunteer_id") int volunteer_id) {
		System.out.println("volunteer_id" + volunteer_id);
		return adminMemberService.deleteVolunteer(volunteer_id);
	}

	// 인재 게시판 취소 AJAX
	@RequestMapping(value = "/deletBoardResume", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deletBoardResume(@RequestParam("board_resume_id") int board_resume_id) {
		System.out.println("board_resume_id" + board_resume_id);
		return adminMemberService.deletBoardResume(board_resume_id);
	}

	// 커뮤니티 게시판 삭제 AJAX
	@RequestMapping(value = "/deleteCommunity", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE) // 삭제
	public @ResponseBody int delete(@RequestParam("community_id") int community_id) {
		System.out.println("community_id :" + community_id);
		return adminMemberService.deleteCommunity(community_id);
	} // 글삭제

	// 기업회원#################################################################################################

	@RequestMapping("/enterprise") // 기업 리스트
	public String enterprise_list(Model m
			,@RequestParam(value = "category", defaultValue = "enterprise_id") String category
			,@RequestParam(value = "search", defaultValue = "") String search
			,@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "admin/enterprise_list";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("search", search);
		m.addAttribute("map", map);
		ArrayList<Enterprise> enterprises = adminMemberService.selectEnterprise(category,search,(pageNum - 1) * 10);
		m.addAttribute("enterprises", enterprises);
		m.addAttribute("count", adminMemberService.selectEnterpriseCount(category,search) / 10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return page;
	}

	@RequestMapping("/enterprise_detail") // 기업 - 디테일?
	public String enterprise_detail(Model m, @RequestParam("enterprise_id") String enterprise_id			,@RequestParam(value = "category", defaultValue = "enterprise_id") String category
			,@RequestParam(value = "search", defaultValue = "") String search
			,@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "admin/enterprise_detail";

		// 기업 회원정보 상세보기
		Enterprise enterprise = adminMemberService.selectEnterpriseAccount(enterprise_id);
		m.addAttribute("enterprise", enterprise);

		// 공고관리
		ArrayList<Recruit> recruit = adminMemberService.selectRecruit(enterprise_id);
		m.addAttribute("recruit", recruit);

		// 공고글 관리
		ArrayList<BoardRecruit> boardrecruit = adminMemberService.selectRecruitWrite(enterprise_id);
		m.addAttribute("boardrecruit", boardrecruit);

		// 인재스크랩
		ArrayList<Scrap_enterprise> scrap_enterprise = adminMemberService.selectScrap(enterprise_id);
		m.addAttribute("scrap_enterprise", scrap_enterprise);

		// 결제내역
		ArrayList<Payment> payment = adminMemberService.selectPayment(enterprise_id);
		m.addAttribute("payment", payment);

		//총매출
		Product product = adminMemberService.sumPayment(enterprise_id);
		m.addAttribute("product", product);
		return page;
	}

	@RequestMapping("/enterprise_detail/update") // 기업정보 수정 - 수정하기
	public String enterprise_detail(@ModelAttribute("enterprise") Enterprise enterprise			
			,@RequestParam(value = "category", defaultValue = "enterprise_id") String category
			,@RequestParam(value = "search", defaultValue = "") String search
			,@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "/admin/enterprise_detail";
		System.out.println();

		System.out.println("컨트롤러 if전" + enterprise);
		if (1 <= adminMemberService.updateEnterpriseAccount(enterprise)) {

			System.out.println(enterprise);
			System.out.println("수정");
			page = "redirect:/admin/main";

		}

		return page;
	}

	// 관리자
	// 기업 계정정지 AJAX
	@RequestMapping(value = "/changeEnterprisestate", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int changeEnterprisestate(@RequestParam("enterprise_id") String enterprise_id,
			@RequestParam("result") int result) {
		return adminMemberService.changeEnterprisestate(enterprise_id, result);
	}

	// 공고삭제 AJAX
	@RequestMapping(value = "/deleteEnterpriseRecruit", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteEnterpriseRecruit(@RequestParam("recruit_id") int recruit_id) {
		return adminMemberService.deleteEnterpriseRecruit(recruit_id);
	}

	// 공고글 삭제 AJAX
	@RequestMapping(value = "/deleteEnterpriseBoardRecruit", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteEnterpriseBoardRecruit(@RequestParam("board_recruit_id") int board_recruit_id) {
		return adminMemberService.deleteEnterpriseBoardRecruit(board_recruit_id);
	}

	// 인재글 삭제 AJAX
	@RequestMapping(value = "/deleteScrap", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteScrap(@RequestParam("scrap_id") int scrap_id) {
		return adminMemberService.deleteScrap(scrap_id);
	}

}
