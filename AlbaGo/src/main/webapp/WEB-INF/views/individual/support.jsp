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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function deleteVolunteer(volunteer_id) {
	console.log(volunteer_id);
	$.ajax({
		url : "./deleteVolunteer",
		method : "GET",
		data : {
			volunteer_id:volunteer_id
		},
		success :function(res){
			if(res=="성공"){
				alert("삭제 성공");
			}else{
				alert("삭제 실패");
			}
		}
	});
}
function deleteVolunteers() {
	var volunteer_ids = [];
	$("input[name='volunteer_id']:checked").each(function(){
		if(this.checked){
			volunteer_ids.push($(this).val());
			console.log($(this).val());
		}
	})
	
	$.ajax({
		url : "./deleteVolunteers",
		method : "GET",
		data : {
			volunteer_ids: volunteer_ids
		},
		success :function(res){
			if(res=="성공"){
				alert("삭제 성공");
			}else{
				alert("삭제 실패");
			}
		}
	});
}

</script>
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
				<li>지원은 횟수 제한이 없습니다.</li>
				<li>지원 취소는 기업이 결과를 입력하지 않았을 때에만 가능합니다.</li>
			</ul>

		</div>
		<div class="row">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<button type="submit" class="btn btn-outline-primary" onclick="deleteVolunteers()" style="float: right;">선택지원취소</button>
						</tr>
						<tr>
							<th><input type="checkbox" class="selectAllMembers" onclick='OnOffMemberAllClickBtn()'/></th>
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
                        		int volunteer_id = volunteer.getVolunteer_id();
								String title = volunteer.getRecruit_title();
								String individual_id = volunteer.getIndividual_id();
								String resume_title = volunteer.getResume_title();
								String memo = volunteer.getMemo();
								String date = volunteer.getDate().split(" ")[0];
								String result = volunteer.getResult();
								
								
						%>


						<tr>
							<td><input type="checkbox" class="memberChk" name = "volunteer_id" value="<%=volunteer_id%>"
								></td>
							<td><%=title%></td>
							<td><%=resume_title%></td>
							<td><%=memo%></td>
							<td><%=date.split(" ")[0]%></td>
							<%
								if (result == null) {
							%>


							<td>미정</td>
							<td><button type="submit" onclick="deleteVolunteer(<%=volunteer_id %>)" class="btn btn-outline-danger">취소하기</button></td>



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