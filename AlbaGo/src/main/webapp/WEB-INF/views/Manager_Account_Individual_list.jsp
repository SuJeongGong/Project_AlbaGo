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
                  


 <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">인재글 관리</h1>
          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <div class="row">
                <div class="card col-xl-12 shadow mb-6">
                  <div class="card-header py-3">
                    <h5 class="m-0 font-weight-bold text-primary">검색</h5>
                  </div>
                  <div class="card-body">
                    <table>
                   	업직종
                   	&nbsp;
                    <select name="">
                    	<option value="0">전체</option>
                    	<option value="1">외식/음료</option>
                        <option value="2">외식/음료</option>
                        <option value="3">유통/판매</option>
                        <option value="4">문화/여가/생활</option>
                        <option value="5">서비스</option>
                        <option value="6">사무직</option>
                        <option value="7">고객상담/리서치</option>
                        <option value="8">생산/건설/노무</option>
                        <option value="9">교육/강사</option>
                        <option value="10">디자인</option>
                        <option value="11">미디어</option>
                        <option value="12">운전/배달</option>
                        <option value="13">병원/간호/연구</option>
                        <option value="14">IT/컴퓨터</option>
                      </select>
                      &emsp;
                                       지역
                      &nbsp;
                      <select name="">
                        <option value="0">전국</option>
                        <option value="1">서울</option>
                        <option value="2">경기</option>
                        <option value="3">인천</option>
                        <option value="4">부산</option>
                        <option value="5">대구</option>
                        <option value="6">대전</option>
                        <option value="7">경남</option>
                        <option value="8">전남</option>
                        <option value="9">충남</option>
                        <option value="10">광주</option>
                        <option value="11">울산</option>
                        <option value="12">경북</option>
                        <option value="13">전북</option>
                        <option value="13">충북</option>
                        <option value="13">강원</option>
                        <option value="13">제주</option>
                      </select>
                      &emsp;
                                       성별
                      &nbsp;
                      <select name="">
                        <option value="0">무관</option>
                        <option value="1">남자</option>
                        <option value="2">여자</option>
                      </select>
                      &emsp;
                                      학력
                      &nbsp;      
                      <select name="">
                        <option value="0">초등학교 졸업</option>
                        <option value="1">중학교 졸업</option>
                        <option value="2">고등학교 졸업</option>
                        <option value="3">대학교(2, 3년) 졸업</option>
                        <option value="4">대학교(4년) 졸업</option>
                        <option value="5">대학원 졸업</option>
                      </select>
                      &emsp;
                                       작성일자
                      &nbsp;
                      <input type="text" name="time">&nbsp;&nbsp; ~ &nbsp;&nbsp;<input type="text" name="time">
                      &emsp;
                      <input type="submit" value="오늘" class="btn py-1 px-1 btn-primary">&nbsp;
                      <input type="submit" value="1주일" class="btn py-1 px-1 btn-primary">&nbsp;
                      <input type="submit" value="1개월" class="btn py-1 px-1 btn-primary">
                      &emsp;
                      <hr>
                     <select name="">
                        <option value="0">전체</option>
                        <option value="1">작성자</option>
                        <option value="2">제목</option>
                      </select>
                      &emsp;
                      <input type="text" name="time">
                      &emsp;
                      <input type="submit" value="검색" class="btn py-1 px-1 btn-primary">
      
                    </table>
                  </div>
                </div>
                
                
              
               
        
            <div class="card-body">
               
               <br/>
               <br/>
               <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>이름</th>
                        <th>이력서제목</th>
                        <th>경력,자격증</th>
                        <th>희망지역</th>
                        <th>조회수</th>
                        <th>관리</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>믿음직하고 끈기 있는 알바생입니다.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>유통점 마트 경력 있는 준비된 인재.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>몸도 마음도 건강한 인재입니다.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>밝은 미소와 긍정적 마인드를 가진 인재입니다.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>센스있고 적응력 좋은 인재입니다.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>강인한 체력으로 무장한 믿음직한 인재입니다.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>맡은 일에 최선을 다하는 인재입니다.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>센스있고 적응력 좋은 인재입니다.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>밝은 미소와 긍정적 마인드를 가진 인재입니다.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                      <tr>
                        <td>
                          임OO<small>(남/24세)</small>
                        </td>
                        <td>강인한 체력으로 무장한 믿음직한 인재입니다.</td>
                        <td>경력 : 신입</td>
                        <td>경기 고양시</td>
                        <td>12</td>
                        <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                      </tr>
                    </tbody>
                  </table>
               </div>
               <br/>
               <hr>
               

               <div class="text-center" style="float: left;">
                <ul class="pagination">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item active" aria-current="page">
                    <a class="page-link" href="##">2 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item"><a class="page-link" href="###">3</a></li>
                  <li class="page-item"><a class="page-link" href="####">4</a></li>
                  <li class="page-item"><a class="page-link" href="#####">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                  </li>
                </ul>
              </div>


              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

     

    </div>
    <!-- End of Content Wrapper -->

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