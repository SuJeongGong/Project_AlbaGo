package com.spring.ex.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
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

import com.spring.ex.dao.BoardRecruitDAO;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.interceptor.Auth;
import com.spring.ex.interceptor.AuthUser;
import com.spring.ex.services.BoardRecruitService;
import com.spring.ex.services.EnterpriseService;

@Controller
@RequestMapping("/recruit")
public class BoardRecruitController {

	@Autowired
	BoardRecruitService boardRecruitService;
	@Autowired
	EnterpriseService enterpriseService;

	@RequestMapping(value = "/list")
	public String list_total(Model m, HttpServletRequest request,
			@RequestParam(value = "enterprise_category", defaultValue = "") String enterprise_category,
			@RequestParam(value = "local_category", defaultValue = "") String local_category,
			@RequestParam(value = "gender", defaultValue = "") String gender,
			@RequestParam(value = "education", defaultValue = "") String education,
			@RequestParam(value = "term", defaultValue = "") String term,
			@RequestParam(value = "title", defaultValue = "") String title,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		String page = "/recruit/list";

		try {
			local_category = URLDecoder.decode(local_category, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			enterprise_category = URLDecoder.decode(enterprise_category, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			title = URLDecoder.decode(title, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("category", enterprise_category);
		map.put("place", local_category);
		map.put("gender", gender);
		map.put("education", education);
		map.put("term", term);
		map.put("title", title);
		map.put("start", (pageNum - 1) * 10);
		ArrayList<BoardRecruit> boardrecruits = boardRecruitService.total_List(map);
		int count = boardRecruitService.selectListCount(map);
		System.out.println("local_category" + local_category);
		System.out.println(boardrecruits + "컨트롤러");
		System.out.println(pageNum + " pageNum ::::::;컨트롤러");
		System.out.println(boardrecruits.size() + " boardrecruits ::::::;컨트롤러");
		System.out.println(count + " count ::::::;컨트롤러");

		m.addAttribute("boardrecruits", boardrecruits);
		m.addAttribute("pageNum", pageNum);
		m.addAttribute("count", count / 10 + 1);
		m.addAttribute("map", map);

		return page;
	}

	@Auth
	@RequestMapping("/write/save") // 저장하기
	public String write_save(@ModelAttribute("boardrecruit") BoardRecruit boardrecruit, @AuthUser String id,
			BindingResult result) {
		String page = "/recruit/write";

		if (id.split("/")[1].equals("개인")) {
			System.out.println("되나?2");
			page = "redirect:/recruit/lsit";
		}
		if (1 <= boardRecruitService.insertBoard_recruit(boardrecruit)) {
			System.out.println("되나?2");
			page = "redirect:/recruit/lsit";
		}

		return page;
	}

	@Auth
	@RequestMapping("/write") //
	public String write(Model m, @AuthUser String id) {
		if(id.split("/")[1].equals("개인")) {
			return "redirect:/recruit/list";
		}
		ArrayList<BoardRecruit> recruits = boardRecruitService.selectRecruit(id.split("/")[0]);

		m.addAttribute("recruit", recruits);

		return "/recruit/write";
	}

	@RequestMapping("/content") // 보는화면
	public String content(Model m, @AuthUser String id, @RequestParam("board_recruit_id") int board_recruit_id) {

		if (boardRecruitService.updateViews(board_recruit_id) >= 1) {
			BoardRecruit board_content = boardRecruitService.selectView(board_recruit_id);
			board_content.setBoard_recruit_id(board_recruit_id);

			ArrayList<Resume> resume = boardRecruitService.selectResumes(id.split("/")[0]);
			if (resume != null) {
				m.addAttribute("resumes", resume);
			}

			m.addAttribute("board_content", board_content);// 여기 속성이름 지정하는거랑 jsp에서 가져오는거랑 달라서 그랬어
		}

		return "/recruit/content";
	}

	@Auth
	@RequestMapping("/content/write_update") // 수정화면에 수정 버튼 누르면
	public String contentUpdate( @AuthUser String id,  @ModelAttribute("boardrecruit") BoardRecruit boardrecruit) {
		String page = "/recruit/write_update"; // 안되면
	

		if (id.split("/")[1].equals("개인")) { // 기업회원이 맞는지 확인
			return "/recruit/list";
		} 
			System.out.println(boardrecruit);
			if (boardRecruitService.updateBoard(boardrecruit) >= 1) {
				System.out.println("DB연결 성공");
				page = "redirect:/recruit/lsit";
			} else {
				System.out.println("DB연결 실패");
			}
	
		return page;
	}

	@Auth
	@RequestMapping("/update") // 수정화면보기
	public String update( @AuthUser String id, Model m, @RequestParam("board_recruit_id") int board_recruit_id) {
		String page = "/recruit/list";

		if (id.split("/")[1].equals("기업")) { // 기업회원이 맞는지 확인
			return page;
		} 

			ArrayList<BoardRecruit> recruits = boardRecruitService.selectRecruit(id.split("/")[0]); // 공고 글쓴 값들 ?recruit의 값들 가져오기?
			m.addAttribute("recruit", recruits); // 공고값

			BoardRecruit boardrecruit = boardRecruitService.selectView(board_recruit_id);
			boardrecruit.setBoard_recruit_id(board_recruit_id);
			System.out.println("수정 화면 보여주는 컨트롤러 " + boardrecruit);
			m.addAttribute("board_content", boardrecruit); // 여기 속성이름 지정하는거랑 jsp에서 가져오는거랑 달라서 그랬어
			page = "/recruit/write_update";
		return page;
	}

	@Auth
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int board_recruit_id) {
		String page = "/recruit/content";
		System.out.println(board_recruit_id); // jsp에서 가져온 값
		if (1 <= boardRecruitService.deleteBoard(board_recruit_id)) {
			System.out.println("DB연결 성공!");
			page = "redirect:/recruit/lsit";
		} else {
			System.out.println("DB연결 실패!");
		}
		return page;
	}
}
