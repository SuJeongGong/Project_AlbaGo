<%@page import="com.spring.ex.dto.Enterprise"%>
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
    <title>기업상세페이지</title>
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../serve/manager_sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <div id="content">
                <!-- Topbar -->
                <%@ include file="../serve/manager_topbar.jsp" %>
                <%
             	  	 Enterprise enterprise = (Enterprise)request.getAttribute("enterprise");
					
						String enterprise_id = enterprise.getEnterprise_id();
				    	String password=enterprise.getPassword();
						String name = enterprise.getName();
						String business_number = enterprise.getBusiness_number();
						String manager_name = enterprise.getManager_name();
						String manager_phone = enterprise.getManager_phone();
						String category = enterprise.getCategory();
						String date = enterprise.getDate().split(" ")[0];;//가입날짜
						
					%>

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

						     <!-- 기업 회원정보 form 시작 -->
                            <form id="info" action="" >
                                  <table class="table table-bordered ">
                                    <tr>
                                        <th>기업아이디</th>
                                        <td><input type="text" class="form-control" id="enterprise_id" value="<%=enterprise_id%>"></td>
                                    </tr>
                                    <tr>
                                        <th>비밀번호</th>
                                        <td><input type="text" class="form-control" id="password" value="<%=password%>"></td>
                                    </tr>
                                    <tr>
                                        <th>기업이름</th>
                                        <td><input type="email" class="form-control" id="name" value="<%=name%>"></td>
                                    </tr>
                                    <tr>
                                        <th>기업전화번호</th>
                                        <td><input type="text" class="form-control" id="business_number" value="<%=business_number%>"></td>
                                    </tr>
                                    <tr>
                                        <th>담당자 이름</th>
                                        <td><input type="text" class="form-control" id="manager_name" value="<%=manager_name%>"></td>
                                    </tr>
                                    <tr>
                                        <th>담당자 연락처</th>
                                        <td><input type="text" class="form-control" id="manager_phone" value="<%=manager_phone%>">
                                        </td>
                                    </tr>
                                 	<tr>
                                        <th>카테고리</th>
                                        <td><input type="text" class="form-control" id="category" value="<%=category%>">
                                        </td>
                                    </tr>
                                     <tr>
                                        <th>가입날짜</th>
                                        <td><input type="text" class="form-control" id="date" value="<%=manager_name%>">
                                        </td>
                                    </tr>
    
                                    
                                    <tr>
                                        <th>관리자</th>
                                        <td>
                                            <a class='btn btn-info btn-xs' href="#"><span
                                                    class="glyphicon glyphicon-edit"></span>정보 수정</a> 
                                             <a href="#"
                                                class="btn btn-danger btn-xs"><span
                                                    class="glyphicon glyphicon-remove"></span>계정 삭제</a>
                                        </td>
                                    </tr>
                                </table>
                                </form>
                            </div>
                        </div>
                        
              
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">공고글 관리
                                </h6>
                            </div>
                            <div class="card-body">

   							  <!-- 공고글 form 시작 -->
                            <form id="recruit" action="" >
                                <table class="table  table-bordered ">

                                    <thead>
                                        <tr>
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
                                            <td>2020-05-30</td>
                                            <td>맥도날드</td>
                                            <td>데이터3</td>
                                            <td>무료</td>
                                            <td>데이터5</td>
                                            <td><input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"></td>
                                        </tr>
                                    </tbody>
                                </table>
                               </form>
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

     						<!-- 인재스크랩 form 시작 -->
                            <form id="scrap" action="" >
                         
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
                                        
                                    </tbody>
                                </table>
                                </form>
                            </div>
                        </div>
                        
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">결제내역
                                </h6>
                            </div>
                            <!-- 결제내역 form 시작 -->
                            <form id="payment" action="" >
                       
                            <div class="card-body">
                                <h6 class="m-0 font-weight-bold text-primary" align="right">총계 : &nbsp; <input
                                        type="text" name="revenue">원</h6>
                                <br />
                                
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>상품명</th>
                                            <th>결제일</th>
                                            <th>사용기간</th>
                                            <th>가격</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>플래티넘</td>
                                        <td>2020-06-16</td>
                                        <td>시작일무료 + & </td>
                                        <td>198,000</td>
                                    </tr>
                                </table>
                            </div>
                            </form>
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
    <%@ include file="../serve/footer.jsp" %>
    </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>