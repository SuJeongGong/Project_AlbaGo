<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>공고등록확인</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
  href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
  rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index2.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="index2.html">
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
          <a class="nav-link" href="tables.html">
            <i class="fas fa-fw fa-table"></i>
            <span>개인</span></a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="tables.html">
              <i class="fas fa-fw fa-table"></i>
              <span>기업</span></a>
            </li>


            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
              Others
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
                <h6 class="collapse-header">notice board:</h6>
                <a class="collapse-item" href="login.html">공고글</a>
                <a class="collapse-item" href="register.html">인재글</a>
                <a class="collapse-item" href="forgot-password.html">커뮤니티</a>
              </div>
            </div>
          </li>

          <!-- Nav Item - Utilities Collapse Menu -->
          <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
              <i class="fas fa-fw fa-wrench"></i>
              <span>관리</span>
            </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
              <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Management:</h6>
                <a class="collapse-item" href="utilities-color.html">승인관리</a>
                <a class="collapse-item" href="utilities-border.html">상품관리</a>
              </div>
            </div>
          </li>

          


          <!-- Divider -->
          <hr class="sidebar-divider d-none d-md-block">


          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>


        </ul>
 

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

          <!-- Main Content -->
          <div id="content">

            <!-- Topbar 윗부분 하얀색 -->
            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

              <!-- Sidebar Toggle (Topbar) -->
              <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                <i class="fa fa-bars"></i>
              </button>

              <!-- Topbar Search -->
              <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                <div class="input-group">
                  <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                  aria-label="Search" aria-describedby="basic-addon2">
                  <div class="input-group-append">
                    <button class="btn btn-primary" type="button">
                      <i class="fas fa-search fa-sm"></i>
                    </button>
                  </div>
                </div>
              </form>

            </nav>
            <!-- End of Topbar -->

            <div class="container">
              <div class="row">    
                <div class="col-xs-8 col-xs-offset-3">
                  <div class="input-group">
                    <div class="input-group-btn search-panel">
                      <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <span id="search_concept">Filter by</span> <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#contains">공고제목</a></li>
                        <li><a href="#its_equal">기업이름</a></li>
                        <li><a href="#greather_than">담당자이름</a></li>
                      </ul>
                    </div>
                    <input type="hidden" name="search_param" value="all" id="search_param">         
                    <input type="text" class="form-control" name="x" placeholder="Search term...">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div><br><br><br>

            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th>전체선택  </th>
                    <th>      <div class="custom-control custom-checkbox">
                      <input type="checkbox" id="jb-checkbox" class="custom-control-input">
                      <label class="custom-control-label" for="jb-checkbox"></label>
                    </div></th>
                    <th>공고제목</th>
                    <th>기업이름</th>
                    <th>공고기간</th>
                    <th>작성날짜</th>
                    <th>담당자이름</th>
                    <th>승인</th>
                    <th>거부</th>
                    
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td><div class="custom-control custom-checkbox">
                      <input type="checkbox" id="jb-checkbox" class="custom-control-input">
                      <label class="custom-control-label" for="jb-checkbox"></label>
                    </div></td>
                    <td><a href="#"> 이제 그만하고싶어요</a></td>
                    <td>슬 00회사</td>
                    <td>2020.01.12-2020.01.23</td>
                    <td>Table cell</td>
                    <td>Table cell</td>
                    <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                    <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                    
                  </tr>
                  <tr>
                    <td>2</td>
                    <td><div class="custom-control custom-checkbox">
                      <input type="checkbox" id="jb-checkbox" class="custom-control-input">
                      <label class="custom-control-label" for="jb-checkbox"></label>
                    </div></td>
                    <td><a href="#"> 알바를</a></td>
                    <td>슬회사</td>
                    <td>2020.01.12-2020.01.23</td>
                    <td>Table cell</td>
                    <td>Table cell</td>
                    <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                    <td><button type="button" class="btn btn-outline-danger">거부</button></td>

                  </tr>
                  <tr>
                    <td>3</td>
                    <td><div class="custom-control custom-checkbox">
                      <input type="checkbox" id="jb-checkbox" class="custom-control-input">
                      <label class="custom-control-label" for="jb-checkbox"></label>
                    </div></td>
                    <td><a href="#"> 빠숑</a></td>
                    <td>Table cell</td>
                    <td>Table cell</td>
                    <td>Table cell</td>
                    <td>Table cell</td4>     
                      <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                      <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>



            
            <a class="scroll-to-top rounded" href="#page-top">
              <i class="fas fa-angle-up"></i>
            </a>


            <!-- Bootstrap core JavaScript-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin-2.min.js"></script>

            <!-- Page level plugins -->
            <script src="vendor/chart.js/Chart.min.js"></script>

            <!-- Page level custom scripts -->
            <script src="js/demo/chart-area-demo.js"></script>
            <script src="js/demo/chart-pie-demo.js"></script>
            <script src="js/demo/chart-bar-demo.js"></script>

          </body>

          </html>