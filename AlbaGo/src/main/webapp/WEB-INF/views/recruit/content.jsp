<%@page import="com.spring.ex.dto.BoardRecruit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <script>
function deleteBoard(board_recruit_id) {
	if(confirm("정말 삭제하시겠습니까??") == true) { //확인
		location.href = "/delete?board_recruit_id="+${board_recruit_id.board_recruit_id};
		console.log(board_recruit_id);
	} else {
		console.log("fail");
		return false;
	}
}

</script>
 -->
</head>

<body>
	<%@ include file="../serve/header.jsp" %>
	
	<%
	BoardRecruit board_content = (BoardRecruit)request.getAttribute("board_content");//여기 ""안에 m.addAttribute() 안에 적어준 이름이랑 같게 해야해
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
                                            <p> <i class="fa fa-clock-o"></i><%=board_content.getDate() %></p><!-- 시간 -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                	<%
                                	String id = request.getSession().getAttribute("id").toString();
                                	
                                	System.out.println(id + "세션에서 가져온");
                                	System.out.println(board_content.getEnterprise_id() +"디비에서 가져온");
                                	if(id.equals(board_content.getEnterprise_id())) { 
                                		%>  <a class="btn btn-info edit w-10" href="<%=request.getContextPath()%>/recruit/write_update?board_recruit_id=<%=board_content.getBoard_recruit_id() %>">수정하기</a> 
                                			<a class="btn btn-outline-danger w-10" href="<%=request.getContextPath()%>/recruit/delete?board_recruit_id=<%=board_content.getBoard_recruit_id() %>">삭제하기</a> <%
                                	} %>
                                    <a class="boxed-btn3 w-10" href="#"> 스크랩</a>
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
                                        <button class="boxed-btn3 w-100" type="submit">Apply Now</button>
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

</body>
</html>