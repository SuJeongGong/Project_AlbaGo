<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>이력서 관리</title>
</head>
<body>
<div id="wrapper">
	<!-- 사이드 바 -->
	<%@ include file="../Sidebar.jsp" %>
	
	<!-- content wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
		<!-- main -->
   		<div id ="content">
   			<!-- Topbar -->
			<%@ include file="../Topbar.jsp" %>
			
			<!-- main 본문  -->
			<div class="container-fluid">
			<!-- main 본문을 한 줄로 묶기 -->
			<div class="d-sm-flex align-items-center justify-content-between mb-4">
            	<h1 class="h3 mb-0 text-gray-800">이력서 관리</h1>
       	   	</div>
			<div class="row"><!--  실제 내용 삽입 -->
				<div class="card-body">
              <div class="container">
                <div class="row col-xs-12 col-md-offset-2 custyle">
                  <table class="table table-striped custab">
                    <thead>
                      <!-- 이력서 작성 버튼 -->
                      <a href="#" class="btn btn-primary btn-xs pull-right">이력서 작성<b> ▶</b></a>
                      
                      <!-- 제목 -->
                      <tr>
                        <th>번호</th>
                        <th style="width:30%">이력서 제목</th>
                        <th class="text-center">최종 수정일</th>
                        <th class="text-center">관리</th>
                        <th class="text-center">공개여부</th>
                        <th class="text-center">맞춤알바</th>
                      </tr>
                    </thead>

                      <!-- 첫번째 -->
                      <tr>
                        <td>1</td>
                        <td>News</td>
                        <td class="text-center">-</td>
                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span
                              class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#"
                            class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
                        <td class="text-center">-</td>
                        <td class="text-center">-</td>
                      </tr>

                      <!-- 두번째 -->
                      <tr>
                        <td>2</td>
                        <td>Products</td>
                        <td class="text-center">-</td>
                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span
                              class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#"
                            class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
                        <td class="text-center">-</td>
                        <td class="text-center">-</td>
                      </tr>

                      <!-- 세번째 -->
                      <tr>
                        <td>3</td>
                        <td>Blogs</td>
                        <td class="text-center">-</td>
                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span
                              class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#"
                            class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
                        <td class="text-center">-</td>
                        <td class="text-center">-</td>
                      </tr>

                      <!-- 네번째 -->
                      <tr>
                        <td>4</td>
                        <td>Blogs</td>
                        <td class="text-center">-</td>
                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span
                              class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#"
                            class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
                        <td class="text-center">-</td>
                        <td class="text-center">-</td>
                      </tr>

                      <!-- 다섯번째 -->
                      <tr>
                        <td>5</td>
                        <td>Blogs</td>
                        <td class="text-center">-</td>
                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span
                              class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#"
                            class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
                        <td class="text-center">-</td>
                        <td class="text-center">-</td>
                      </tr>

                      <!-- 여섯번째 -->
                      <tr>
                        <td>6</td>
                        <td>Blogs</td>
                        <td class="text-center">-</td>
                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span
                              class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#"
                            class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
                        <td class="text-center">-</td>
                        <td class="text-center">-</td>
                      </tr>
                  </table>
                </div>
              </div>
            </div>				
			</div><!-- 끝 실제 내용 삽입 -->
			</div><!-- 끝 main 본문  -->
   		</div><!-- 끝 main -->
   		<!-- footer -->
		<%@ include file="../footer.jsp" %>
   </div><!-- 끝 content wrapper -->
</div><!-- 끝  wrapper -->
</body>
</html>