<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Resume"%>
<%@page import="com.spring.ex.dto.BoardRecruit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고글 보기</title>

<style type="text/css">
.modal-backdrop {
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 999999;
    background-color: #000
}
</style>
<script type="text/javascript">
function resumeCheck(){
	$.ajax({
		url : "<%=request.getContextPath() %>/individual/check/id",
		method : "GET",
		success : function(res) {
			console.log(res);
			if(res>=1){
				$('#basicExampleModal').modal('show');
			}else if(res ==-1){
				alert("로그인 후 이용해주세요.");
			}else if(res ==-2){
				alert("기업회원은 사용할 수 없는 기능입니다.");
			}else{
				alert("실패 : 작성한 이력서가 없습니다");
			}
		}
	});
}
function scrapSave(board_recruit_id){
	$.ajax({
		url : "<%=request.getContextPath()%>/individual/scrap/save",
		method : "GET",
		data : {
			board_recruit_id : board_recruit_id
		},
		success : function(res) {
			console.log(res);
			if(res>=1){
				alert("스크랩 되었습니다.<br>마이페이지에서 확인 가능합니다.");
			}else if(res ==-2){
				alert("기업회원은 사용할 수 없는 기능입니다.");
			}else if(res ==-1){
				alert("로그인 후 이용해주세요.");
			}else{
				alert("실패.");
			}
		}
	});
}
function insertVolunteer(board_recruit_id) {
	console.log(board_recruit_id);
	var resume_id =$("#resume_id option:selected").val();
	var memo =$("#memo").val();
	console.log(resume_id);
	$.ajax({
		url : "<%=request.getContextPath() %>/individual/support/save",
		method : "GET",
		data : {
			board_recruit_id : board_recruit_id,
			resume_id:resume_id,
			memo:memo
		},
		success : function(res) {
			console.log("서엉고옹");
			$('#basicExampleModal').modal('hide');
		}
	});
}
</script>
</head>

<body>




	<%@ include file="../serve/header.jsp" %>
	
	<%
	BoardRecruit board_content = (BoardRecruit)request.getAttribute("board_content");//여기 ""안에 m.addAttribute() 안에 적어준 이름이랑 같게 해야해
	ArrayList<Resume> resumes = (ArrayList)request.getAttribute("resumes");
	
	%>
	
	
	
	
    <div class="job_details_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4><%=board_content.getTitle() %></h4> <!-- 제목 -->
                                    </a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-map-marker"></i><%=board_content.getPlace() %></p> <!-- 장소 -->
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-clock-o"></i><%=board_content.getDate().split(" ")[0] %></p><!-- 시간 -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                	<%
                                	if(request.getSession().getAttribute("id")!= null||request.getSession().getAttribute("id")=="") {
                                		if(request.getSession().getAttribute("id").toString().equals(board_content.getEnterprise_id())) { 
                                			%>  <a class="btn btn-outline-primary w-10" href="<%=request.getContextPath()%>/recruit/write_update?board_recruit_id=<%=board_content.getBoard_recruit_id() %>">수정하기</a> 
                                				<a class="btn btn-outline-danger w-10" href="<%=request.getContextPath()%>/recruit/delete?board_recruit_id=<%=board_content.getBoard_recruit_id() %>">삭제하기</a> <%
                                		} 
                                	}%>
                                	<button class="boxed-btn3 w-10" onclick="scrapSave(<%=board_content.getBoard_recruit_id() %>)" >스크랩</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <h4>근무조건</h4>  
                            <ul>
                                <li>급여 : <span><%=board_content.getSalary_type() %> : <%=board_content.getSalary_amount() %></span></li>
                                <li>근무 기간 : <span><%=board_content.getDate() %></span></li>
                                <li>근무 요일 : <span><%=board_content.getDay() %></span></li>
                                <li>근무 시간 : <span><%=board_content.getTime() %></span></li>
                                <li>업직종 : <span><%=board_content.getRecruit_category() %></span></li>
                            </ul>
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
                            <h3>모집조건</h3>
                        </div>
                        <div class="job_content">
                            <ul>
                                <li>채용인원 : <span><%=board_content.getPeople_count() %></span></li>
                                <li>성별 : <span><%=board_content.getGender() %></span></li>
                                <li>연령 : <span><%=board_content.getAge() %></span></li>
                                <li>최종학력 : <span><%=board_content.getEducation() %></span></li>
                            </ul>
                        </div>
                        <hr/>
                        <div class="summery_header">
                            <h3>기업정보</h3>
                        </div>
                        <div class="job_content">
                            <ul>
                                <li>기업이름 : <span><%=board_content.getName() %></span></li>
                                <li>회사주소 : <span><%=board_content.getAddress() %></span></li>
                                <li>카테고리 : <span><%=board_content.getEnter_category() %></span></li>
                                <li>담당자 이름 : <span><%=board_content.getManager_name() %></span></li>
                                <li>담당자 연락처 : <span><%=board_content.getManager_phone() %></span></li>
                            </ul>
                        </div>
                        <form action="#">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="submit_btn">
                                        <button type="button" class="boxed-btn3 w-100" onclick="resumeCheck()" >지원하기</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Button trigger modal -->



	<!-- Modal -->

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
       	<p>지원할 때 남길 메모 :</p><input type="text" id="memo" class="form-control"/><br/>
       	<p>사용할 이력서 선택하세요 </p><select id="resume_id">
       	<% 
       	if(resumes!=null){
       	
       	for(int i=0;i<resumes.size();i++){
       		Resume resume = resumes.get(i);
       	%>
       	<option value = "<%=resume.getResume_id()%>"><%=resume.getTitle()%></option>
       	
       	<% }}%>
       	</select>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="button" onclick="insertVolunteer(<%=board_content.getBoard_recruit_id() %>)" class="btn btn-primary" >지원하기</button>
      </div>
    </div>
  </div>
</div>
	
	
	
	
</body>
</html>