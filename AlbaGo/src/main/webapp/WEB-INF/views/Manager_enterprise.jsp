<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>my page</title>
<!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
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
                  <h1 class="h3 mb-0 text-gray-800">기업 회원 정보</h1>
                </div>
          <!-- main 본문을 한 줄로 묶기 -->
          <div class="row">
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">기업 정보  
                          
                        </h6>
                        
                      </div>
                      <div class="card-body">
                        
                        
                        <table class="table table-bordered ">
                          <tr>
                            <th>기업이름</th>
                            <td><input type="text" class="form-control" id="name" value="LG"></td>
                          </tr>
                          <tr>
                            <th>전화번호</th>
                            <td><input type="text" class="form-control" id="phone" value="02"></td>
                          </tr>
                          <tr>
                            <th>이메일</th>
                            <td><input type="email" class="form-control" id="e_mail" value="abcd"></td>
                          </tr>
                          <tr>
                            <th>주소</th>
                            <td><input type="text" class="form-control" id="address" value="서울시 종로구 행복동 123-4번지"></td>
                          </tr>
                          <tr>
                            <th>담당자 이름</th>
                            <td><input type="text" class="form-control" id="name" value="공수정"></td>
                          </tr>
                          <tr>
                            <th>담당자 연락처</th>
                            <td><input type="text" class="form-control" id="name" value="010-1234-5678"></td>
                          </tr>
                        </table>
                      </div>
                    </div>
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">공고글 내역
                          
                        </h6>
                      </div>
                      <div class="card-body">
                        
                        
                        <table class="table  table-bordered ">

                          <thead>
                            <tr>
                              <th> <input type="checkbox" name="Chk_choice" id="chk"> </th>
                              <th>공고 번호 작성일</th>
                              <th>알바공고</th>
                              <th>모집현황</th>
                              <th>지원자관리</th>
                              <th>유료서비스</th>
                              <th>관리</th>
          
          
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                              <td>2020-05-30</td>
                              <td>맥도날드</td>
                              <td>데이터3</td>
                              <td>무료</td>
                              <td>데이터5</td>
                              <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
          
          
          
                            </tr>
                            <tr>
                              <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                              <td>2020-05-30</td>
                              <td>데이터2</td>
                              <td>데이터3</td>
                              <td>데이터4</td>
                              <td>데이터5</td>
                              <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                            </tr>
                            <tr>
                              <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                              <td>2020-05-30</td>
                              <td>데이터2</td>
                              <td>데이터3</td>
                              <td>데이터4</td>
                              <td>데이터5</td>
                              <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                            </tr>
          
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
    
                  <div class="row">
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">인재 스크랩
                        </h6>
                      </div>
                      <div class="card-body">
                      
                        
                        <table class="table table-striped">
                          <thead>
                            <tr>
                              <th>이름</th>
                              <th>이력서제목</th>
                              <th>경력,자격증</th>
                              <th>희망지역</th>
                              <th>조회수</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>
                                임OO<small>(남/24세)</small>
                              </td>
                              <td>밝은 미소와 긍정적 마인드를 가진 인재입니다.</td>
                              <td>경력 : 신입</td>
                              <td>경기 고양시</td>
                              <td>12</td>
                            </tr>
                            <tr>
                              <td>
                                임OO<small>(남/24세)</small>
                              </td>
                              <td>강인한 체력으로 무장한 믿음직한 인재입니다.</td>
                              <td>경력 : 신입</td>
                              <td>경기 고양시</td>
                              <td>12</td>
                            </tr>
                            <tr>
                              <td>
                                임OO<small>(남/24세)</small>
                              </td>
                              <td>강인한 체력으로 무장한 믿음직한 인재입니다.</td>
                              <td>경력 : 신입</td>
                              <td>경기 고양시</td>
                              <td>12</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">결제내역
                        </h6>
                      </div>
                      <div class="card-body">
                        
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                          <thead>
                            <tr>
                              <th>상품명</th>
                              <th>기간</th>
                              <th>단가</th>
                              <th>소계</th>
                            </tr>
                          </thead>
                            <tr>
                              <td>플래티넘</td>
                              <td>시작일무료 + & </td>
                              <td>198,000</td>
                              <td>198,000</td>
                            </tr>
                            <tr>
                              <td>플래티넘</td>
                              <td>시작일무료 + & </td>
                              <td>198,000</td>
                              <td>198,000</td>
                            </tr>
                            <tr>
                              <td>플래티넘</td>
                              <td>시작일무료 + & </td>
                              <td>198,000</td>
                              <td>198,000</td>
                            </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                  
                      
          </div><!-- 끝 main 본문  -->
  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

 

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>



</div><!-- 끝 main 본문  -->
         </div><!-- 끝 main -->
         <!-- footer -->
      <%@ include file="./footer.jsp" %>
   </div><!-- 끝 content wrapper -->
</div><!-- 끝  wrapper -->
</body>
</html>