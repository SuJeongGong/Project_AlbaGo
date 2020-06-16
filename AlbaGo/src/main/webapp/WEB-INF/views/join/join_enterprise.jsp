<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"><title>기업 회원가입</title>
  <style>
    .box{
      width:120px; 
      height:40px; 
      background-color:lightblue; /* 배경색 = green */
      color:black /* 글자색 : white */
    }
  </style>
  <!-- Custom styles for this template-->  <link href="<c:url value="/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/css/sb-admin-2.min.css" />" rel="stylesheet">
</head>

<body class="bg-gradient-primary">
  <div class="row text-center" style="width: 135%">
    <div class="container" >

      <div class="card o-hidden border-0 shadow-lg my-3 col-lg-7 center-block ">
        
        <div class="col-lg-12">
          <div class="p-5">
            <div class="text-center">
              <h1 class="h4 text-gray-900 mb-3">기업 회원가입</h1>
              <hr>
            </div>
            <form class="user">
              

              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" id="NAME" placeholder="기업 이름 입력">
                </div>                 
              </div>
              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" id="ID" placeholder="ID입력">

                </div>        
                <div class="col-sm-6"><p><button type="button" class="btn btn-outline-primary btn-block">중복확인</button></p>
                </div>         
              </div>
              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
                </div>
                <div class="col-sm-6">
                  <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeat Password">
                </div>
              </div>
              <hr>
              
              <span class="box">담당자 정보</span> <br><br>
              
              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" id="exampleInputPassword" placeholder="담당자이름">
                </div>
                <div class="col-sm-6">
                  <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="담당자 핸드폰">
                </div>

              </div>
              <span class="box">사업자번호</span><br><br>
              <div class="form-group row">
                <div class="col-sm-7 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" id="cellphone" placeholder="'-빼고 적어주세요'">
                </div>
              </div>
              <span class="box">회사 주소</span><br><br>
              <div class="form-group row">
                <div class="col-sm-8 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" id="adress" placeholder="서울특별시 강북구 홍길동 (자세히 적어주세요)">
                </div>
              </div>
              <span class="box">카테고리</span><br><br>
              
              <div class="form-group row">
                <div class="a custom-radio">
                  <input type="radio" name="jb-a" id="jb-a-1" class="a-input">
                  <label class="a-label" for="jb-a-1">뭐가</label>
                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="a custom-radio">
                  <input type="radio" name="jb-a" id="jb-a-2" class="a-input">
                  <label class="a-label" for="jb-a-2">있을까</label>
                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="a custom-radio">
                  <input type="radio" name="jb-a" id="jb-a-3" class="a-input">
                  <label class="a-label" for="jb-a-3">잘모르겠는데</label>
                </div>&nbsp;&nbsp;&nbsp;&nbsp;<br>
                <div class="a custom-radio">
                  <input type="radio" name="jb-a" id="jb-a-4" class="a-input">
                  <label class="a-label" for="jb-a-4">같이 알아보자고</label>
                </div>

                <div class="a custom-radio">
                  <input type="radio" name="jb-a" id="jb-a-5" class="a-input">
                  <label class="a-label" for="jb-a-5">울 조 화이팅</label>
                </div>
              </div>
              <br>
              

              <a href="login.html" class="btn btn-primary btn-user btn">
                로그인
              </a>
              <a href="login.html" class="btn btn-primary btn-user btn">
                취소
              </a>
            </form>
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


</body>
</html>