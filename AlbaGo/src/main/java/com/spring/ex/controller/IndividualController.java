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
import com.spring.ex.services.IndividualService;

@Controller
@RequestMapping("/individual")
public class IndividualController {

	@Autowired
	IndividualService individualSerive;

	// 아이디 리턴해주는 메서드
	public String sessionId(HttpSession session) {
		return session.getAttribute("id").toString();
	}

	// 경로 리턴 , 세션 타입에 따라
	public String sessionType(HttpSession session) {
		if (session.getAttribute("type").toString() == "기업") {
			return "/main";
		}
		return "";
	}

	@RequestMapping("/mypage") // 마이페이지 메인
	public String mypage(HttpServletRequest request, Model m) {
		String id = sessionId(request.getSession());
		String page = sessionType(request.getSession());

		if (individualSerive.selectIndividual(id) != null) {// DB 연결 오류 없음
			// 모델에 담기
			m.addAttribute("Iinfo", individualSerive.selectIndividual(id));// 기업정보
			m.addAttribute("scraps", individualSerive.selectScrap(id));// 스크랩
			m.addAttribute("resumes", individualSerive.selectResumes(id));// 스크랩
			m.addAttribute("volunteers", individualSerive.selectVolunteer(id));// 스크랩

			page = "/individual/mypage";
		} else {
			System.out.println("DB연결실패");
		}

		return page;

	}

	@RequestMapping("/account") // 개인정보 수정 - 화면 보여주기
	public String account(HttpServletRequest request, Model m) {
		String id = sessionId(request.getSession());
		String page = sessionType(request.getSession());
		if (individualSerive.selectIndividual(id) != null) {
			System.out.println("DB연결성공");

			// 모델에 담기
			m.addAttribute("Iinfo", individualSerive.selectIndividual(id));// 기업정보

			page = "/individual/account";
		} else {
			System.out.println("DB연결실패");
		}
		return page;
	}

	@RequestMapping("/account/update") // 개인정보 수정 - 수정하기
	public String account(HttpServletRequest request, @ModelAttribute("individual") Individual individual) {
		// String id = sessionId(request.getSession());
		String page = sessionType(request.getSession());

		if (individualSerive.updateAccount(individual) == 1) {
			System.out.println("DB연결성공");

			page = "/main";
		} else {
			System.out.println("DB연결실패");
		}

		return page;
	}

	@RequestMapping("/scrap") // 스크랩 공고- 리스트 보여주기
	public String scrap(HttpServletRequest request, Model m) {
		String id = sessionId(request.getSession());
		String page = sessionType(request.getSession());
		System.out.println(individualSerive.selectScrap(id));
		m.addAttribute("scraps", individualSerive.selectScrap(id));
		page = "/individual/scrap";

		return page;
	}
	
	@RequestMapping("/scrap/save") //스크랩 저장하기
	public String scrapSave(HttpServletRequest request,@RequestParam("board_recruit_id") int board_recruit_id) {
		String id = sessionId(request.getSession());
		String page = sessionType(request.getSession());
		 if(1<=individualSerive.insertScrap(board_recruit_id,id)) {
			 System.out.println("DB 연결 성공!");
				page = "redirect:/recruit/list";
		 }
		
		return page;
	}
	
	@RequestMapping("/profile/list") // 이력서 - 리스트 보여주기
	public String profileList(HttpServletRequest request, Model m) {
		String id = sessionId(request.getSession());
		String page = sessionType(request.getSession());
		m.addAttribute("Resumes", individualSerive.selectResumes(id));// why salary는 안나오죠?
		page = "/individual/profile_list";

		return page;
	}

	@RequestMapping("/profile/write") // 이력서 작성 - 화면보여주기
	public String profileWrite() {
		return "/individual/profile_write";
	}
	
	@RequestMapping("/profile/content") // 이력서 상세보기
	public String profileContent(@RequestParam("resume_id") int resume_id,Model m) {
		String page =  "/individual/profile_list";
		Resume resume = individualSerive.selectResume(resume_id);
		if(resume!=null) {
			m.addAttribute("resume", resume);
			page= "individual/profile_content";
		}
		return page;
	}


	@RequestMapping("/profile/write/save") // 이력서 작성 - 저장하기
	public String profileWriteSave(@ModelAttribute("profile") Resume resume, HttpServletRequest request) {
		String page = "/profile/write/save";// 성공 안하면 

		ArrayList<Career> careers = new ArrayList<Career>();
		

		resume.setIndividual_id(request.getSession().getAttribute("id").toString()); //세션에서 로그인 값 받아와서 이력서에 넣기
		
		if (1 <= individualSerive.insertResume(resume)) {//이력서를 저장하는데에 성공했다면 
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
				career.setResume_id(resume.getResume_id());//저장 성공한 이력서의 key값으로 경력 넣기
				System.out.println(resume.getResume_id());
				careers.add(career);
				i = i + 1;
			}
		}

		if (1 <= individualSerive.insertCareer(careers, resume.getResume_id())) {//경력 저장에 성공했다면
			System.out.println("DB에 값 넣기 성공 ( 경력 )");
			page = "/main"; // 성공했을때 경로

		}
		return page;

	}

	@RequestMapping("/support") // 지원현황 - 리스트 보여주기
	public String support(HttpServletRequest request, Model m) {
		String id = sessionId(request.getSession());
		String page = sessionType(request.getSession());

//			System.out.println(enterpriseService.selectVolunteer(id)); - 테스트 주석

		m.addAttribute("volunteers", individualSerive.selectVolunteer(id));// why salary는 안나오죠?
		page = "/individual/support";

		return page;
	}
	@RequestMapping( value ="/support/save", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE) // 지원하기
	public 	@ResponseBody  void supportSave(HttpServletRequest request, @RequestParam("board_recruit_id")int board_recruit_id,@RequestParam("resume_id")int resume_id,@RequestParam("memo")String memo,Model m) {
		String id = sessionId(request.getSession());
		String page = sessionType(request.getSession());
		System.out.println("board_recruit_id : "+board_recruit_id);
		System.out.println("resume_id : "+resume_id);
		m.addAttribute("volunteers", individualSerive.insertVolunteer(board_recruit_id,resume_id,id,memo));
//		page = "redirect:/recruit/content?board_recruit_id?"+board_recruit_id;
		
		return ;
	}
	//이력서 삭제
	@RequestMapping(value = "/profile/deleteResume", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public 	@ResponseBody int deleteResuem(int resume_id) {
		return individualSerive.deleteResume(resume_id);
	}

	@RequestMapping(value = "/profile/deleteResumes", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public 	@ResponseBody int deleteResuems(@RequestParam(value = "resume_ids[]") ArrayList<String> resume_ids) {

		return individualSerive.deleteResume(resume_ids);
	}

	@RequestMapping(value = "/deleteScrap", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public 	@ResponseBody int deleteScrap(int scrap_id) {
	
		return individualSerive.deleteScrap(scrap_id);
	}

	@RequestMapping(value = "/deleteScraps", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public 	@ResponseBody int deleteScraps(@RequestParam(value = "scrap_ids[]") ArrayList<String> scrap_ids) {
	
		return individualSerive.deleteScrap(scrap_ids);
	}

	@RequestMapping(value = "/deleteVolunteer", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public 	@ResponseBody int deleteVolunteer(int volunteer_id) {
	
		return individualSerive.deleteVolunteer(volunteer_id);
	}

	@RequestMapping(value = "/deleteVolunteers", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public 	@ResponseBody int deleteVolunteers(@RequestParam(value = "volunteer_ids[]") ArrayList<String> volunteer_ids) {
		return individualSerive.deleteVolunteer(volunteer_ids);
	}

}
