<%@page import="com.spring.ex.dto.Volunteer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>지원현황</title>
</head>

<body>

	<%@ include file="../serve/header.jsp"%>
	<!-- content wrapper -->

	<!-- main 본문  -->
	<div class="container">
		<div class="row">
			<h1>지원현황 관리</h1>
		</div>
		<div class="row">
			<ul>
				<li>공고는 5개까지 작성 가능합니다</li>
				<li>공고등록 제한규정에 해당될 경우 사전 동의 없이 공고를 삭제/수정 할 수 있습니다.</li>
			</ul>

		</div>
		<div class="row">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<button type="submit" class="btn btn-outline-primary" style="float: right;">선택삭제</button>
						</tr>
						<tr>
							<th><input type="checkbox" class="selectAllMembers" /></th>
							<th>공고글 제목</th>
							<th>이력서 제목</th>
							<th>메모</th>
							<th>지원날짜</th>
							<th>결과</th>
							<th>취소하기</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<Volunteer> volunteers = (ArrayList) request.getAttribute("volunteers");
							for (int i = 0; i < volunteers.size(); i++) {
								Volunteer volunteer = volunteers.get(i);

								int recruit_id = volunteer.getRecruit_id();
								String title = volunteer.getRecruit_title();
								String individual_id = volunteer.getIndividual_id();
								String resume_title = volunteer.getResume_title();
								String memo = volunteer.getMemo();
								String date = volunteer.getDate();
								String result = volunteer.getResult();
						%>


						<tr>
							<td><input type="checkbox" class="memberChk"
								onclick='OnOffMemberAllClickBtn()'></td>
							<td><%=title%></td>
							<td><%=resume_title%></td>
							<td><%=memo%></td>
							<td><%=date%></td>
							<%
								if (result == null) {
							%>


							<td>미정</td>
							<td><button type="submit" class="btn btn-outline-danger">취소하기</button></td>



							<%
								} else {
							%>
							<td><%=result%></td>
							<td>취소 불가</td>
							<%
								}
							%>

						</tr>
						<%
							}
						%>

					</tbody>
				</table>
			</div>
		</div>
	</div>


	<%@ include file="../serve/footer.jsp"%>
	<script>
		var selectAll = document.querySelector(".selectAllMembers");
		selectAll.addEventListener('click', function() {
			var objs = document.querySelectorAll(".memberChk");
			for (var i = 0; i < objs.length; i++) {
				objs[i].checked = selectAll.checked;
			}
			;
		}, false);

		var objs = document.querySelectorAll(".memberChk");
		for (var i = 0; i < objs.length; i++) {
			objs[i].addEventListener('click', function() {
				var selectAll = document.querySelector(".selectAllMembers");
				for (var j = 0; j < objs.length; j++) {
					if (objs[j].checked === false) {
						selectAll.checked = false;
						return;
					}
					;
				}
				;
				selectAll.checked = true;
			}, false);
		}
	</script>
</body>

</html>