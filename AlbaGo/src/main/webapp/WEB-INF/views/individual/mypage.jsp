<%@page import="com.spring.ex.dto.Volunteer"%>
<%@page import="com.spring.ex.dto.Resume"%>
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
<%
	Individual Iinfo = (Individual) request.getAttribute("Iinfo");
	int end = 0;
%>
<title><%=Iinfo.getIndividual_id()%>님의 마이페이지</title>
</head>
<body>
	<%@ include file="../serve/header.jsp"%>
	<div class="job_details_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a href="<%=request.getContextPath()%>/individual/account">
										<h4>회원정보 수정</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/individual/account">
										수정</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								안전한 정보보호를 위해 연락처 일부만 확인가능하며,<br />수정화면에서 정확한 연락처 확인이 가능합니다.
							</p>

							<li>이름 : <span><%=Iinfo.getName()%></span></li>
							<li>성별 : <span><%=Iinfo.getGender()%></span></li>
							<li>생년월일 : <span><%=Iinfo.getBirth().split(" ")[0]%></span></li>
							<li>가입날짜 : <span><%=Iinfo.getDate().split(" ")[0]%></span></li>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a
										href="<%=request.getContextPath()%>/individual/profile/list">
										<h4>이력서 관리</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/individual/profile/list">
										자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								이력서 수정을 하고싶다면 자세히 버튼을 눌러주세요<br />이력서 관리 화면에서 수정하실수 있습니다.
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>제목</th>
									<th>작성날짜</th>
								</tr>
								<%
									ArrayList<Resume> resumes = (ArrayList) request.getAttribute("resumes");
									if (resumes.size() > 5) {
										end = 5;
									} else {
										end = resumes.size();
									}
									for (int i = 0; i < end; i++) {
										Resume resume = resumes.get(i);
										String title = resume.getTitle();
										String date = resume.getDate();
								%>
								<tr>
									<td><%=title%></td>
									<td><%=date.split(" ")[0]%></td>
								</tr>
								<%
									}
								%>

							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row">

			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a href="<%=request.getContextPath()%>/individual/support">
										<h4>지원 목록</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/individual/support">자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								지원한 구인글 목록을 자세히 보고싶으시면<br> 자세히 버튼을 눌러 지원한 구인글 페이지로 이동해주세요
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>제목</th>
									<th>사용한 이력서 제목</th>
									<th>작성날짜</th>
								</tr>
								<%
									ArrayList<Volunteer> volunteers = (ArrayList) request.getAttribute("volunteers");
								if (volunteers.size() > 5) {
									end = 5;
								} else {
									end = volunteers.size();
								}
									for (int i = 0; i < end; i++) {
										Volunteer volunteer = volunteers.get(i);
										String title = volunteer.getResume_title();
										String date = volunteer.getDate();
										String name = volunteer.getEnterprise_name();
								%>
								<tr>
									<td><%=name%></td>
									<td><%=title%></td>
									<td><%=date.split(" ")[0]%></td>
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
									<a href="<%=request.getContextPath()%>/individual/scrap">
										<h4>스크랩</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/individual/scrap">자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								스크랩한 구인글 목록을 수정하거나 자세히 보고싶으시면 <br> 자세히 버튼을 눌러 스크랩한 구인글 페이지로
								이동해주세요
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>단체이름</th>
									<th>구인글 제목</th>
									<th>작성날짜</th>
								</tr>
								<%
									ArrayList<Scrap_Individual> scraps = (ArrayList) request.getAttribute("scraps");
									if (scraps.size() > 5) {
										end = 5;
									} else {
										end = scraps.size();
									}
									for (int i = 0; i < end; i++) {
										Scrap_Individual scrap = scraps.get(i);
										String title = scrap.getTitle();
										String date = scrap.getDate().split(" ")[0];
										String name = scrap.getName();
								%>
								<tr>
									<td><%=name%></td>
									<td><%=title%></td>
									<td><%=date%></td>
								</tr>
								<%
									}
								%>

							</table>
						</div>
					</div>
				</div>
				<div class="col-lg-6"></div>
			</div>
		</div>
	</div>





	<%@ include file="../serve/footer.jsp"%>

</body>
</html>