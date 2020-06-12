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

<body id="page-top">


    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- 알바고 라고 글씨 씌여있는곳 -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Alba_GO<sup></sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i><!-- 대시보드라고 써져있는 메뉴-->
          <span>메뉴</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        알바정보
      </div>

      <!-- 네비게이션 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#enterprise_area" aria-expanded="true"
          aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>지역</span>
        </a>
        <div id="enterprise_area" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <!-- <h6 class="collapse-header">경기도</h6>드롭다운 열었을때 흐릿한 글씨로 설명 된것 -->
            <a class="collapse-item" href="">서울</a>
            <a class="collapse-item" href="">경기</a>
            <a class="collapse-item" href="">인천</a>
            <a class="collapse-item" href="">부산</a>
            <a class="collapse-item" href="">대구</a>
            <a class="collapse-item" href="">대전</a>
            <a class="collapse-item" href="">경남</a>
            <a class="collapse-item" href="">전남</a>
            <a class="collapse-item" href="">충남</a>
            <a class="collapse-item" href="">광주</a>
            <a class="collapse-item" href="">울산</a>
            <a class="collapse-item" href="">경북</a>
            <a class="collapse-item" href="">전북</a>
            <a class="collapse-item" href="">충북</a>
            <a class="collapse-item" href="">강원</a>
            <a class="collapse-item" href="">제주</a>
            <a class="collapse-item" href="">전국</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#enterprise_category" aria-expanded="true"
          aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>카테고리</span>
        </a>
        <div id="enterprise_category" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">카테고리별</h6>
            <a class="collapse-item" href="utilities-color.html">외식/음료</a>
            <a class="collapse-item" href="utilities-border.html">유통/판매</a>
            <a class="collapse-item" href="utilities-animation.html">문화/여가/생활</a>
            <a class="collapse-item" href="utilities-other.html">서비스</a>
            <a class="collapse-item" href="utilities-other.html">사무직</a>
            <a class="collapse-item" href="utilities-color.html">고객상담/리서치</a>
            <a class="collapse-item" href="utilities-border.html">생산/건설/노무</a>
            <a class="collapse-item" href="utilities-animation.html">교육/강사</a>
            <a class="collapse-item" href="utilities-other.html">디자인</a>
            <a class="collapse-item" href="utilities-other.html">미디어</a>
            <a class="collapse-item" href="utilities-other.html">운전/배달</a>
            <a class="collapse-item" href="utilities-other.html">병원/간호/연구</a>
            <a class="collapse-item" href="utilities-other.html">IT/컴퓨터</a>
          </div>
      </li>


      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#enterprise_thema" aria-expanded="true"
          aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>테마</span>
        </a>
        <div id="enterprise_thema" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">테마</h6>
            <a class="collapse-item" href="utilities-color.html">주휴수당</a>
            <a class="collapse-item" href="utilities-border.html">대학생</a>
            <a class="collapse-item" href="utilities-animation.html">주부</a>
            <a class="collapse-item" href="utilities-other.html">청소년</a>
            <a class="collapse-item" href="utilities-other.html">외국인</a>
            <a class="collapse-item" href="utilities-other.html">장년</a>
            </div>
          
          </li>

       <!-- Divider -->
      <hr class="sidebar-divider">
















            <!-- Heading -->
      <div class="sidebar-heading">
              인재정보
      </div>

            <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#individual_area" aria-expanded="true"
          aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>지역별</span>
        </a>
        <div id="individual_area" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="">서울</a>
            <a class="collapse-item" href="">경기</a>
            <a class="collapse-item" href="">인천</a>
            <a class="collapse-item" href="">부산</a>
            <a class="collapse-item" href="">대구</a>
            <a class="collapse-item" href="">대전</a>
            <a class="collapse-item" href="">경남</a>
            <a class="collapse-item" href="">전남</a>
            <a class="collapse-item" href="">충남</a>
            <a class="collapse-item" href="">광주</a>
            <a class="collapse-item" href="">울산</a>
            <a class="collapse-item" href="">경북</a>
            <a class="collapse-item" href="">전북</a>
            <a class="collapse-item" href="">충북</a>
            <a class="collapse-item" href="">강원</a>
            <a class="collapse-item" href="">제주</a>
            <a class="collapse-item" href="">전국</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#individual_category" aria-expanded="true"
          aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>카테고리</span>
        </a>
        <div id="individual_category" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">카테고리별</h6>
            <a class="collapse-item" href="utilities-color.html">외식/음료</a>
            <a class="collapse-item" href="utilities-border.html">유통/판매</a>
            <a class="collapse-item" href="utilities-animation.html">문화/여가/생활</a>
            <a class="collapse-item" href="utilities-other.html">서비스</a>
            <a class="collapse-item" href="utilities-other.html">사무직</a>
            <a class="collapse-item" href="utilities-color.html">고객상담/리서치</a>
            <a class="collapse-item" href="utilities-border.html">생산/건설/노무</a>
            <a class="collapse-item" href="utilities-animation.html">교육/강사</a>
            <a class="collapse-item" href="utilities-other.html">디자인</a>
            <a class="collapse-item" href="utilities-other.html">미디어</a>
            <a class="collapse-item" href="utilities-other.html">운전/배달</a>
            <a class="collapse-item" href="utilities-other.html">병원/간호/연구</a>
            <a class="collapse-item" href="utilities-other.html">IT/컴퓨터</a>
          </div>
        </div>
      </li>

      <hr class="sidebar-divider">

      <!-- Heading -->
<div class="sidebar-heading">
        커뮤니티
</div>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>알바후기</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->



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
