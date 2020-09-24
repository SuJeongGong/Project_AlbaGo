<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>통합회원가입</title>

  <!-- Custom fonts for this template-->
  <!-- Custom fonts for this template-->
  <link href="<c:url value="/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/css/sb-admin-2.min.css" />" rel="stylesheet">


</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div class="container">
    <div class="row text-center">
        <div class="col-md-12">
        <br>
        <br>
        <br>
            <h2 style="text-align: center;">복지GO</h2>
        <br>
        <br>
            <hr/>
        <br>
        <br>
        </div>
        <div class="col-md-6" style="margin-top: 20px;">
            <div class="pricing-table" style="border: skyblue;">
                <div class="panel panel-primary" style="border: none;">
                    <div class="controle-header panel-heading panel-heading-landing">
                        <h3 class="panel-title panel-title-landing">
                            개인 회원
                        </h3>
                    </div>
                    <div class="panel-body panel-body-landing">
                        <table class="table">
                            <tr>
                                <td width="50px"></td>
                                <td>일반개인 및 사회복지사 등</td>
                            </tr>
                        </table>
                    </div>
                    <div class="panel-footer panel-footer-landing">
                        <a href="join_individual" class="btn btn-price btn-success btn-lg">개인회원 가입</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-6" style="margin-top: 20px;">
            <div class="pricing-table">
                <div class="panel panel-primary" style="border: none;">
                    <div class="controle-header panel-heading panel-heading-landing">
                        <h3 class="panel-title panel-title-landing">
                            단체 회원
                        </h3>
                    </div>
                    <div class="panel-body panel-body-landing">
                        <table class="table">
                            <tr>
                                <td width="50px"></td>
                                <td>사회복지기관 및 직능단체 등</td>
                            </tr>
                        </table>
                    </div>
                    <div class="panel-footer panel-footer-landing">
                        <a href="join_enterprise" class="btn btn-price btn-success btn-lg">단체회원 가입</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
  <!-- Scroll to Top Button-->
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