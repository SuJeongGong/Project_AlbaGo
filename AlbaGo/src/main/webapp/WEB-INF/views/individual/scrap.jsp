<%@page import="com.spring.ex.dto.Scrap_Individual"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>개인 스크랩</title>
</head>
<body>

	<%@ include file="../serve/header.jsp"%>
	<!-- content wrapper -->

	<!-- main 본문  -->
	<div class="container">
		<div class="row">
			<h1>스크랩 관리</h1>
		</div>
		<div class="row">
			<ul>
				<li>스크랩은 갯수 제한 없이 가능합니다</li>
			</ul>

		</div>
		<div class="row">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<button type="submit" class="btn btn-outline-danger"
								style="float: right;">선택삭제</button>
						</tr>
						<tr>
							<th><input type="checkbox" class="selectAllMembers" /></th>
							<th>공고글 제목</th>
							<th>기업이름</th>
							<th>공고글 작성날짜</th>
							<th>스크랩 날짜</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<Scrap_Individual> scraps = (ArrayList) request.getAttribute("scraps");
							for (int i = 0; i < scraps.size(); i++) {
								Scrap_Individual scrap = scraps.get(i);

								String title = scrap.getTitle();
								String name = scrap.getName();
								String board_date = scrap.getRecruit_date();
								String scrap_date = scrap.getDate();
						%>


						<tr>
							<td><input type="checkbox" class="memberChk"
								onclick='OnOffMemberAllClickBtn()'></td>
							<td><%=title%></td>
							<td><%=name%></td>
							<td><%=board_date.split(" ")[0]%></td>
							<td><%=scrap_date.split(" ")[0]%></td>

							<td><button type="submit" class="btn btn-outline-danger">삭제</button></td>




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