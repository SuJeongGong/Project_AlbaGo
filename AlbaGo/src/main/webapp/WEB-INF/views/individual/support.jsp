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
			if(res>=1){
				alert("결과 저장 완료");

				 $("#res").load(window.location.href + " #res");
			}else{
				alert("사용실패")
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
				<table class="table" id = "res">
					<thead>
						<tr>
							<button type="submit" class="btn btn-outline-primary" onclick="deleteVolunteers()" style="float: right;">선택지원취소</button>
						</tr>
						<tr>
							<th><input type="checkbox" class="selectAllMembers" onclick='OnOffMemberAllClickBtn()'/></th>
							<th>공고글 제목</th>
							<th>기업이름</th>
							<th>이력서 제목</th>
							<th>지원 이력서</th>
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
             		
                        		int volunteer_id = volunteer.getVolunteer_id();
								String title = volunteer.getBoard_recruit_title();
								String individual_id = volunteer.getIndividual_id();
								String resume_title = volunteer.getResume_title();
								String memo = volunteer.getMemo();
								String date = volunteer.getDate().split(" ")[0];
								String result = volunteer.getResult();
								String enterprise_name=volunteer.getEnterprise_name();
								
								
						%>

						<tr>
							<td><input type="checkbox" class="memberChk" name = "volunteer_id" value="<%=volunteer_id%>"
								></td>
								
							<td><a href ="<%=request.getContextPath()%>/recruit/content?board_recruit_id=<%=volunteer.getBoard_recruit_id() %>"><%=title%></a></td>
							<td><%=enterprise_name%></td>
							<td><a href="<%=request.getContextPath()%>/individual/profile/content?resume_id=<%=volunteer.getResume_id()%>"><%=resume_title%></a></td>
							<td><a class="btn btn-outline-primary" href="<%=request.getContextPath()%>/individual/profile/content?resume_id=<%=volunteer.getResume_id()%>">보기</a></td>
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
		<div class="row">
                            <div class="col-lg-12">
                                <div class="pagination_wrap">
                                    <ul>
                                <%
                                	int pageNum = (int)request.getAttribute("pageNum");
                              		int count = (int)request.getAttribute("count");
                                System.out.println(pageNum);
                                System.out.println(count);
                                	if(pageNum>1){//<
                                		%>
                                        <li>
                                        <a href="?page=<%=pageNum - 1%>"> 
                                        <i class="ti-angle-left"></i> </a></li>
                                		
                                		<%                             		                                		
                                	}
                                	for (int i =1; i<=count ; i++){//각각 번호 
                                		%>
                                		
                                        <li><a href="?page=<%=i%>"> <span><%=i %></span></a></li>
                                		
                                		<%
                                	}	
                                	if(pageNum<count){//>
                                		%>
                                        <li><a href="?page=<%=pageNum + 1%>"> 
                                        <i class="ti-angle-right"></i> </a></li>
                                		
                                		<%                             		                                		
                                	}
                                
                                %>
                                    </ul>
                                </div>
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