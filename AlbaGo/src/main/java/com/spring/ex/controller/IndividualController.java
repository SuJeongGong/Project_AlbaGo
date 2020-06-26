package com.spring.ex.controller;

import java.util.ArrayList;

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

import com.spring.ex.dto.Career;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Resume;
import com.spring.ex.interceptor.Auth;
import com.spring.ex.interceptor.AuthUser;
import com.spring.ex.services.IndividualService;

@Auth
@Controller
@RequestMapping("/individual")
public class IndividualController {

	@Autowired
	IndividualService individualSerive;

	@RequestMapping("/mypage") // 마이페이지 메인
	public String mypage(@AuthUser String id, Model m) {
		// 모델에 담기
		m.addAttribute("Iinfo", individualSerive.selectIndividual(id));// 기업정보
		m.addAttribute("scraps", individualSerive.selectScrap(id));// 스크랩
		m.addAttribute("resumes", individualSerive.selectResumes(id));// 스크랩
		m.addAttribute("volunteers", individualSerive.selectVolunteer(id));// 스크랩
		return "/individual/mypage";
	}

	@RequestMapping("/account") // 개인정보 수정 - 화면 보여주기
	public String account(@AuthUser String id, Model m) {
		m.addAttribute("Iinfo", individualSerive.selectIndividual(id));// 기업정보
		return "/individual/account";
	}

	@RequestMapping("/account/update") // 개인정보 수정 - 수정하기
	public String account(HttpServletRequest request, @ModelAttribute("individual") Individual individual) {
		String page = "/individaul/account";
		if (1 <= individualSerive.updateAccount(individual)) {
			page = "redirect:/individaul/mypage";
		}
		return page;
	}

	@RequestMapping("/scrap") // 스크랩 공고- 리스트 보여주기
	public String scrap(@AuthUser String id, Model m) {
		m.addAttribute("scraps", individualSerive.selectScrap(id));

		return "/individual/scrap";
	}

	@RequestMapping("/scrap/save") // 스크랩 저장하기
	public String scrapSave(@AuthUser String id, @RequestParam("board_recruit_id") int board_recruit_id) {
		if (1 <= individualSerive.insertScrap(board_recruit_id, id)) {
			System.out.println("DB 연결 성공!");
		}

		return "redirect:/recruit/list";
	}

	@RequestMapping("/profile/list") // 이력서 - 리스트 보여주기
	public String profileList(@AuthUser String id, Model m) {
		m.addAttribute("Resumes", individualSerive.selectResumes(id));// why salary는 안나오죠?
		return "/individual/profile_list";
	}

	@RequestMapping("/profile/write") // 이력서 작성 - 화면보여주기
	public String profileWrite() {
		return "/individual/profile_write";
	}

	@RequestMapping("/profile/content") // 이력서 상세보기
	public String profileContent(@RequestParam("resume_id") int resume_id, Model m) {
		m.addAttribute("resume", individualSerive.selectResume(resume_id));
		return "individual/profile_content";
	}

	@RequestMapping("/profile/write/save") // 이력서 작성 - 저장하기
	public String profileWriteSave(@AuthUser String id, @ModelAttribute("profile") Resume resume,
			HttpServletRequest request) {
		String page = "/profile/write/save";// 성공 안하면
		ArrayList<Career> careers = new ArrayList<Career>();
		resume.setIndividual_id(id); // 세션에서 로그인 값 받아와서 이력서에 넣기

		if (1 <= individualSerive.insertResume(resume)) {// 이력서를 저장하는데에 성공했다면
			System.out.println("DB에 값 넣기 성공 ( 이력서 )");
			int i = 0;
			while (true) {
				if (request.getParameter("career_end_date" + i) == null) {
					break;
				}
				Career career = new Career();
				career.setName(request.getParameter("career_name" + i));
				career.setTask(request.getParameter("career_task" + i));
				career.setStart_date(request.getParameter("career_start_date" + i));
				career.setEnd_date(request.getParameter("career_end_date" + i));
				career.setResume_id(resume.getResume_id());// 저장 성공한 이력서의 key값으로 경력 넣기
				System.out.println(resume.getResume_id());
				careers.add(career);
				i = i + 1;
			}
		}
		if (1 <= individualSerive.insertCareer(careers, resume.getResume_id())) {// 경력 저장에 성공했다면
			System.out.println("DB에 값 넣기 성공 ( 경력 )");
			page = "/main"; // 성공했을때 경로
		}
		return page;
	}

	@RequestMapping("/support") // 지원현황 - 리스트 보여주기
	public String support(@AuthUser String id, Model m) {

		m.addAttribute("volunteers", individualSerive.selectVolunteer(id));// why salary는 안나오죠?

		return "/individual/support";
	}

	@RequestMapping(value = "/support/save", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE) // 지원하기
	public @ResponseBody void supportSave(@AuthUser String id, @RequestParam("board_recruit_id") int board_recruit_id,
			@RequestParam("resume_id") int resume_id, @RequestParam("memo") String memo, Model m) {
		m.addAttribute("volunteers", individualSerive.insertVolunteer(board_recruit_id, resume_id, id, memo));
//		page = "redirect:/recruit/content?board_recruit_id?"+board_recruit_id;

		return;
	}

	// 이력서 삭제
	@RequestMapping(value = "/profile/deleteResume", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteResuem(int resume_id) {
		return individualSerive.deleteResume(resume_id);
	}

	@RequestMapping(value = "/profile/deleteResumes", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteResuems(@RequestParam(value = "resume_ids[]") ArrayList<String> resume_ids) {

		return individualSerive.deleteResume(resume_ids);
	}

	@RequestMapping(value = "/deleteScrap", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteScrap(int scrap_id) {

		return individualSerive.deleteScrap(scrap_id);
	}

	@RequestMapping(value = "/deleteScraps", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteScraps(@RequestParam(value = "scrap_ids[]") ArrayList<String> scrap_ids) {

		return individualSerive.deleteScrap(scrap_ids);
	}

	@RequestMapping(value = "/deleteVolunteer", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteVolunteer(int volunteer_id) {

		return individualSerive.deleteVolunteer(volunteer_id);
	}

	@RequestMapping(value = "/deleteVolunteers", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int deleteVolunteers(
			@RequestParam(value = "volunteer_ids[]") ArrayList<String> volunteer_ids) {
		return individualSerive.deleteVolunteer(volunteer_ids);
	}

}
