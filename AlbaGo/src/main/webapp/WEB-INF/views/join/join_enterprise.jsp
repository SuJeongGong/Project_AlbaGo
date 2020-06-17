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
<%
	String conPath = request.getContextPath();
%>
  <div class="row text-center" style="width: 135%">
    <div class="container" >

      <div class="card o-hidden border-0 shadow-lg my-3 col-lg-7 center-block ">
        
        <div class="col-lg-12">
          <div class="p-5">
            <div class="text-center">
              <h1 class="h4 text-gray-900 mb-3">기업 회원가입</h1>
              <hr>
            </div>
            <form class="user" action ="<%=conPath%>/join/join_enterprise/join_result">
              

              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" id="name" value="${enterprise.name}"placeholder="기업 이름 입력" name="name">
                </div>                 
              </div>
              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user"  name ="enterprise_id"value="${enterprise.enterprise_id}" id="enterprise_id" placeholder="ID입력">S

                </div>        
                <div class="col-sm-6"><p><button type="button" class="btn btn-outline-primary btn-block">중복확인</button></p>
                </div>         
              </div>
              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="password" class="form-control form-control-user"  name ="password"value="${enterprise.password}" id="password" placeholder="Password">
                </div>
                <div class="col-sm-6">
                  <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeat Password">
                </div>
              </div>
              <hr>
              
              <span class="box">담당자 정보</span> <br><br>
              
              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" name="manager_name" value="${enterprise.manager_name}" id="manager_name" placeholder="담당자이름">
                </div>
                <div class="col-sm-6">
                  <input type="text" class="form-control form-control-user"  name="manager_phone" value="${enterprise.manager_phone}" id="manager_phone" placeholder="담당자 핸드폰">
                </div>

              </div>
              <span class="box">사업자번호</span><br><br>
              <div class="form-group row">
                <div class="col-sm-12 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" name="business_number" value="${enterprise.business_number}" id="business_number" placeholder="'-빼고 적어주세요'">
                </div>
              </div>
              <span class="box">회사 주소</span><br><br>
              <div class="form-group row">
                <div class="col-sm-12 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" id="adress" placeholder="서울특별시 강북구 홍길동 (자세히 적어주세요)">
                </div>
              </div>
              <span class="box">카테고리</span><br><br>
              <div class="form-group row">
                <div class="col-sm-12 mb-3 mb-sm-0">
                  <input type="" class="form-control form-control-user" id="category"  name="category" value="${enterprise.category}" placeholder="서울특별시 강북구 홍길동 (자세히 적어주세요)">
                </div>
              </div>
	<input type = "submit" value="전송"/>
              <br>
              


              
              

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