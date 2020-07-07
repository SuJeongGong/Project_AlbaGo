package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.dao.BoardResumeDAO;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Career;
import com.spring.ex.dto.Resume;
import com.spring.ex.interceptor.Auth;
import com.spring.ex.interceptor.AuthUser;
import com.spring.ex.services.BoardResumeService;
import com.spring.ex.services.IndividualService;

@Controller
@RequestMapping("/resume")
public class BoardResumeController {

	@Autowired
	BoardResumeService boardResumeService;
	@Autowired
	IndividualService individualService;

	@RequestMapping("/list") // 검색
	public String list_total(Model m,
			@RequestParam(value = "enterprise_category", defaultValue = "") String enterprise_category,
			@RequestParam(value = "local_category", defaultValue = "") String local_category,
			@RequestParam(value = "gender", defaultValue = "") String gender,
			@RequestParam(value = "education", defaultValue = "") String education,
			@RequestParam(value = "term", defaultValue = "") String term,
			@RequestParam(value = "title", defaultValue = "") String title,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "/resume/list";

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("category", enterprise_category);
		map.put("place", local_category);
		map.put("gender", gender);
		map.put("education", education);
		map.put("term", term);
		map.put("title", title);
		map.put("start", (pageNum - 1) * 10);

		ArrayList<BoardResume> boardresumes = boardResumeService.total_List(map);
		int count = boardResumeService.selectListCount(map);
		m.addAttribute("boardrecruits", boardresumes);
		m.addAttribute("pageNum", pageNum);
		m.addAttribute("count", count / 10 + 1);
		m.addAttribute("map", map);
		System.out.println(boardresumes + "boardrecruits");
		return page;
	}

	@Auth
	@RequestMapping("/write/save") // 저장하기
	public String write_save( @ModelAttribute("boardresume") BoardResume boardresume,
			BindingResult result, @AuthUser String id) {
		String page = "/resume/list";

		if (id.split("/")[1].equals("기업")) {
			return page;
		}
		if (1 <= boardResumeService.insertBoard_resume(boardresume)) {
			System.out.println("되라2");
			page = "redirect:/resume/list";
		}

		return page;
	}

	@Auth
	@RequestMapping("/write") // 작성화면
	public String write(Model m, @AuthUser String id) {

		if (id.split("/")[1].equals("기업")) {
			return "redirect:/resume/list";
		}
		ArrayList<BoardResume> resumes = boardResumeService.selectResume(id.split("/")[0]);
		System.out.println();
		System.out.println("잘되라");

		m.addAttribute("resume", resumes);

		return "/resume/write";
	}

	@RequestMapping("/content") // 보는화면
	public String content(Model m, @AuthUser String id,@RequestParam("board_resume_id") int board_resume_id) {

		if(1<=boardResumeService.updateViews(board_resume_id)) {// 1번
			BoardResume board_content = boardResumeService.selectView(board_resume_id);
			board_content.setBoard_resume_id(board_resume_id);
			ArrayList<Career> careers = boardResumeService.selectCareers(board_resume_id);
			m.addAttribute("board_content", board_content);
			m.addAttribute("careers", careers);
		}

		return "/resume/content";
	}

	@Auth
	@RequestMapping("content/write_update") // 수정화면에 수정 버튼 누르면
	public String contentUpdate(@ModelAttribute("boardresume") BoardResume boardresume) {
		String page = "/resume/write_update"; // 안되면

		System.out.println(boardresume);

		if (boardResumeService.updateBoard(boardresume) >= 1) {
			System.out.println("DB연결 성공");
			page = "redirect:/resume/list";
		} else {
			System.out.println("DB연결 실패");
		}
		return page;
	}

	@Auth
	@RequestMapping("/write_update") // 수정화면보기
	public String update(Model m, @AuthUser String id,@RequestParam("board_resume_id") int board_resume_id) {
		String page = "/resume/list";

			ArrayList<BoardResume> resumes = boardResumeService.selectResume(id.split("/")[0]); // 인재 글쓴 값
			m.addAttribute("resume", resumes);

			BoardResume boardresume = boardResumeService.selectView(board_resume_id);
			boardresume.setBoard_resume_id(board_resume_id);
			System.out.println("수정화면 보여주는 컨트롤러" + boardresume);
			m.addAttribute("board_content", boardresume);
			page = "/resume/write_update";

		return page;
	}

	@Auth
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int board_resume_id) {
		String page = "/resume/content";
		System.out.println(board_resume_id); // jsp에서 가져온 값
		if (1 <= boardResumeService.deleteBoard(board_resume_id)) {
			System.out.println("DB 성공");
			page = "redirect:/resume/list";
		} else {
			System.out.println("DB 실패");
		}
		return page;
	}
}
