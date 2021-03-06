<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>개인회원</title>

<!-- Custom fonts for this template-->
<!-- Custom fonts for this template-->
<link href="<c:url value="/vendor/fontawesome-free/css/all.min.css" />"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="<c:url value="/css/sb-admin-2.min.css" />" rel="stylesheet">


</head>

<body class="bg-gradient-primary">

<%
   String conPath = request.getContextPath();
%>
<script>
function checkMember(){   
   if(select.radio.value =="개인회원"){
	   select.action ="<%=conPath%>/join/find_pw/find_pw_individual_result";
	   select.submit();
   }
   if(select.radio.value =="기업회원"){
	   select.action ="<%=conPath%>/join/find_pw/find_pw_enterprise_result";
	   select.submit();
   }
}
</script>
	<div class="row text-center" style="width: 135%">
		<div class="container">

			<div
				class="card o-hidden border-0 shadow-lg my-5 col-lg-7 center-block ">

				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">

						<div class="col-lg-12">
							<div class="p-5">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">비밀번호 찾기</h1>
								</div>
								<form name="select" onsubmit="checkMember()">
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
									<label class="radio-inline"> 
									<input type="radio" name="radio" id="radio_individual"  checked="checked" value="개인회원">
									개인회원
									</label>
									<label class="radio-inline">
									<input type="radio" name="radio" id="radio_enterprise" value="기업회원">
									기업회원 
									</label>
									</div>
								</div>
									<input type="text" id="id" name="id" class="form-control form-control-user"  placeholder="ID입력" value="${id}" > 
									<input type="text" id="phone" name="phone" class="form-control form-control-user" placeholder="'연락처-빼고 적어주세요'" value="${phone}">
							<br> <br> <button class="btn btn-primary btn-user btn-block" type="submit"> 비밀번호 찾기 </button>
								
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

</body>

</html>