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
          <h1 class="h3 mb-2 text-gray-800">결제 관리</h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            
              <div class="row">
                <div class="card col-xl-6 shadow mb-6">
                  <div class="card-header py-4">
                    <h5 class="m-0 font-weight-bold text-primary">기간</h5>
                  </div>
                  <div class="card-body">
                    <table>

                      <input type="text" name="time">&nbsp;&nbsp; ~ &nbsp;&nbsp;<input type="text" name="time">
                      &emsp;
                      <input type="submit" value="오늘" class="btn py-1 px-1 btn-primary">&nbsp;
                      <input type="submit" value="1주일" class="btn py-1 px-1 btn-primary">&nbsp;
                      <input type="submit" value="1개월" class="btn py-1 px-1 btn-primary">
                  

                    </table>
                  </div>
                </div>
                <div class="card col-xl-6 shadow mb-6">
                  <div class="card-header py-4">
                    <h5 class="m-0 font-weight-bold text-primary">검색</h5>
                  </div>
                  <div class="card-body">
                    <table>
                     <a>옵션</a>
                      &emsp;
                      <select name="">
                        <option value="1">플래티넘</option>
                        <option value="2">골드</option>
                      </select>
                      &emsp;
                        <a>기업명</a>
                        &emsp;
                        <input type="text" name="time">
                        &emsp;
                      <input type="submit" value="검색" class="btn py-1 px-1 btn-primary">
                    </div>
                    
                    </table>
                  </div>
                </div>
              </div>
                   
            </div>
        
            <div class="card-body">
               
               <br/>
               <br/>
               <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>결제일</th>
                      <th>옵션</th>
                      <th>기업명</th>
                      <th>금액</th>
                      <th>관리</th>
                    </tr>
                  </thead>
                    <tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr>
                    <tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr>
                    <tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr>
                    <tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr><tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr><tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr><tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr><tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr>
                    <tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr>
                    <tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr>
                    <tr>
                      <td>2020-06-10</td>
                      <td>플래티넘</td>
                      <td>알바고</td>
                      <td>19,800</td>
                      <td><input type="submit" value="환불" class="btn py-1 px-1 btn-danger"></td>
                    </tr>
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