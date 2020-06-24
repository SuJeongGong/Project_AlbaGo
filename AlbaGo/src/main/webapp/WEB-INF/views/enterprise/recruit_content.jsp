<%@page import="com.spring.ex.dto.Recruit"%>
<%@page import="com.spring.ex.dto.Career"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>공고 상세보기</title>
</head>

<body>
	<%
		Recruit recruit = (Recruit) request.getAttribute("recruit");
	%>
	<%@ include file="../serve/header.jsp"%>
	<div class="col-lg-12 ftco-animate">
		<div class="comment-form-wrap pt-12">
			<form
				action="<%=request.getContextPath()%>/individual/profile/write/save"
				name="profile" class="p-5 bg-light">
				<h1 class="mb-1  font-weight-bold">공고 보기</h1><br/><br/>
				<h3 class="mb-1 h4 font-weight-bold">모집 내용</h3>
				<hr />
				<div class="form-group row">
					<h5 class="font-weight-bold">공고 제목&nbsp;&nbsp;&nbsp;</h5>
					<%=recruit.getTitle()%>
				</div>
				<div class="form-group row">
					<h5 class="font-weight-bold">업직종 &nbsp;&nbsp;&nbsp;</h5>
					<%=recruit.getCategory()%>
				</div>
				<div class="form-group row">
					<h5 class="font-weight-bold">모집 인원&nbsp;&nbsp;&nbsp;</h5>
					<%=recruit.getPeople_count()%>
				</div>
				<br />
				<br />

				<h3 class="mb-1 h4 font-weight-bold">근무 조건</h3>
				<hr />
				<div class="form-group row">
					<h5 class="font-weight-bold">근무 기간</h5>
					&nbsp;&nbsp;<%=recruit.getTerm()%>

				</div>
				<div class="form-group row">
					<h5 class="font-weight-bold">근무 요일</h5>
					&nbsp;&nbsp;<%=recruit.getDate().split(" ")[0]%>
				</div>
				<div class="form-group row">
					<h5 class="font-weight-bold">근무 시간&nbsp;&nbsp;&nbsp;&nbsp;</h5>
					<%=recruit.getTime()%>시간
				</div>
				<div class="form-group row">
					<h5 class="font-weight-bold">급여&nbsp;&nbsp;&nbsp;</h5><%=recruit.getSalary_type()%>&nbsp;&nbsp;<%=recruit.getSalary_amount()%>원
				</div>
				<div class="form-group row">
					<h5 class="font-weight-bold">지역&nbsp;&nbsp;&nbsp;&nbsp;</h5><%=recruit.getPlace()%>
				</div>

				<br />
				<br />
				<div class="row">
					<h3 class="mb-1 h4 font-weight-bold">지원 조건</h3>
				</div>
				<hr />
				<div class="form-group row">
					<h5 class="font-weight-bold">성별&nbsp;&nbsp;&nbsp;&nbsp;</h5><%=recruit.getGender()%>
				</div>
				<div class="form-group row">
					<h5 class="font-weight-bold">연령&nbsp;&nbsp;&nbsp;&nbsp;</h5><%=recruit.getAge().split(",")[0]%>세 이상~<%=recruit.getAge().split(",")[1]%>세
				</div>
				<div class="form-group row">
					<h5 class="font-weight-bold">학력조건&nbsp;&nbsp;&nbsp;&nbsp;</h5><%=recruit.getEducation()%>
				</div>

				<br />
				<div class="row"> <input
						type="button" value="마이페이지"
						class="btn py-1 px-1 btn-primary col-lg-4">
				</div>
			</form>
		</div>
	</div>

	<%@ include file="../serve/footer.jsp"%>
</body>
</html>