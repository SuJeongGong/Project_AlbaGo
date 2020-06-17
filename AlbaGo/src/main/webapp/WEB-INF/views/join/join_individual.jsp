<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>개인 회원가입</title>
 <style>
  .box{
    width:120px; 
    height:40px; 
    background-color:lightblue; /* 배경색 = green */
    color:black /* 글자색 : white */
  }
</style>
  <link href="<c:url value="/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/css/sb-admin-2.min.css" />" rel="stylesheet">
  
  <script>
  	
  </script>
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
              <h1 class="h4 text-gray-900 mb-3">개인 회원가입</h1>
              <hr>
            </div>
            <form class="user" action ="<%=conPath%>/join/join_individual/join_result">
              <div class="from-group row">
               &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

               <div class="custom-control custom-radio" >
                <input type="radio" name="gender" id="man" class="a-input" value="남자" checked>남자
              </div>&nbsp;&nbsp;&nbsp;&nbsp;
              <div class="custom-control custom-radio">
                <input type="radio" name="gender" id="woman" class="a-input" value="여자" checked>여자
              </div>
            </div>
            <hr>
            <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="name" value="${individual.name}" name="name" placeholder="이름입력">
              </div>                 
            </div>
            <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="individual_id" value="${individual.individual_id}" id="individual_id" placeholder="ID입력" >

              </div>        
              <div class="col-sm-6"><p><button type="button" class="btn btn-outline-primary btn-block" onclick="return validation()" value="중복확인">중복확인</button></p>
              </div>         
            </div>
            <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="password" class="form-control form-control-user" name ="password"value="${individual.password}" id="password" placeholder="Password">
              </div>
              <div class="col-sm-6">
                <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeat Password">
              </div>
            </div>
            <hr>
            

            <span class="box">생년월일</span> <br><br>
            
            <div class="form-group row">
              <div class="col-sm-7 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="birth" value="${individual.individual_birth}" id="individual_birth" placeholder="0000-00-00으로 적어주세요">
              </div>
            </div>
            <span class="box">핸드폰번호</span><br><br>
            <div class="form-group row">
              <div class="col-sm-7 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="phone" value="${individual.phone}" id="phone" placeholder="'-빼고 적어주세요'">
              </div>
            </div>
            <span class="box">주소</span><br><br>
            <div class="form-group row">
              <div class="col-sm-12 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="adress" placeholder="서울특별시 강북구 홍길동 (자세히 적어주세요)">
              </div>
            </div>
            <span class="box">최종학력</span><br><br>
            
            <div class="form-group row">
              <div class="a custom-radio">
                <input type="radio" name="education" id="element" class="a-input" value="초등학교 졸업" checked>
                                초등학교 졸업
              </div>&nbsp;&nbsp;&nbsp;&nbsp;
              <div class="a custom-radio">
                <input type="radio" name="education" id="middle" class="a-input" value="중학교 졸업" checked>
                                중학교 졸업
              </div>&nbsp;&nbsp;&nbsp;&nbsp;
              <div class="a custom-radio">
                <input type="radio" name="education" id="high" class="a-input" value="고등학교 졸업" checked>
                <label class="a-label" for="high">고등학교 졸업</label>
              </div>&nbsp;&nbsp;&nbsp;&nbsp;<br>
              <div class="a custom-radio">
                <input type="radio" name="education" id="collage23" class="a-input" value="2/3년제 졸업" checked>
                2/3년제 졸업
              </div>
              <div class="a custom-radio">
                <input type="radio" name="education" id="collage4" class="a-input" value="4년제 졸업" checked>
                4년제 졸업
              </div>
            </div>
            <br>
            <input type = "submit" value="전송" class="btn btn-primary btn-user btn"/>
 
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
  <script type="text/javascript">
  
  </script>
</body>

</html>


</body>
</html>