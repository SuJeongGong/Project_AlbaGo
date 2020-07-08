package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;

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

@Auth//로그인 안한사람은 못하는거 
@Controller
@RequestMapping("/individual")
public class IndividualController {

	@Autowired
	IndividualService individualSerive;

	@RequestMapping("/mypage") // 마이페이지 메인
	public String mypage(@AuthUser String id, Model m) {//    실제 아이디 값 / 그 아이디의 타입  -> asdf/개인   -> id.split("/")[1]
		// 모델에 담기
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id",id.split("/")[0]);
		map.put("page",0);
		m.addAttribute("Iinfo", individualSerive.selectIndividual(id.split("/")[0]));// 기업정보
		m.addAttribute("scraps", individualSerive.selectScrap(map));// 스크랩
		m.addAttribute("resumes", individualSerive.selectResumes(map));// 스크랩
		m.addAttribute("volunteers", individualSerive.selectVolunteer(map));// 스크랩
		return "/individual/mypage";
	}

	@RequestMapping("/account") // 개인정보 수정 - 화면 보여주기
	public String account(@AuthUser String id, Model m) {
		m.addAttribute("Iinfo", individualSerive.selectIndividual(id.split("/")[0]));// 기업정보
		return "/individual/account";
	}

	@RequestMapping("/account/update") // 개인정보 수정 - 수정하기
	public String account( @ModelAttribute("individual") Individual individual) {
		String page = "/individual/account";
		if (1 <= individualSerive.updateAccount(individual)) {
			page = "redirect:/individual/mypage";
		}
		return page;
	}

	@RequestMapping("/scrap") // 스크랩 공고- 리스트 보여주기
	public String scrap(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id",id.split("/")[0]);
		map.put("page",(pageNum-1)*10);
		m.addAttribute("scraps", individualSerive.selectScrap(map));
		m.addAttribute("count", individualSerive.selectScrapCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보

		return "/individual/scrap";
	}



	@RequestMapping("/profile/list") // 이력서 - 리스트 보여주기
	public String profileList(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id",id.split("/")[0]);
		map.put("page",(pageNum-1)*10);
		m.addAttribute("Resumes", individualSerive.selectResumes(map));
		m.addAttribute("count", individualSerive.selectResumesCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
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
		String page = "/profile/profile_write";// 성공 안하면
		ArrayList<Career> careers = new ArrayList<Career>();
		resume.setIndividual_id(id.split("/")[0]); // 세션에서 로그인 값 받아와서 이력서에 넣기

		if (1 <= individualSerive.insertResume(resume)) {// 이력서를 저장하는데에 성공했다면
			System.out.println("DB에 값 넣기 성공 ( 이력서 )");
			int i = 0;
			while (true) {
				System.out.println("careers   :  "+careers);
				System.out.println("i : " +i);
				System.out.println("request.getParameter(\"career_end_date\" + i) : " +request.getParameter("career_end_date" + i));
				if (request.getParameter("career_end_date" + i)==null||request.getParameter("career_end_date" + i).equals("")) {
					System.out.println("break");
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
			page = "redirect:/individual/profile/list"; // 성공했을때 경로
		}
		System.out.println(careers.isEmpty());
		if(!careers.isEmpty()) {
			if (1 <= individualSerive.insertCareer(careers, resume.getResume_id())) {// 경력 저장에 성공했다면
				System.out.println("DB에 값 넣기 성공 ( 경력 )");
			}
		}
		
		return page;
	}

	@RequestMapping("/support") // 지원현황 - 리스트 보여주기
	public String support(@AuthUser String id, Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id",id.split("/")[0]);
		map.put("page",(pageNum-1)*10);
		m.addAttribute("volunteers", individualSerive.selectVolunteer(map));// why salary는 안나오죠?

		m.addAttribute("count", individualSerive.selectVolunteerCount(map)/10 + 1);// 기업정보
		m.addAttribute("pageNum", pageNum);// 기업정보
		return "/individual/support";
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
	@RequestMapping(value = "/scrap/save", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody int scrapSave(@AuthUser String id, @RequestParam("board_recruit_id") int board_recruit_id) {
		if((id.split("/")[0].toString()).equals("null")) {
			return  -1;
		}if(!id.split("/")[1].equals("개인")) {
			return  -2;
		}
		return  individualSerive.insertScrap(board_recruit_id, (id.split("/")[0]));
	}
	@RequestMapping(value = "/support/save", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE) // 지원하기
	public @ResponseBody int supportSave(@AuthUser String id, @RequestParam("board_recruit_id") int board_recruit_id,
			@RequestParam("resume_id") int resume_id, @RequestParam("memo") String memo) {
	
		return  individualSerive.insertVolunteer(board_recruit_id, resume_id, (id.split("/")[0]), memo);
	}
	@RequestMapping(value = "/check/id", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE) // 지원하기
	public @ResponseBody int checkid(@AuthUser String id) {
		if((id.split("/")[0].toString()).equals("null")) {
			return  -1;
		}if(!id.split("/")[1].equals("개인")) {
			return  -2;
		}
		return  individualSerive.selectResumeCount(id.split("/")[0]);
	}


}
