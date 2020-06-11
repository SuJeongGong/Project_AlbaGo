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
<div id="wrapper">
	<!-- 사이드 바 -->
	<%@ include file="./Sidebar.jsp" %>
	
	<!-- content wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
		<!-- main -->
   		<div id ="content">
   			<!-- Topbar -->
			<%@ include file="./Topbar.jsp" %>
			
			<!-- main 본문  -->
			<div class="container-fluid">
				<div class="d-sm-flex align-items-center justify-content-between mb-4">
            		<h1 class="h3 mb-0 text-gray-800">개인 회원 정보</h1>
          		</div>
				<!-- main 본문을 한 줄로 묶기 -->
				<div class="row" >
					<form action="" class="col-xl-12" >
	               		<table class="table table-bordered ">
	               			<tr>
	               				<th>회원이름</th>
	               				<td><input type="text" class="form-control" id="name" value="공수정"></td>
	               			</tr>
	               			<tr>
	               				<th>전화번호</th>
	               				<td><input type="text" class="form-control" id="phone" value="010-1234-5678"></td>
	               			</tr>
	               			<tr>
	               				<th>이메일</th>
	               				<td><input type="email" class="form-control" id="e_mail" value="abcd"></td>
	               			</tr>
	               			<tr>
	               				<th>주소</th>
	               				<td><input type="text" class="form-control" id="address" value="서울시 종로구 행복동 123-4번지"></td>
	               			</tr>
	               		</table>
	               		<input type ="submit" class ="btn btn-primary " value="수정" >
	               	</form>
            	</div>
			</div><!-- 끝 main 본문  -->
   		</div><!-- 끝 main -->
   		<!-- footer -->
		<%@ include file="./footer.jsp" %>
   </div><!-- 끝 content wrapper -->
</div><!-- 끝  wrapper -->
</body>
</html>