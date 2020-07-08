<%@page import="com.spring.ex.dto.Individual"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
<%@ include file="../serve/header.jsp" %>
	<%
		Individual individual = (Individual)request.getAttribute("Iinfo");
	
		String id = individual.getIndividual_id();
		String name = individual.getName();
		String birth = individual.getBirth();
		String gender = individual.getGender();
		String date = individual.getDate();//가입날짜
		String education = individual.getEducation();
		String phone = individual.getPhone();
	
	%>
				<!-- main 본문  -->
			<div class="container-fluid">
			<br>
				<div class="d-sm-flex align-items-center justify-content-between mb-4">
            		<h1 class="h3 mb-0 text-gray-800">기업 회원 정보</h1>
            				</div>
				<!-- main 본문을 한 줄로 묶기 -->
				<div class="row" >
					<form action="<%=request.getContextPath() %>/individual/account/update" name = "individual_id" id  = "individual" class="col-xl-12" >
	               		<table class="table table-bordered ">
	               			<tr>
	               				<th>아이디</th>
	               				<td><input type="hidden" name ="individual_id" id ="individual_id" value="<%=id%>" ><%=id%></td>
	               			</tr>
	               			<tr>
	               				<th>이름</th>
	               				<td><input type="text" class="form-control" name = "name" id="name" value="<%=name%>"></td>
	               			</tr>
	               			<tr>
	               				<th>성별</th>
	               				<td><input type="text" class="form-control" name = "gender" id="gender" value="<%=gender%>"></td>
	               			</tr>
	               			<tr>
	               				<th>연락처</th>
	               				<td><input type="text" class="form-control" name = "phone" id="phone" value="<%=phone%>"></td>
	               			</tr>
	               			<tr>
	               				<th>생년월일</th>
	               				<td><input type="text" class="form-control" name = "birth" id="birth" value="<%=birth.split(" ")[0] %>"></td>
	               			</tr>
	               			<tr>
	               				<th>최종학력</th>
	               				<td><input type="text" class="form-control" name = "education" id="education" value="<%=education %>"></td>
	               			</tr>
	               			<tr>
	               				<th>가입날짜</th>
	               		 		<td><input type ="hidden" name ="date" id ="date" value="<%=date%>"><%=date.split(" ")[0]%></td>
	               			</tr>
	               		</table>
	               		<div class="row">
	               		<div class="col-xl-11"></div>
	               			<input type ="submit" style="width:7%;" class ="btn btn-primary " value="수정" >
	               		</div>
						
	               	</form>
            	</div>
			<br>
			</div><!-- 끝 main 본문  -->
	<%@ include file="../serve/footer.jsp"%>
</body>
</html>