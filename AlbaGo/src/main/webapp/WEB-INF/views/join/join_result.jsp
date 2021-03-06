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

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>회원가입 성공</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="row text-center" style="width: 135%">
    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5 col-lg-7 center-block ">

            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">

                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">회원가입성공</h1>
                            </div>
                                
                                <br><br>


                                <a href="<%=request.getContextPath() %>/main" class="btn btn-primary btn-user btn-block">메인으로
                                </a>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

   
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