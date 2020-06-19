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
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <!-- 아이디 중복 확인 -->
  <script>
  	$(document).ready(function() {
  		$("#enterprise_id").change(function() {
  			if($(this).val().trim() != '') {
  				selectCheckId_e($(this).val());
  			}
  			else {
  				$("#dupChk_e").html('');
  			}
  		});
  	})
  	
  	function selectCheckId_e(enterprise_id) {
  		
  		$.ajax({
  			url : "../join/selectCheckId_e",//컨트롤러에 요청할것 RequestMapping과 맞게끔
  			method : "GET",
  			data : {
  				enterprise_id : enterprise_id
  			},
  			success : function(res) {
  				var text;
  				if(res==1){
  					text="<span style='color:red'>이미 등록된 아이디 입니다.</span>";
  				}else{
  					text="<span style = 'color:blue'>사용 가능한 아이디입니다.</span>";
  				}
  				$("#dupChk_e").html(text);
  				if(res == 0) {
  					btn.disabled = false;  					
  				}
  				else {
  					btn.disabled = 'disabled';
  				}
  			}
  		});
  	}
  </script>
  
  <!-- 비번 일치 확인 -->
  <script>
    var same_result = false;
  	function ok_pwd() {
  		var pwd1 = $('#password').val();
  		var pwd2 = $('#password2').val();
  		var s_result = $('#s_result');
  		var text;
  		if(pwd1 == pwd2) {
  			text="<span style = 'color:blue'>비밀번호가 일치합니다.</span>";
  			same_result=true;
  			s_result.html(text);
  		}
  		else {
  			text="<span style = 'color:red'>비밀번호가 일치하지 않습니다.</span>";
  			same_result=false;
  			s_result.html(text);
  		}
  	}
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
                  <input type="text" class="form-control form-control-user"  name ="enterprise_id"value="${enterprise.enterprise_id}" id="enterprise_id" placeholder="ID입력">
                </div>
	            <div class="col-sm-6">
	              <span id="dupChk_e"></span>
	            </div>      
              </div>
              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="password" class="form-control form-control-user"  name ="password"value="${enterprise.password}" id="password" placeholder="Password">
                </div>
                <div class="col-sm-6">
                  <input type="password" class="form-control form-control-user" name="password2" id="password2" placeholder="Repeat Password" onKeyUp="ok_pwd()">
                </div>
                <div class="col-sm-12" style="text-align:center">
                  <span style="color:red" id="s_result">비밀번호가 일치하지 않습니다.</span>
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
              <span class="box">업종</span><br><br>
              <div class="form-group row">
                <div class="col-lg-12">
                  <select class="form-control col-lg-12" id="cateogry" name="category">
                    <option data-display="카테고리">카테고리</option>
                    <option value="외식/음료">외식/음료</option>
                    <option value="유통/판매">유통/판매</option>
                    <option value="문화/여가/생활">문화/여가/생활</option>
                    <option value="서비스">서비스</option>
                    <option value="사무직">사무직</option>
                    <option value="고객상담/리서치">고객상담/리서치</option>
                    <option value="생산/건설/노무">생산/건설/노무</option>
                    <option value="교육/강사">교육/강사</option>
                    <option value="디자인">디자인</option>
                    <option value="미디어">미디어</option>
                    <option value="운전/배달">운전/배달</option>
                    <option value="병원/간호/연구">병원/간호/연구</option>
                    <option value="IT/컴퓨터">IT/컴퓨터</option>
                  </select>
                </div>
              </div>
			  <input type = "submit" value="전송" class="btn btn-primary btn-user btn" id="btn"/>
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