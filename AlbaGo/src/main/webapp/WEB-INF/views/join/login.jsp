<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/css/sb-admin-2.min.css" />" rel="stylesheet">

</head>


<body class="bg-gradient-primary">
  <div class="row text-center" style="width: 135%">
    <div class="container" >
      <div class="card o-hidden border-0 shadow-lg my-3 col-lg-6 center-block ">

        <div class="col-lg-12">
          <div class="p-5">
            <div class="text-center">
             <h2 class="card-title text-center" style="color:#113366;">로그인 폼</h2>
           </div>
           <div class="card-body">
            <form class="form-signin" method="POST" onSubmit="logincall();return false">
              <h5 class="form-signin-heading">로그인 정보를 입력하세요</h5>
              <label for="inputEmail" class="sr-only">Your ID</label>
              <input type="text" id="uid" class="form-control" placeholder="Your ID" required autofocus><BR>
              <label for="inputPassword" class="sr-only">Password</label>
              <input type="password" id="upw" class="form-control" placeholder="Password" required><br>

              <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">로 그 인</button>
              <br>
              <a href="find_id" id="btn-Find_id"  type="submit">아이디 찾기</a> / 
              <a href="find_pw" id="btn-Find_pw" type="submit">비밀번호 찾기</a> /
             <a href="join" id="btn-sign"  type="submit">회원가입</a>
              
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>

  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value="/vendor/jquery/jquery.min.js" />"></script>
  <script src="<c:url value="/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

  <!-- Core plugin JavaScript-->
  <script src="<c:url value="/vendor/jquery-easing/jquery.easing.min.js" />"></script>

  <!-- Custom scripts for all pages-->
  <script src="<c:url value="/js/sb-admin-2.min.js" />"></script>

  <!-- Page level plugins -->
  <script src="<c:url value="/vendor/chart.js/Chart.min.js" />"></script>

  <!-- Page level custom scripts -->
  <script src="<c:url value="/js/demo/chart-area-demo.js" />"></script>
  <script src="<c:url value="/js/demo/chart-pie-demo.js" />"></script>
   </body>
</html>