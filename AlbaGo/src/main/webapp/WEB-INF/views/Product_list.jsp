<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>my page</title>
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
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">상품선택</h1>
          </div>

          

          <div class="row">

            <div class="col-lg-10">


              <!-- Basic Card Example -->
              <div class="card shadow mb-4" >
                <div class="card-header py-3">
                  <h4 class="m-0 font-weight-bold text-primary">플래티넘</h4>
                </div>
                <div class="card-body">
                  <img src="product.png" align="left"> <br/><br/>
                  <h4 class="text-center">PC노출  <img src="pc.png">&nbsp;&nbsp;&nbsp; + &nbsp;&nbsp;&nbsp; 알바고메인 <img src="main.png">&nbsp;&nbsp;&nbsp; + &nbsp;&nbsp;&nbsp; 리스트상단 <img src="listtop.png">+ 급구아이콘<img src="icon.png"></h4>
                  
                </div>
                <div class="form-group text-right">
                  <h3 class="card-title text-right">198,000원/일</h3>
                  
                  <input type="submit" value="신청하기" class="btn py-1 px-1 btn-primary">
                </div>
              </div>
              <!-- Basic Card Example -->
              <div class="card shadow mb-4" >
                <div class="card-header py-3">
                  <h4 class="m-0 font-weight-bold text-primary">골드</h4>
                </div>
                <div class="card-body">
                  <img src="product.png" align="left"> <br/><br/>
                  <h4 class="text-center">PC노출 <img src="pc.png">&nbsp;&nbsp;&nbsp; + &nbsp;&nbsp;&nbsp; 알바고메인<img src="main.png"> &nbsp;&nbsp;&nbsp; + &nbsp;&nbsp;&nbsp; 리스트상단 <img src="listtop.png"></h4>
                  
                </div>
                <div class="form-group text-right">
                  <h3 class="card-title text-right">148,000원/일</h3>
                 
                  <input type="submit" value="신청하기" class="btn py-1 px-1 btn-primary">
                </div>
              </div>
              
              <div class="card shadow mb-4" >
                <div class="card-header py-3">
                  <h4 class="m-0 font-weight-bold text-primary">무료</h4>
                </div>
                <div class="card-body">
                  <img src="product.png" align="left"> <br/><br/>
                  <h4 class="text-center">PC노출 <img src="pc.png">&nbsp;&nbsp;&nbsp;</h4>
                  
                </div>
                <div class="form-group text-right">
                  <h3 class="card-title text-right">0원/일</h3>
                
                  <input type="submit" value="신청하기" class="btn py-1 px-1 btn-primary">
                </div>
              </div>
              
            </div>

            <div class="col-lg-6">

            </div>

          </div>
          



</div><!-- 끝 main 본문  -->
         </div><!-- 끝 main -->
         <!-- footer -->
      <%@ include file="./footer.jsp" %>
   </div><!-- 끝 content wrapper -->
</div><!-- 끝  wrapper -->
</body>
</html>