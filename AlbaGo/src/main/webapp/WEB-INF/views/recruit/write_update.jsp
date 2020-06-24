<%@page import="com.spring.ex.dto.BoardRecruit"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

</head>

<body>

    <%@ include file="../serve/header.jsp" %>

    <%
		//Recruit recruit = (Recruit)request.getAttribute("recruit");//여기 ""안에 m.addAttribute() 안에 적어준 이름이랑 같게 해야해
		BoardRecruit board_content = (BoardRecruit)request.getAttribute("board_content");//여기 ""안에 m.addAttribute() 안에 적어준 이름이랑 같게 해야해
	%>
    <div class="col-lg-12 ftco-animate">
		<div class="comment-form-wrap pt-12">
			<form action ="<%=request.getContextPath()%>/recruit/content/write_update" name="boardrecruit" class="p-5 bg-light">
				<div class="form-group">
					<div class="row col-lg-12">
						<h3 class="mb-1 h4 font-weight-bold col-lg-8">공고글 작성</h3>
						<a  class="btn py-1 px-1 btn-primary col-lg-2" href="">기업정보 수정</a>
						<a  class="btn py-1 px-1 btn-primary col-lg-2" href="">공고 수정</a>
					</div>
					<input type="hidden" name ="board_recruit_id" value="<%=board_content.getBoard_recruit_id()%>">
					<label for="title">제목 </label>
					<input type="text" class="form-control" id="title" name="title" value="<%=board_content.getTitle() %>">
					<label for="message">내용</label>
					<textarea name="memo" id="memo" cols="30" rows="10" class="form-control"> <%=board_content.getMemo() %></textarea>
					<br/>
					<div class="row col-lg-12">
						<h4 class="col-lg-2">공고 선택</h4>
						<select name="recruit_id" class="col-lg-6">
						<%
						ArrayList<BoardRecruit> recruits = (ArrayList)request.getAttribute("recruit");
							for(int i=0; i<recruits.size(); i++) {
								BoardRecruit recruit = recruits.get(i);
								String title = recruit.getTitle();
								int recruit_id = recruit.getRecruit_id(); %>
							<option value="<%=recruit_id%>"><%=title%></option>
						<%
							}
						%>
						</select>
						<input type="submit" value="수정하기" class="btn py-1 px-1 btn-primary col-lg-2 ">
	                    <input type="submit" value="뒤로가기" class="btn py-1 px-1 btn-primary col-lg-2">
						
					</div>
				</div>
			</form>
		</div>
        
    </div>






    <%@ include file="../serve/footer.jsp" %>

</body>

</html>