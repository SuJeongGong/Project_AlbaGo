package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Recruit;
import com.spring.ex.interceptor.Auth;
import com.spring.ex.interceptor.AuthUser;
import com.spring.ex.services.EnterpriseService;

@Auth
@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {// 회원 벨리데이션 처리 - 회원 구분 맞는지,아이디값이 있는지 , insert랑 update시 값 전부다 입력되어있는지 (자바스크립트)

	@Autowired
	EnterpriseService enterpriseService;

	@RequestMapping("/mypage") // 마이페이지
	public String mypage(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", (pageNum-1)*10);
		map.put("id", id.split("/")[0]);
		// 모델에 담기
		m.addAttribute("Einfo", enterpriseService.selectEnterprise(id.split("/")[0]));// 기업정보
		m.addAttribute("scrap", enterpriseService.selectScrap(map));// 스크랩
		m.addAttribute("recruit", enterpriseService.selectRecruits(map));// 공고
		m.addAttribute("volunteer", enterpriseService.selectVolunteer(map));// 지원자
		m.addAttribute("payment", enterpriseService.selectPayment(map));// 결제 기록
		m.addAttribute("advertising", enterpriseService.selectAdvertising(map));// 광고 기록
		m.addAttribute("payment_history_resume", enterpriseService.paymentHistoryResume(map));// 광고 기록
		m.addAttribute("payment_history_up", enterpriseService.paymentHistoryUp(map));// 광고 기록
		System.out.println("enterpriseService"+enterpriseService.paymentHistoryResume(map));

		return "/enterprise/mypage";
	}

	@RequestMapping("/payment") // 결제내역 자세히
	public String payment(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", (pageNum-1)*10);
		map.put("id", id.split("/")[0]);
		
		// 모델에 담기
		m.addAttribute("payments", enterpriseService.selectPayment(map));// 기업정보
		m.addAttribute("count", enterpriseService.selectPaymentCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return "/enterprise/payment";
	}

	@RequestMapping("/advertising") // 광고 내역
	public String advertising(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", (pageNum-1)*10);
		map.put("id", id.split("/")[0]);
		// 모델에 담기
		m.addAttribute("advertisings", enterpriseService.selectAdvertising(map));// 기업정보
		m.addAttribute("count", enterpriseService.selectAdvertisingCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return "/enterprise/advertising";
	}

	@RequestMapping("payment/resume") // 결제내역 자세히
	public String paymentResume(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", (pageNum-1)*10);
		map.put("id", id.split("/")[0]);
		// 모델에 담기
		m.addAttribute("payment_history_resume", enterpriseService.paymentHistoryResume(map));// 기업정보
		m.addAttribute("count", enterpriseService.selectpaymentHistoryResumeCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return "/enterprise/payment_resume";
	}

	@RequestMapping("payment/up") // 광고 내역
	public String paymentUp(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", (pageNum-1)*10);
		map.put("id", id.split("/")[0]);

		m.addAttribute("board_recruits", enterpriseService.boardRecruits(id.split("/")[0]));// 기업정보
		m.addAttribute("payment_history_up", enterpriseService.paymentHistoryUp(map));// 기업정보
		m.addAttribute("count", enterpriseService.paymentHistoryUpCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return "/enterprise/payment_up";
	}

	@RequestMapping("/account") // 정보수정 - 화면 보여주기
	public String account(@AuthUser String id, Model m) {

		m.addAttribute("Einfo", enterpriseService.selectEnterprise(id.split("/")[0]));// 기업정보

		return "/enterprise/account";
	}

	@RequestMapping("/account/update") // 정보수정 - 수정하기
	public String accountUpdate(@ModelAttribute("enterprise") Enterprise enterprise) {

		if (enterpriseService.updateAccount(enterprise) >= 1) {
			System.out.println("DB연결성공");

		} else {
			System.out.println("DB연결실패");
		}

		return "redirect:/enterprise/mypage";
	}

	@RequestMapping("/scrap") // 스크랩 인재
	public String scrap(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", (pageNum-1)*10);
		map.put("id", id.split("/")[0]);
		System.out.println(enterpriseService.selectScrap(map));
		m.addAttribute("scraps", enterpriseService.selectScrap(map));
		m.addAttribute("count", enterpriseService.selectScrapCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return "/enterprise/scrap";
	}

	@RequestMapping("/recruit/list") // 공고 리스트
	public String recruitList(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", (pageNum-1)*10);
		map.put("id", id.split("/")[0]);
		m.addAttribute("Recruits", enterpriseService.selectRecruits(map));// why salary는 안나오죠?
		m.addAttribute("count", enterpriseService.selectRecruitsCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return "/enterprise/recruit_list";
	}

	@RequestMapping("/recruit/write") // 공고 작성하기 - 화면 보여주기
	public String recruitWrite() {
		return "/enterprise/recruit_write";
	}

	@RequestMapping("/recruit/content") // 공고 상세보기
	public String recruitContent(@RequestParam("recruit_id") int recruit_id, Model m) {

		Recruit recruit = enterpriseService.selectRecruit(recruit_id);
		if (recruit != null) {
			System.out.println(recruit);
			m.addAttribute("recruit", recruit);
		}
		return "enterprise/recruit_content";

	}

	@RequestMapping("/recruit/write/save") // 공고 작성하기 - 저장하기
	public String recruitWriteSave(@ModelAttribute("recruit") Recruit recruit, @AuthUser String id) {

		recruit.setEnterprise_id(id.split("/")[0]);
		if (1 <= enterpriseService.insertRecruit(recruit)) {
			System.out.println("DB에 값 넣기 성공");
		}
		return "redirect:/enterprise/recruit/list";
	}

	@RequestMapping("/volunteer/list") // 지원한 인재
	public String volunteerList(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {


		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", (pageNum-1)*10);
		map.put("id", id.split("/")[0]);
		m.addAttribute("volunteers", enterpriseService.selectVolunteer(map));// why salary는 안나오죠?
		m.addAttribute("count", enterpriseService.selectVolunteerCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
		return "/enterprise/volunteer_list";
	}

	@RequestMapping("/volunteer/resume") // 지원한 사람의 지원한 이력서 보기
	public String volunteerResume(@RequestParam("resume_id") int resume_id, Model m) {

		m.addAttribute("resume", enterpriseService.selectVolunteerResume(resume_id));

		return "/enterprise/volunteer_resume";
	}

	// 아약스 처리
	@RequestMapping(value = "/volunteer/updateResult", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResult(String result, int id) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("volunteer_id", id);
		map.put("result", result);

		return enterpriseService.updateVolunteerResult(map);
	}

	@RequestMapping(value = "/volunteer/updateResults", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResults(@RequestParam(value = "result") String result,
			@RequestParam(value = "volunteer_ids[]") ArrayList<String> volunteer_ids) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("volunteer_ids", volunteer_ids);
		map.put("result", result);

		return enterpriseService.updateVolunteerResults(map);
	}

	@RequestMapping(value = "/deleteScrap", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResult(int scrap_id) {
		return enterpriseService.deleteScrap(scrap_id);
	}

	@RequestMapping(value = "/deleteScraps", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int updateResults(ArrayList<String> scrap_ids) {
		return enterpriseService.deleteScraps(scrap_ids);
	}

	@RequestMapping(value = "/recruit/deleteRecruit", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteRecruit(int recruit_id) {

		return enterpriseService.deleteRecruit(recruit_id);
	}

	@RequestMapping(value = "/recruit/deleteRecruits", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteRecruits(ArrayList<String> recruit_id) {

		return enterpriseService.deleteRecruits(recruit_id);
	}

	@RequestMapping(value = "/resume/use", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int resumeUse(@RequestParam(value = "board_resume_id") int board_resume_id,
			@AuthUser String id) {// 기업 아이템 사용 목록에 insert , resume_count 사용한 내역

		return enterpriseService.resumeUse(id.split("/")[0], board_resume_id);
	}

	@RequestMapping(value = "/resume/check", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int resumeCheck(@AuthUser String id) {// 기업 아이템 사용 목록에 insert , resume_count 사용한 내역
		if ((id.split("/")[0].toString()).equals("null")) {
			return -1;
		}
		if (!id.split("/")[1].equals("기업")) {
			return -2;
		}
		int resume_count = enterpriseService.selectResume_count(id.split("/")[0]);
		return resume_count;
	}

	@RequestMapping(value = "/scrap/save", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE) // 스크랩
																													// 인재
																													// -
																													// 추가하기
	public @ResponseBody int scrapSave(@RequestParam("board_resume_id") int board_resume_id, @AuthUser String id) {
		if ((id.split("/")[0].toString()).equals("null")) {
			return -1;
		}
		if (!id.split("/")[1].equals("기업")) {
			return -2;
		}
		return enterpriseService.insertScrap(board_resume_id, id.split("/")[0]);
	}

	@RequestMapping(value = "/payment/upBoard", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE) // 스크랩
																										// 추가하기
	public @ResponseBody int upBoard(@RequestParam("board_recruit_id") int board_recruit_id, @AuthUser String id) {
		System.out.println("board_recruit_id"+board_recruit_id);
		return enterpriseService.useUpcount(board_recruit_id,id.split("/")[0]);
	}

}
