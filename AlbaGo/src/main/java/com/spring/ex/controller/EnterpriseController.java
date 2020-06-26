package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;
import com.spring.ex.services.EnterpriseService;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {// 회원 벨리데이션 처리 - 회원 구분 맞는지,아이디값이 있는지 , insert랑 update시 값 전부다 입력되어있는지 (자바스크립트)

	@Autowired
	EnterpriseService enterpriseService;

	@RequestMapping("/mypage") // 마이페이지
	public String mypage(HttpServletRequest request, Model m) {
		String page = "/main";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type"));
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			System.out.println("else문 들어와서  ");

			if (enterpriseService.selectEnterprise(id) != null) {
				System.out.println("모델 담기전 ");

				// 모델에 담기
				m.addAttribute("Einfo", enterpriseService.selectEnterprise(id));// 기업정보
				m.addAttribute("scrap", enterpriseService.selectScrap(id));// 스크랩
				m.addAttribute("recruit", enterpriseService.selectRecruits(id));//공고
				m.addAttribute("volunteer", enterpriseService.selectVolunteer(id));//지원자
				m.addAttribute("payment", enterpriseService.selectPayment(id));//결제 기록
				m.addAttribute("advertising", enterpriseService.selectAdvertising(id));//광고 기록
				m.addAttribute("payment_history_resume", enterpriseService.paymentHistoryResume(id));//광고 기록
				m.addAttribute("payment_history_up", enterpriseService.paymentHistoryUp(id));//광고 기록
				
				System.out.println("모델  후");

				page = "/enterprise/mypage";
			} else {
				System.out.println("DB연결실패");
			}

		}
		return page;
	}

	@RequestMapping("/account") // 정보수정 - 화면 보여주기
	public String account(HttpServletRequest request, Model m) {
		String page = "/enterprise/mypage";
		HttpSession session = request.getSession();

		if (!session.getAttribute("type").toString().equals("기업")) {
			return "/join/logout";
		} else {
			String id = session.getAttribute("id").toString();

			if (enterpriseService.selectEnterprise(id) != null) {
				System.out.println("DB연결성공");

				// 모델에 담기
				m.addAttribute("Einfo", enterpriseService.selectEnterprise(id));// 기업정보

				page = "/enterprise/account";
			} else {
				System.out.println("DB연결실패");
			}
		}
		return page;
	}

	@RequestMapping("/account/update") // 정보수정 - 수정하기
	public String accountUpdate(HttpServletRequest request, @ModelAttribute("enterprise") Enterprise enterprise) {
		String page = "/enterprise/account";
		HttpSession session = request.getSession();

		if (!session.getAttribute("type").toString().equals("기업")) {// 기업회원이 맞는지 확인
			return "/join/logout";
		} else {
			System.out.println(enterprise.getDate());

			if (enterpriseService.updateAccount(enterprise) == 1) {
				System.out.println("DB연결성공");

				page = "redirect:/enterprise/mypage";// /enterprise/mypage으로 보내기 실패ㅠ
			} else {
				System.out.println("DB연결실패");
			}
		}
		return page;
	}

	@RequestMapping("/scrap") // 스크랩 인재
	public String scrap(HttpServletRequest request, Model m) {
		String page = "/enterprise/mypage";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type"));
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			System.out.println(enterpriseService.selectScrap(id));
			m.addAttribute("scraps", enterpriseService.selectScrap(id));
			page = "/enterprise/scrap";
		}
		return page;
	}

	@RequestMapping("/scrap/save") // 스크랩 인재 - 추가하기
	public String scrapSave(@RequestParam("board_resume_id") int board_resume_id, HttpServletRequest request, Model m) {
		String page = "/enterprise/mypage";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type"));
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			m.addAttribute("scraps",
					enterpriseService.insertScrap(board_resume_id, request.getSession().getAttribute("id").toString()));
			page = "redirect:/resume/content?board_resume_id=" + board_resume_id;
		}
		return page;
	}

	@RequestMapping("/recruit/list") // 공고 리스트
	public String recruitList(HttpServletRequest request, Model m) {
		String page = "/main";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type"));
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();
			m.addAttribute("Recruits", enterpriseService.selectRecruits(id));// why salary는 안나오죠?
			page = "/enterprise/recruit_list";
		}
		return page;
	}

	@RequestMapping("/recruit/write") // 공고 작성하기 - 화면 보여주기
	public String recruitWrite() {
		return "/enterprise/recruit_write";
	}

	@RequestMapping("/recruit/content") // 공고 상세보기
	public String recruitContent(@RequestParam("recruit_id") int recruit_id, Model m) {
		String page = "/enterprise/list";// 원래 경로
		Recruit recruit = enterpriseService.selectRecruit(recruit_id);
		if (recruit != null) {
			System.out.println(recruit);
			m.addAttribute("recruit", recruit);
			page = "enterprise/recruit_content";
		}
		return page;

	}

	@RequestMapping("/recruit/write/save") // 공고 작성하기 - 저장하기
	public String recruitWriteSave(@ModelAttribute("recruit") Recruit recruit, HttpServletRequest request) {
		String page = "/recruit/write/save";
		recruit.setEnterprise_id(request.getSession().getAttribute("id").toString());
		if (1 <= enterpriseService.insertRecruit(recruit)) {
			System.out.println("DB에 값 넣기 성공");
			page = "redirect:/enterprise/recruit/list";
		}
		return page;
	}

	@RequestMapping("/volunteer/list") // 지원한 인재
	public String volunteerList(HttpServletRequest request, Model m) {
		String page = "/enterprise/mypage";
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("type"));
		if (!session.getAttribute("type").toString().equals("기업")) {
			return page;
		} else {
			String id = session.getAttribute("id").toString();

//			System.out.println(enterpriseService.selectVolunteer(id)); - 테스트 주석

			m.addAttribute("volunteers", enterpriseService.selectVolunteer(id));// why salary는 안나오죠?
			page = "/enterprise/volunteer_list";
		}
		return page;
	}

	@RequestMapping("/volunteer/resume") // 지원한 사람의 지원한 이력서 보기
	public String volunteerResume(@RequestParam("resume_id") int resume_id, Model m) {
		String page = "/enterprise/mypage";// 성공 안했을때 경로

		m.addAttribute("resume", enterpriseService.selectVolunteerResume(resume_id));
		page = "/enterprise/volunteer_resume";

		return page;
	}

	// 아약스 처리

	
	@RequestMapping(value = "/volunteer/updateResult", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int  updateResult(String result, int id) {
	
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("volunteer_id", id);
		map.put("result", result);

		return enterpriseService.updateVolunteerResult(map);
	}

	@RequestMapping(value = "/volunteer/updateResults", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int  updateResults(@RequestParam(value = "result") String result,
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
	public @ResponseBody int updateResults(ArrayList<String> scrap_id) {
	
		return enterpriseService.deleteScraps(scrap_id);
	}


	@RequestMapping(value = "/recruit/deleteRecruit", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteRecruit(int recruit_id) {
		
		return enterpriseService.deleteRecruit(recruit_id);
	}


	@RequestMapping(value = "/recruit/deleteRecruits", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public  @ResponseBody int  deleteRecruits(ArrayList<String> recruit_id) {
		
		return enterpriseService.deleteRecruits(recruit_id);
	}
	
	
	@RequestMapping(value = "/resume/use", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public  @ResponseBody int  resumeUse(@RequestParam(value = "enterprise_id") String enterprise_id,@RequestParam(value = "board_resume_id") int board_resume_id) {//기업 아이템 사용 목록에 insert , resume_count 사용한 내역

		return enterpriseService.resumeUse(enterprise_id,board_resume_id);
	}
	
	
	
}
