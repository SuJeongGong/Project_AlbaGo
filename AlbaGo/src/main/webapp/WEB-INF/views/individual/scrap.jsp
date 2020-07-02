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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function deleteScrap(scrap_id) {
	console.log(scrap_id);
	$.ajax({
		url : "./deleteScrap",
		method : "GET",
		data : {
			scrap_id : scrap_id
		},
		success :function(res){
			if(res>=1){
				alert("결과 저장 완료");

				 $("#res").load(window.location.href + " #res");
			}else{
				alert("사용실패")
			}
		}
	});
}
function deleteScraps() {
	var scrap_ids = [];
	$("input[name='scrap_id']:checked").each(function(){
		if(this.checked){
			scrap_ids.push($(this).val());
			console.log($(this).val());
		}
	})
	
	$.ajax({
		url : "./deleteScraps",
		method : "GET",
		data : {
			scrap_ids: scrap_ids
		},
		success :function(res){
			if(res>=1){
				alert("결과 저장 완료");

				 $("#res").load(window.location.href + " #res");
			}else{
				alert("사용실패")
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
			<h1>스크랩 관리</h1>
		</div>
		<div class="row">
			<ul>
				<li>스크랩은 갯수 제한 없이 가능합니다</li>
			</ul>

		</div>
		<div class="row">
			<div class="table-responsive">
				<table class="table" id="res">
					<thead>
						<tr>
							<button type="submit" class="btn btn-outline-danger" onclick="deleteScraps()"
								style="float: right;">선택삭제</button>
						</tr>
						<tr>
							<th><input type="checkbox" class="selectAllMembers"  onclick='OnOffMemberAllClickBtn()'/></th>
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
								int scrap_id= scrap.getScrap_individual_id();
								String title = scrap.getTitle();
								String name = scrap.getName();
								String board_date = scrap.getRecruit_date();
								String scrap_date = scrap.getDate();
						%>


						<tr>
							<td><input type="checkbox" class="memberChk" 	name = "scrap_id" value="<%=scrap_id %>"
								></td>
							<td><%=title%></td>
							<td><%=name%></td>
							<td><%=board_date.split(" ")[0]%></td>
							<td><%=scrap_date.split(" ")[0]%></td>

							<td><button type="submit" class="btn btn-outline-danger" onclick="deleteScrap(<%=scrap_id%>)">삭제</button></td>




						</tr>
						<%
							}
						%>

					</tbody>
				</table>
			</div>
			<div class="row">
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