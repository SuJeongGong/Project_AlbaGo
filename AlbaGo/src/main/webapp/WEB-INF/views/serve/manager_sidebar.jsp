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
<%
String conPath = request.getContextPath();
%>

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<%=conPath %>/admin/main">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">ALBA_GO</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">
     
     
     
      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="main">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>메인페이지</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Client
      </div>

      <!-- Nav Item - Pages Collapse Menu -->

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<%=conPath%>/admin/member/individual">
          <i class="fas fa-fw fa-table"></i>
          <span>개인</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link"  href="<%=conPath%>/admin/member/enterprise" >
          <i class="fas fa-fw fa-table"></i>
          <span>기업</span></a>
      </li>


      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Board
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
          aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>게시판</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">board:</h6>
            <a class="collapse-item" href="<%=conPath %>/admin/recruit">공고글</a>
            <a class="collapse-item" href="<%=conPath %>/admin/resume">인재글</a>
            <a class="collapse-item" href="<%=conPath %>/admin/community">커뮤니티</a>
          </div>
        </div>
      </li>

      <hr class="sidebar-divider" >

	<div class="sidebar-heading">
        Management
      </div>
      
      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>관리</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Management:</h6>
            <a class="collapse-item" href="<%=conPath %>/admin/product/approve">상품 승인</a>
            <a class="collapse-item" href="<%=conPath %>/admin/product/product">상품 관리</a>
            <a class="collapse-item" href="<%=conPath %>/admin/advertising/approve">광고 승인</a>
            <a class="collapse-item" href="<%=conPath %>/admin/advertising/product">광고 관리</a>
          </div>
        </div>
      </li>

      <hr class="sidebar-divider ">
		<div class="sidebar-heading">
        	Sales
      </div>
      
      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="<%=conPath %>/admin/payment" >
          <i class="fas fa-fw fa-wrench"></i>
          <span>매출</span>
        </a>
      </li>

      


      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>
      <!-- Sidebar Toggle (Topbar) -->
      <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
        <i class="fa fa-bars"></i>
      </button>
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

    </ul>
    <!-- End of Sidebar -->

    
    <!-- End of Content Wrapper -->

  <!-- End of Page Wrapper -->

  <!-- 
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
Scroll to Top Button-->
</body>
</html>