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
                  


<div class="container">
				<div class="row">
          <div class="col-lg-8 ftco-animate">
           
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5 h4 font-weight-bold">알바 후기 작성</h3>
                <form action="#" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="title">제목 </label>
                    <input type="text" class="form-control" id="title">
                  </div>
                  <div class="form-group">
                    <label for="score">평점 </label>
                    <input type="text" class="form-control" id="text">
                    </div>

                  <div class="form-group">
                    <label for="message">내용</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
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
      <%@ include file="./footer.jsp" %>
   </div><!-- 끝 content wrapper -->
</div><!-- 끝  wrapper -->
</body>
</html>