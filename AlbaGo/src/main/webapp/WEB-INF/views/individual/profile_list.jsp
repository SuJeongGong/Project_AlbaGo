<%@page import="com.spring.ex.dto.Resume"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>이력서 관리</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function deleteResume(resume_id) {
	console.log(resume_id);
	$.ajax({
		url : "./deleteResume",
		method : "GET",
		data : {
			resume_id : resume_id
		},
		success :function(res){
			if(res>=1){
				alert("결과 저장 완료");

				 $("#res").load(window.location.href + " #res");
			}else{
				alert("사용실패");
			}
		}
	});
}
function deleteResumes() {
	var resume_ids = [];
	$("input[name='resume_id']:checked").each(function(){
		if(this.checked){
			resume_ids.push($(this).val());
			console.log($(this).val());
		}
	})
	
	$.ajax({
		url : "./deleteResumes",
		method : "GET",
		data : {
			resume_ids: resume_ids
		},
		success :function(res){
			if(res>=1){
				alert("결과 저장 완료");

				 $("#res").load(window.location.href + " #res");
			}else{
				alert("사용실패");
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
			<h1>이력서  관리</h1>
		</div>
		<div class="row">
			<ul>
				<li>이력서는 5개까지 작성 가능합니다</li>
				<li>이력서등록 제한규정에 해당될 경우 사전 동의 없이 이력서를 삭제/수정 할 수 있습니다.</li>
			</ul>

		</div>
		<div class="row">
			<div class="table-responsive">
				<table class="table" id="res">
					<thead>
						<tr>
							<a href="<%=request.getContextPath()%>/individual/profile/write"
								class="btn btn-outline-primary" style="float: right;">이력서 등록</a>
							&ensp;&ensp;
							<button type="submit" class="btn btn-outline-primary" onclick="deleteResumes()"
								style="float: right;">선택삭제</button>
						</tr>
						<tr>
							<th><input type="checkbox" onclick='OnOffMemberAllClickBtn()' class="selectAllMembers" /></th>
							<th>이력서번호</th>
							<th>제목</th>
							<th>카테고리</th>
							<th>작성일</th>
							<th>상세보기</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<Resume> resumes = (ArrayList) request.getAttribute("Resumes");
							for (int i = 0; i < resumes.size(); i++) {
								Resume resume = resumes.get(i);
								int resume_id = resume.getResume_id();
								String title = resume.getTitle();
								String category = resume.getCategory();
								String date = resume.getDate().split(" ")[0];
						%>


						<tr>
							<td><input type="checkbox" class="memberChk" name="resume_id" value=<%=resume_id %>
								></td>
							<td><%=resume_id%></td>
							<td><%=title%></td>
							<td><%=category%></td>
							<td><%=date%></td>
							<td><a type="submit" class="btn btn-outline-primary" href="<%=request.getContextPath() %>/individual/profile/content?resume_id=<%=resume_id%>">상세보기</a></td>
							<td><button type="submit" class="btn btn-outline-danger" onclick="deleteResume(<%=resume_id%>)">삭제</button></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
			     		
		</div>		<div class="row">
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