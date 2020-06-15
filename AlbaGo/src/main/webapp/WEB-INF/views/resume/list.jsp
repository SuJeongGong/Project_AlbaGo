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

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../serve/sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <div id="content">
                <!-- Topbar -->
                <%@ include file="../serve/topbar.jsp" %>

                <!-- main 본문  -->
                <div class="container-fluid">
                    <!-- main 본문을 한 줄로 묶기 -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">전체 인재 정보</h1>
                    </div>
                    <div class="row">
                        <!--  실제 내용 삽입 -->

                        <div class="container ">
                            <div class="row">
                               <div>
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
                      
                                       작성일자
                      &nbsp;
                      <input type="text" name="time">&nbsp;&nbsp; ~ &nbsp;&nbsp;<input type="text" name="time">
                      &emsp;
                      <input type="submit" value="오늘" class="btn py-1 px-1 btn-primary">&nbsp;
                      <input type="submit" value="1주일" class="btn py-1 px-1 btn-primary">&nbsp;
                      <input type="submit" value="1개월" class="btn py-1 px-1 btn-primary">
                      </table>
                      <hr>
                                       고용형태
                      &emsp;
                      <table>
                      <input type = "checkbox" name = "Employment" value = "football">알바
                      &emsp;
                      <input type = "checkbox" name = "Employment" value = "football">정규직
                      &emsp;
                      <input type = "checkbox" name = "Employment" value = "football">계약직
                      &emsp;
                      <input type = "checkbox" name = "Employment" value = "football">파견직
                      &emsp;
                      <input type = "checkbox" name = "Employment" value = "football">청년인턴직
                      &emsp;
                      <input type = "checkbox" name = "Employment" value = "football">위촉직
                      &emsp;
                      <input type = "checkbox" name = "Employment" value = "football">연수생/교육생
                    </table>
                    <hr>
                                   근무기간
                    &emsp;
                    <table>
                    <input type = "radio" name = "term" value = "football">1주일 이하
                      &emsp;
                      <input type = "radio" name = "term" value = "football">1개월
                      &emsp;
                      <input type = "radio" name = "term" value = "football">3개월~6개월
                      &emsp;
                      <input type = "radio" name = "term" value = "football">6개월~1년
                      &emsp;
                      <input type = "radio" name = "term" value = "football">1년이상
                      &emsp;
                      <input type = "radio" name = "term" value = "football">기간협의
                      </table>
                      <hr>
                                       근무요일
                      &emsp;
                      <table>
                      <input type = "checkbox" name = "day" value = "football">월
                      &emsp;
                      <input type = "checkbox" name = "day" value = "football">화
                      &emsp;
                      <input type = "checkbox" name = "day" value = "football">수
                      &emsp;
                      <input type = "checkbox" name = "day" value = "football">목
                      &emsp;
                      <input type = "checkbox" name = "day" value = "football">금
                      &emsp;
                      <input type = "checkbox" name = "day" value = "football">토
                      &emsp;
                      <input type = "checkbox" name = "day" value = "football">일
                      </table>
                               </div>
                 
                       
                              
                             
                            </div>
                        </div>

                        <div class="container">
                            <div class="row">

                                <div class="col-md-12">
                                    <div>
                                        <p>◆ 전체 인재<br></p>
                                    </div>

                                    <div class="dropdown">
                                        <a class="btn-top" style="margin-right: 15px;" href="#"
                                            class="btn btn-primary btn-success"> 수정일순</a>
                                        <a class="btn-top" style="margin-right: 15px;" href="#"
                                            class="btn btn-primary btn-success"> 등록일순</a>
                                        <a class="btn-top" style="margin-right: 15px;" href="#"
                                            class="btn btn-primary btn-success pull-right">
                                            &nbsp 마감일순</a>
                                        <a class="btn-top" style="margin-left: 15px;" href="#"
                                            class="btn btn-primary btn-success pull-left">
                                            &nbsp 조회수</a>
                                    </div>

                                    <div class="table-responsive">
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
                                                    <td><a href="content">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <hr />
                                        <div style="float: right;">
                                            <a href="write" class="btn btn-primary btn-xs pull-right">글쓰기</a>
                                        </div>

                                        <div class="text-center" style="float: left;">
                                            <ul class="pagination">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="#" tabindex="-1"
                                                        aria-disabled="true">Previous</a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item active" aria-current="page">
                                                    <a class="page-link" href="#">2 <span
                                                            class="sr-only">(current)</span></a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">Next</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div><!-- 끝 실제 내용 삽입 -->
                </div><!-- 끝 main 본문  -->
            </div><!-- 끝 main -->
            <!-- footer -->
            <%@ include file="../serve/footer.jsp" %>
        </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
    
    
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