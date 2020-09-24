<%@page import="com.spring.ex.dto.Enterprise"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Career"%>
<%@page import="com.spring.ex.dto.BoardResume"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인재글 보기</title>
<%
		BoardResume board_content = (BoardResume)request.getAttribute("board_content");//여기 ""안에 m.addAttribute() 안에 적어준 이름이랑 같게 해야해
	%>
	
<script type="text/javascript">
function resumeCheck(){
	$.ajax({
		url : "<%=request.getContextPath() %>/enterprise/resume/check",
		method : "GET",
		success : function(res) {
			console.log(res);
			if(res>=1){
				$('#resume_count').html(res);
				$('#basicExampleModal').modal('show');
			}else if(res ==-2){
				alert("개인회원은 사용할 수 없는 기능입니다.");
			}else if(res ==-1){
				alert("로그인 후 이용해주세요.");
			}else{
				alert("실패 : 연락처 보기 아이템 횟수가 없거나 기업회원이 아닙니다.");
			}
		}
	});
}
function scrapSave(board_resume_id){
	$.ajax({
		url : "<%=request.getContextPath()%>/enterprise/scrap/save",
		method : "GET",
		data : {
			board_resume_id : board_resume_id
		},
		success : function(res) {
			console.log(res);
			if(res>=1){
				alert("스크랩 되었습니다.마이페이지에서 확인 가능합니다.");
			}else if(res ==-2){
				alert("개인회원은 사용할 수 없는 기능입니다.");
			}else if(res ==-1){
				alert("로그인 후 이용해주세요.");
			}else{
				alert("실패.");
			}
		}
	});
}
function UseResume(){
	var board_resume_id =$("#resume_id").val();
	var enterprise_id =$("#enterprise_id").val();
	$.ajax({
		url : "<%=request.getContextPath() %>/enterprise/resume/use",
		method : "GET",
		data : {
			enterprise_id : enterprise_id,
			board_resume_id : board_resume_id
		},
		success : function(res) {

			console.log(res);
			if(res>=1){
				alert("마이페이지에서 확인 가능합니다");
				$('#basicExampleModal').modal('hide');
			}else{
				alert("사용실패");
			}
		}
	});
}
</script>
</head>
<body>
	<%@ include file="../serve/header.jsp" %>
	
	
	
    <div class="job_details_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4><%=board_content.getBoard_resume_title() %></h4>
                                    </a>
                                      
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-map-marker"></i><%=board_content.getPlace() %></p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-clock-o"></i><%=board_content.getDate().split(":")[0]%>:<%=board_content.getDate().split(":")[1]%></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                	<%
                                	if(request.getSession().getAttribute("id")!= null||request.getSession().getAttribute("id")=="") {
                                		if(request.getSession().getAttribute("id").toString().equals(board_content.getIndividual_id())) { 
                                			%>  <a class="btn btn-outline-primary w-10" href="<%=request.getContextPath()%>/resume/write_update?board_resume_id=<%=board_content.getBoard_resume_id() %>">수정하기</a> 
                                				<a class="btn btn-outline-danger w-10" href="<%=request.getContextPath()%>/resume/delete?board_resume_id=<%=board_content.getBoard_resume_id() %>">삭제하기</a> <%
                                		} 
                                	}%>
                                	<button class="boxed-btn3 w-10" onclick="scrapSave(<%=board_content.getBoard_resume_id() %>)" >스크랩</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <h4>희망조건</h4>
                            <ul>
                                <li>급여 : <span><%=board_content.getSalary_type() %> : <%=board_content.getSalary_amount() %>원</span></li>
                                <li>근무 기간 : <span><%=board_content.getTerm() %></span></li>
                                <li>근무 요일 : <span><%=board_content.getDay() %></span></li>
                                <li>근무 시간 : <span><%=board_content.getTime() %>시간</span></li>
                                <li>업직종 : <span><%=board_content.getCategory() %></span></li>
                            </ul>
                        </div>
                        <div class="single_wrap">
                            <h4>경력</h4>
                            <table width="95%">
                                <tr>
                                    <th>점포명</th><th>맡은업무</th><th>시작날짜</th><th>끝난날짜</th>
                                </tr>
                                
                                <%
                                	ArrayList<Career> careers = (ArrayList)request.getAttribute("careers");
                                	for(int i =0; i<careers.size();i++){
                                		Career career = careers.get(i);
                                		
                                		%>
                                		
                                		   <tr>
                                    <td><%=career.getName() %></td><td><%=career.getTask() %></td><td><%=career.getStart_date().split(" ")[0] %></td><td><%=career.getEnd_date().split(" ")[0] %></td>
                                </tr>
                                		
                                		<%
                                	}                                
                                %>
                             
                           

                            </table>
                        </div>
                        <div class="single_wrap">
                            <h4></h4>
                            <p><%=board_content.getMemo() %></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="job_sumary">
                        <div class="summery_header">
                            <h3>개인정보</h3>
                        </div>
                        <div class="job_content">
                            <ul>
                                <li>이름 : <span><%=board_content.getName() %></span></li>
                                <li>성별 : <span><%=board_content.getGender() %></span></li>
                                <li>나이 : <span><%=board_content.getAge() %>세</span></li>
                                <li>연락처 : <span>010-****-****</span></li>
                            </ul>
                        </div>
                        <input type ="hidden" value ="<%= board_content.getBoard_resume_id()%>" id="resume_id"/>
                        <form action="#">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="submit_btn">
                                        <button type="button" class="boxed-btn3 w-100" onclick="resumeCheck()" >숨겨진 연락처 보기</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
	
	
	
	
	
	<%@ include file="../serve/footer.jsp" %>
	
	
	
<!-- Modal -->
<div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">지원하기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" >
       	<p>현재 이력서 보기 횟수 :</p><p id ="resume_count"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="button" onclick="UseResume()" class="btn btn-primary" >횟수 사용하기</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>