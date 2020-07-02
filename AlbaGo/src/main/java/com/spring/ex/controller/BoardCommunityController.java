package com.spring.ex.controller;

import java.util.ArrayList;
import java.util.HashMap;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.dao.CommunityDAO;
import com.spring.ex.dto.BoardComment;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.interceptor.AuthUser;
import com.spring.ex.services.CommunityService;

@Controller
@RequestMapping("/community")
public class BoardCommunityController {
	
	@Autowired
	 CommunityService   communityService;
	
	@RequestMapping("/list")//리스트
	public String list(Model m,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		
		ArrayList<BoardCommunity> communitys =communityService.selectList((pageNum-1) * 10);
		int count = communityService.selectListCount();
		m.addAttribute("communitys", communitys);

		m.addAttribute("pageNum", pageNum);
		m.addAttribute("count",  count / 10 + 1);
		
		return "/community/list";
	}
	
	@RequestMapping("/write/save")//작성
	public String writeSave(HttpServletRequest request , @ModelAttribute("community") BoardCommunity community){
	
		// @ModelAttribute("community") BoardCommunity community  -> "community" 는 wrie.jsp 에서 저장한 name 과 맞아야함 
		//BoardCommunity 가져온 값의 자료형 DTO , String  class
		//community 가져온 값을 저장하고 있는 변수이름

		String id =request.getSession().getAttribute("id").toString();
		community.setIndividual_id(id);// 로그인한 아이디 값을 넣어줌 
		System.out.println(id);
		System.out.println(community);

			
		int result = communityService.insertContent(community);//()안에는 메서드를 실행할때 필요한 값 , = 왼쪽은 메서드를 실행하고 난 결과값
		//communitys = 저장할 값
		return "redirect:/community/list"; // 커뮤니티 리스트 로 돌아가는게 맞는데 뭔가 안됌 나중에 처리
	}
	
	@RequestMapping("/write")//작성
	public String write(){
		
		
		return "/community/write"; // 커뮤니티 리스트 로 돌아가는게 맞는데 뭔가 안됌 나중에 처리
	}
	
	
	@RequestMapping("comment/write")//댓글작성
	public @ResponseBody int writeComment(@AuthUser String id, @ModelAttribute("comment")String comment, @ModelAttribute("community")int community){
		//아이디 가져오고  -(@AuthUser String id
		//댓글 내용 가져오고  - @ModelAttribute("comment") BoardComment comments
		//comments에 id 값 넣어주기
		
		BoardComment boardComment = new BoardComment();
		System.out.println("id"+id.split("/")[0]);//회원 아이디 / 회원타입
		System.out.println("comment"+comment);
		System.out.println("community"+community);
		boardComment.setIndividual_id(id.split("/")[0]);//아이디 넣기
		boardComment.setContents(comment);//댓글 내용
		boardComment.setCommunity_id(community);//글 번호

		//DB 보내고
	
		return  communityService.insertComment(boardComment); // 커뮤니티 리스트 로 돌아가는게 맞는데 뭔가 안됌 나중에 처리

	}
	
	
	
	@RequestMapping("/content")//읽기
	public String content(Model m, HttpServletRequest request ) {

		
	//	String id = request.getSession().getAttribute("id").toString(); //로그인된 id 가져오기 
	//	System.out.println(id);
		
		System.out.println(request.getParameter("community_id").toString());
		
		int community_id = Integer.parseInt(request.getParameter("community_id"));
		//DB에서 글 하나 가져오기
		BoardCommunity community = communityService.selectContent(community_id);
		//DB에서 글 하나 가져온 것을 다음 화면에 보여주기 위해서 m에다가 담음
		
		int counts = communityService.CommentsCount(community_id);

		ArrayList<BoardComment> comments =communityService.selectComments(community_id);
		System.out.println(community);
		System.out.println(comments);
		//조회수 증가 쿼리문 전송
		if(1<=communityService.updateViews(community_id)) {//성공했다면
			System.out.println("조회수 증가 DB연결 성공");
			m.addAttribute("community_content",community );
			m.addAttribute("comments", comments);
			m.addAttribute("counts", counts);
		}		
		return "/community/content";
	}
	
	
	
	@RequestMapping("/content/update") // 수정화면에 수정 버튼 누르면
	public String contentUpdate(HttpServletRequest request,@ModelAttribute("community") BoardCommunity boardCommunity) {
		String page = "/community/update"; //안되면 
		HttpSession session = request.getSession();
		
		if(!session.getAttribute("type").toString().equals("개인")) { 
			return "/community/list";
		} else {
			
			System.out.println(boardCommunity);
			
			if(communityService.updateContent(boardCommunity) >= 1) {
				System.out.println("DB연결 성공");
				page="redirect:/community/list";
			} else {
				System.out.println("DB연결 실패");
			}
		}
		return page;
	}
	
	
	
	@RequestMapping("/update")//수정화면보기
	public String update(HttpServletRequest request, Model m) {
		String page = "/community/list";
		HttpSession session = request.getSession();		//아이디 세션 가져오기
		
		if(!session.getAttribute("type").toString().equals("개인")) {//개인 확인 
			return  "/community/list";
		} else {
			String id = session.getAttribute("id").toString();//로그인 된 아이디
			int community_id = Integer.parseInt(request.getParameter("community_id"));//파라미터로 들어온 값 , 글번호 

				
				BoardCommunity boardCommunity = communityService.selectContent(community_id);
				boardCommunity.setCommunity_id(community_id);
				System.out.println("수정 화면 보여주는 컨트롤러 "+boardCommunity);
				m.addAttribute("board_Community", boardCommunity); // 여기 속성이름 지정하는거랑 jsp에서 가져오는거랑 달라서 그랬어
				page = "redirect:/community/list";//redirect:/community/list
		
		}
		return page;
	}
	
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)//삭제
	public String delete(@RequestParam ("community_id") int community_id) {
		String page = "/community/content";//성공 안했을 때의 페이지 
		System.out.println(community_id);
		if(1 <= communityService.deleteContent(community_id)) {
			System.out.println("DB연결 성공!");
			page = "redirect:/community/list";
		}
		else {
			System.out.println("DB연결 실패!");
		}
		return page;
	}
	
	@RequestMapping(value = "comment/delete", method = RequestMethod.GET)//댓글삭제
	public String commentdelete(int comment_id) {
		String page = "/community/content";
		System.out.println(comment_id);
		if(1 <= communityService.deleteComment(comment_id)) {
			System.out.println("DB연결 성공!");
			page = "redirect:/community/list";   //댓글 삭제후 위치 조정 해야됨 까먹지 말것
		}
		else {
			System.out.println("DB연결 실패!");
		}
		return page;
	}
	
	@RequestMapping(value = "comment/update", method = RequestMethod.GET)//댓글삭제
	public @ResponseBody int commentUpdate(@RequestParam("content") String content,@RequestParam("comment_id") int comment_id) {
		String page = "/community/content";
		System.out.println("content"+content);
		System.out.println("comment_id"+comment_id);
		
		HashMap<String , Object> map = new HashMap<String, Object>();
		map.put("content", content);
		map.put("comment_id", comment_id);
	
		return  communityService.updateComment(map);
	}
	
	
	

}

