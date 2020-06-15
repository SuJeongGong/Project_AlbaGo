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
   <%@ include file="./serve/Sidebar.jsp" %>
   
   <!-- content wrapper -->
   <div id="content-wrapper" class="d-flex flex-column">
      <!-- main -->
         <div id ="content">
            <!-- Topbar -->
         <%@ include file="./serve/Topbar.jsp" %>
         
         <!-- main 본문  -->
         <div class="container-fluid">
                  



<div class="container">
				<div class="row">
          <div class="col-lg-8 ftco-animate">
           
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5 h4 font-weight-bold">알바 후기</h3>
                <form action="#" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="title">제목 </label>
                    <input type="text" class="form-control" id="title">
                  </div>
                  
                  <hr>
                  
                  <div class="form-group">
                    <label for="message">내용</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  
                  <hr>
				  
                      <div class="card-body">                        
                        <table class="table table-striped">
                          <tbody>
                            <tr>
                              <td>송원준  2020-05-30<br/> 이거 언제 다 만드누</td> 
                            </tr>
                            <tr>
                              <td>송원준  2020-05-30<br/> 캡스톤 너무 재밌누</td> 
                            </tr>
                            <tr>
                              <td>송원준  2020-05-30<br/> 깃 부셔버리고 싶다</td> 
                            </tr>
                          </tbody>
                        </table>
                      </div>
                   <hr>
                  <div class="form-group">
                    <label for="message">댓글</label>
                    <textarea name="" id="message" cols="2" rows="2" class="form-control"></textarea>
                  </div>
                  
                  <hr>

                  <div class="form-group">
                    <input type="submit" value="등록하기" class="btn py-1 px-1 btn-primary">
                    <input type="submit" value="목록" class="btn py-1 px-1 btn-primary">
                  </div>
                  
                    
            
                  </div>

                </form>
              </div>
            </div>
          </div> <!-- .col-md-8 -->




</div><!-- 끝 main 본문  -->
         </div><!-- 끝 main -->
         <!-- footer -->
      <%@ include file="./serve/footer.jsp" %>
   </div><!-- 끝 content wrapper -->
</div><!-- 끝  wrapper -->
</body>
</html>