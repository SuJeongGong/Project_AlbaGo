<%@page import="com.spring.ex.dto.Enterprise"%>
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
		Enterprise enterprise = (Enterprise)request.getAttribute("Einfo");
	
		String id = enterprise.getEnterprise_id();
		String manager_name = enterprise.getManager_name();
		String manager_phone = enterprise.getManager_phone();
		String category = enterprise.getCategory();
		String date = enterprise.getDate();
		String business_number = enterprise.getBusiness_number();
		String name = enterprise.getName();
		int resume_count = enterprise.getResume_count();
		int up_count = enterprise.getUp_count();
		
	
	%>
				<!-- main 본문  -->
			<div class="container-fluid">
			<br>
				<div class="d-sm-flex align-items-center justify-content-between mb-4">
            		<h1 class="h3 mb-0 text-gray-800">기업 회원 정보</h1>
          		</div>
				<!-- main 본문을 한 줄로 묶기 -->
				<div class="row" >
					<form action="<%=request.getContextPath() %>/enterprise/account/update" name = "enterprise" id  = "enterprise" class="col-xl-11" >
	               		<table class="table table-bordered ">
	               			<tr>
	               				<th>아이디</th>
	               				<td><input type="text" name ="enterprise_id" id ="enterprise_id" value="<%=id%>" ></td>
	               			</tr>
	               			<tr>
	               				<th>기업이름</th>
	               				<td><input type="text" class="col-sm-10 form-control" name = "name" id="name" value="<%=name%>"></td>
	               			</tr>
	               			<tr>
	               				<th>사업자 번호</th>
	               				<td><input type="text" class="col-sm-10 form-control" name = "business_number" id="business_number" value="<%=business_number%>"></td>
	               			</tr>
	               			<tr>
	               				<th>카테고리</th>
	               				<td><input type="text" class="col-sm-10 form-control" name = "category" id="category" value="<%=category%>"></td>
	               			</tr>
	               			<tr>
	               				<th>담당자 이름</th>
	               				<td><input type="text" class="col-sm-10 form-control" name = "manager_name" id="manager_name" value="<%=manager_name %>"></td>
	               			</tr>
	               			<tr>
	               				<th>담당자 연락처</th>
	               				<td><input type="text" class="col-sm-10 form-control" name = "manager_phone" id="manager_phone" value="<%=manager_phone %>"></td>
	               			</tr>
	               			<tr>
	               				<th>가입날짜</th>
	               				<td><input type ="text" name ="date" id ="date" value="<%=date%>"><%=date%></td>
	               			</tr>
	               			<tr>
	               				<th>연락처 읽기 횟수</th>
	               				<td><input type ="text" name ="resume_count" id ="resume_count" value="<%=resume_count%>"><%=resume_count%></td>
	               			</tr>
	               			<tr>
	               				<th>UP 횟수</th>
	               				<td><input type ="text" name ="up_count" id ="up_count" value="<%=up_count%>"><%=up_count%></td>
	               			</tr>
	               		</table>
	               		<input type ="submit" class ="btn btn-primary " value="수정" >
	               		<a class="btn btn-primary" href="<%=request.getContextPath()%>/enterprise/mypage">뒤로가기 </a>
	               		<a class="btn btn-primary" href="<%=request.getContextPath()%>/main">메인으로 </a>
	               	</form>
            	</div>
			<br>
			</div><!-- 끝 main 본문  -->
 
	
	
	
	
	
	<%@ include file="../serve/footer.jsp"%>

</body>
</html>