<%@page import="com.spring.ex.dto.Scrap_Individual"%>
<%@page import="com.spring.ex.dto.Scrap_enterprise"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Individual"%>
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
	
	
	
	
	
	
    <div class="job_details_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4>회원정보 수정</h4>
                                    </a>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="boxed-btn3 w-10" href="<%=request.getContextPath() %>/individual/account"> 수정</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <p>안전한 정보보호를 위해 연락처 일부만 확인가능하며,<br/>수정화면에서 정확한 연락처 확인이 가능합니다.</p>
                            <%
                            Individual  Iinfo = (Individual)request.getAttribute("Iinfo");
                            %>
                                <li>아이디 : <span><%=Iinfo.getIndividual_id()%></span></li>
                                <li>비밀번호 : <span><%= Iinfo.getPassword()%></span></li>
                                <li>이름 : <span><%=Iinfo.getName()%></span></li>
                                <li>성별 : <span><%=Iinfo.getGender()%></span></li>
                                <li>연락처 : <span><%=Iinfo.getPhone()%></span></li>
                                <li>생년월일 : <span><%=Iinfo.getBirth()%></span></li>
                                <li>최종학력 : <span><%=Iinfo.getEducation()%></span></li>
                                <li>가입날짜 : <span><%=Iinfo.getDate()%></span></li>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4>이력서 관리</h4>
                                    </a>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="boxed-btn3 w-10" href="#"> 자세히</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <p>이력서 수정을 하고싶다면 자세히 버튼을 눌러주세요<br/>이력서 관리 화면에서 수정하실수 있습니다.</p>
                            <br>
							<table width="95%">
								<tr>
									<th>제목</th><th>작성날짜</th>
								</tr>
								</tr>
       
       
       
       
       
								
							</table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
            <br><br><br><br><br></div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4>지원 목록</h4>
                                    </a>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="boxed-btn3 w-10" href="#">자세히</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <p>지원한 알바 목록을 자세히 보고싶으시면<br>
자세히 버튼을 눌러 지원한 알바 페이지로 이동해주세요 </p>
                            <br>
							<table width="95%">
								<tr>
									<th>제목</th><th>작성날짜</th>
								</tr>
	<%
								ArrayList<HashMap<String, String>> volunteers = (ArrayList)request.getAttribute("volunteer");
								for(int i =0;i<volunteers.size();i++){
									HashMap<String, String>volunteer=  volunteers.get(i);
									String title =volunteer.get("title");
									String date = volunteer.get("date");
									%>
									<tr>
										<td><%=title %></td><td><%=date %></td>
									</tr>									
									<%
								}
							%>								
							</table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4>스크랩</h4>
                                    </a>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="boxed-btn3 w-10" href="#">자세히</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <p>스크랩한 알바 목록을 수정하거나 자세히 보고싶으시면
                            <br>
자세히 버튼을 눌러 스크랩한 알바 페이지로 이동해주세요 </p>
                            <br>
							<table width="95%">
								<tr>
									<th>제목</th><th>작성날짜</th>
								</tr>
							<%
							ArrayList<Scrap_Individual> scraps = (ArrayList)request.getAttribute("scrap");
								for(int i =0;i<scraps.size();i++){
									Scrap_Individual scrap=  scraps.get(i);
									String title =scrap.getTitle();
									String date = scrap.getDate();
									%>
									<tr>
										<td><%=title %></td><td><%=date %></td>
									</tr>									
									<%
								}
							%>
								
							</table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">

                </div>
            </div>
        </div>
    </div>
	
	
	
	
	
	<%@ include file="../serve/footer.jsp" %>

</body>
</html>