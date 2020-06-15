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
	<title>인재 글쓰기</title>
</head>

<body>
<div id="wrapper">
   <!-- 사이드 바 -->
   <%@ include file="../serve/sidebar.jsp" %>
   
   <!-- content wrapper -->
   <div id="content-wrapper" class="d-flex flex-column">
      <!-- main -->
         <div id ="content">
            <!-- Topbar -->
         <%@ include file="../serve/topbar.jsp" %>
         
         <!-- main 본문  -->
         <div class="container-fluid">
                  


<div class="container">
            <div class="row">
          <div class="col-lg-8 ftco-animate">
           
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5 h4 font-weight-bold">인재정보글쓰기</h3>
                <form action="#" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="title">이름 </label>
                    <input type="text" class="form-control" id="title">
                  </div>
                  <div class="form-group">
                    <label for="title">인재글제목 </label>
                    <input type="text" class="form-control" id="title">
                  </div>
                  <div class="form-group">
                    <label for="title">희망지역 </label>
                    <input type="text" class="form-control" id="title">
                  </div>

                  <div class="form-group">
                    <label for="message">메모</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <table>
                      이력서 제목
                      &nbsp;
                    <select name="">
                       <option value="0">이력서 제목1</option>
                       <option value="1">이력서 제목2</option>
                        <option value="2">이력서 제목3</option>
                        <option value="3">이력서 제목4</option>
                        <option value="4">이력서 제목5</option>
                        <option value="5">이력서 제목6</option>
                      </select>
                    </table>
                  
                      <br/>
                  <div class="form-group">
                    <input type="submit" value="등록하기" class="btn py-1 px-1 btn-primary">
                    <input type="submit" value="취소" class="btn py-1 px-1 btn-primary">
                  </div>
                </form>
              </div>
            </div>
          </div> <!-- .col-md-8 -->

        
        </div>
         



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