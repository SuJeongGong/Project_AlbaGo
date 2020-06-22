<%@page import="com.spring.ex.dto.Resume_Content"%>
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
		Resume_Content board_content = (Resume_Content)request.getAttribute("board_content");//여기 ""안에 m.addAttribute() 안에 적어준 이름이랑 같게 해야해
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
                                        <h4><%=board_content.getTitle() %></h4>
                                    </a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-map-marker"></i><%=board_content.getPlace() %></p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-clock-o"></i><%=board_content.getDate()%></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="boxed-btn3 w-10" href="#"> 스크랩</a>
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
                                <li>근무 시간 : <span><%=board_content.getTime() %></span></li>
                                <li>업직종 : <span><%=board_content.getCategory() %></span></li>
                            </ul>
                        </div>
                        <div class="single_wrap">
                            <h4>경력</h4>
                            <table width="95%">
                                <tr>
                                    <th>점포명</th><th>맡은업무</th><th>시작날짜</th><th>끝난날짜</th>
                                </tr>
                                <tr>
                                    <td>아리따움</td><td>판매</td><td>2020-03-20</td><td>2020-03-20</td>
                                </tr>
                                <tr>
                                    <td>훠궈</td><td>서빙</td><td>2020-03-20</td><td>2020-03-20</td>
                                </tr>
                                <tr>
                                    <td>아리따움</td><td>판매</td><td>2020-03-20</td><td>2020-03-20</td>
                                </tr>
                                <tr>
                                    <td>훠궈</td><td>서빙</td><td>2020-03-20</td><td>2020-03-20</td>
                                </tr>

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
                                <li>연령 : <span><%=board_content.getBirth() %></span></li>
                                <li>최종학력 : <span><%=board_content.getEducation() %></span></li>
                                <li>연락처 : <span><%=board_content.getPhone() %></span></li>
                            </ul>
                        </div>
                        <form action="#">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="submit_btn">
                                        <button class="boxed-btn3 w-100" type="submit">연락하기</button>
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