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
          <h1 class="h3 mb-2 text-gray-800">결제 하기</h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 class="m-0 font-weight-bold text-primary" >플래티넘</h4>
            </div>
            <div class="card-body">
              <div class="table-responsive">
               <h5>상품 옵션</h5>
               <hr>
               <h6>기간 선택</h6> 
               <hr>
               시작일+ &nbsp;&nbsp; <select name="">
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="4">4</option>
                 <option value="8">8</option>
                 <option value="16">16</option>
                 <option value="32">32</option>
               </select> &nbsp; 일 &emsp;&emsp;&emsp;&emsp; =
               <input type="text" name="pay" placeholder="0">원
               <br/>
               <br/>
               <br/>
               <br/>
               <hr>

               <h5>선택한상품 정보</h5>
               <br/>
               <br/>
               <div class="table-responsive">
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
                </table>
               </div>
               <br/>
               <hr>
              
               <h5>결제수단 선택</h5>
               <br/>
               <input type="radio" name="pay" value="card"/>카드결제 &emsp;&emsp;&emsp;&emsp;
               <input type="radio" name="pay" value="phone"/>휴대폰결제 &emsp;&emsp;&emsp;&emsp;
               <input type="radio" name="pay" value="2"/>무통장입금 &emsp;&emsp;&emsp;&emsp;
               <input type="radio" name="pay" value="3"/>실시간 계좌이체 
               <hr>
               <br/>
               <br/>
               <input type="submit" value="결제하기" class="btn py-1 px-1 btn-primary">


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