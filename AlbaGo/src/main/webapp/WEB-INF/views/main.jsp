<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>main</title>
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
			<!-- main 본문을 한 줄로 묶기 -->
			<div class="row">
				<!-- 왼쪽 -->
				<div class = "col-xl-9">
					<!-- 왼쪽 1번째 줄  -->
					<div class="row">
						<!-- 1번째 카드 -->
						<div class="card col-xl-6 shadow mb-4">
							<div class="card-header py-3">
                 				<h6 class="m-0 font-weight-bold text-primary">동네 알바</h6>
                			</div>
                      		<div class="card-body">                            
									<a class="collapse-item" href="">서울</a>
						            <a class="collapse-item" href="">경기</a>
						            <a class="collapse-item" href="">인천</a>
						            <a class="collapse-item" href="">부산</a>
						            <a class="collapse-item" href="">대구</a>
						            <a class="collapse-item" href="">대전</a>
						            <a class="collapse-item" href="">경남</a>
						            <a class="collapse-item" href="">전남</a>
						            <a class="collapse-item" href="">충남</a>
						            <a class="collapse-item" href="">광주</a>
						            <a class="collapse-item" href="">울산</a>
						            <a class="collapse-item" href="">경북</a>
						            <a class="collapse-item" href="">전북</a>
						            <a class="collapse-item" href="">충북</a>
						            <a class="collapse-item" href="">강원</a>
						            <a class="collapse-item" href="">제주</a>
						            <a class="collapse-item" href="">전국</a>
                           	</div>
                  		</div>
                  		
                  		<!-- 2번째 카드 -->
						<div class="card col-xl-6 shadow mb-4">
                          <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">단기 알바</h6>
                          </div>
                          <div class="card-body">
						    <a class="collapse-item" href="">1일</a>
						    <a class="collapse-item" href="">1주일이내</a>
						    <a class="collapse-item" href="">1개월이내</a>
						    <a class="collapse-item" href="">오늘</a>
						    <a class="collapse-item" href="">단시간</a>
						    <a class="collapse-item" href="">급구</a>
						 </div>
                       </div>
					
					</div><!--끝 왼쪽 1번째 줄  -->
					
					<!-- 왼쪽 2번째 줄  -->
					<div class="row">
						
						<!-- 1번째 카드 -->
						<div class="card col-xl-6 shadow mb-4">
                          <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">테마 알바</h6>
                          </div>
                          <div class="card-body">
					            <a class="collapse-item" href="utilities-color.html">주휴수당</a>
					            <a class="collapse-item" href="utilities-border.html">대학생</a>
					            <a class="collapse-item" href="utilities-animation.html">주부</a>
					            <a class="collapse-item" href="utilities-other.html">청소년</a>
					            <a class="collapse-item" href="utilities-other.html">외국인</a>
					            <a class="collapse-item" href="utilities-other.html">장년</a>
                          </div>
                        </div>
                  		
                  		<!-- 2번째 카드 -->
						<div class="card col-xl-6 shadow mb-4">
                          <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">카테고리</h6>
                          </div>
                          <div class="card-body">
					            <a class="collapse-item" href="utilities-color.html">외식/음료</a>
					            <a class="collapse-item" href="utilities-border.html">유통/판매</a>
					            <a class="collapse-item" href="utilities-animation.html">문화/여가/생활</a>
					            <a class="collapse-item" href="utilities-other.html">서비스</a>
					            <a class="collapse-item" href="utilities-other.html">사무직</a>
					            <a class="collapse-item" href="utilities-color.html">고객상담/리서치</a>
					            <a class="collapse-item" href="utilities-border.html">생산/건설/노무</a>
					            <a class="collapse-item" href="utilities-animation.html">교육/강사</a>
					            <a class="collapse-item" href="utilities-other.html">디자인</a>
					            <a class="collapse-item" href="utilities-other.html">미디어</a>
					            <a class="collapse-item" href="utilities-other.html">운전/배달</a>
					            <a class="collapse-item" href="utilities-other.html">병원/간호/연구</a>
					            <a class="collapse-item" href="utilities-other.html">IT/컴퓨터</a>  
                          </div>
                        </div>
						
					</div><!--끝 왼쪽 2번째 줄  -->
					
					<!-- 왼쪽 3번째 줄  -->
					<div class="row">
						
						<!-- 광고 1 -->
                  		<div class="card col-xl-3 shadow mb-4">
	                        <div class="card-header py-3">
	                          <h6 class="m-0 font-weight-bold text-primary">광고 글 제목</h6>
	                        </div>
	                        <div class="card-body">
	                          <div>글 내용</div>
	                          <div>급여 관련</div>
	                        </div>
	                      </div>
                      
		                <!-- 광고 2 -->
		               <div class="card col-xl-3 shadow mb-4">
	                        <div class="card-header py-3">
	                          <h6 class="m-0 font-weight-bold text-primary">광고 글 제목</h6>
	                        </div>
	                        <div class="card-body">
	                          <div>글 내용</div>
	                          <div>급여 관련</div>
	                        </div>
                      	</div>
						<!-- 광고 3 -->
                  		<div class="card col-xl-3 shadow mb-4">
	                        <div class="card-header py-3">
	                          <h6 class="m-0 font-weight-bold text-primary">광고 글 제목</h6>
	                        </div>
	                        <div class="card-body">
	                          <div>글 내용</div>
	                          <div>급여 관련</div>
	                        </div>
	                    </div>
		                <!-- 광고 4 -->
		                <div class="card col-xl-3 shadow mb-4">
	                        <div class="card-header py-3">
	                          <h6 class="m-0 font-weight-bold text-primary">광고 글 제목</h6>
	                        </div>
	                        <div class="card-body">
	                          <div>글 내용</div>
	                          <div>급여 관련</div>
	                        </div>
                      	</div>
		
					</div><!--끝 왼쪽 3번째 줄  -->
					
					<!-- 왼쪽 4번째 줄  -->
					<div class="row">
						
						 <!-- 알바후기 -->
		                  <div class="col-xl-8 col-md-10 mb-4">
                           <div class="card  shadow h-100 py-2">
                             <div class="card-body">
                              <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary"><a href ="#">알바 토크</a></h6>
                              </div>
                              <table class="table table-hover">
                                <tr>
                                    <td><a href ="#">편의점 알바 후기</a></td>
                                    <td><a href ="#">2020-02-08</a></td>
                                  
                                </tr>
                                <tr>
                                  <td><a href ="#">편의점 알바 후기</a></td>
                                  <td><a href ="#">2020-02-08</a></td>
                              </tr>
                              <tr>
                                <td><a href ="#">편의점 알바 후기</a></td>
                                <td><a href ="#">2020-02-08</a></td>
                            </tr>
                            <tr>
                              <td><a href ="#">편의점 알바 후기</a></td>
                              <td><a href ="#">2020-02-08</a></td>
                          </tr>
                              </table>
                             </div>
                           </div>
                         </div>

		                  <!-- 시급관련 -->
		                  <div class="col-xl-4 col-md-10 mb-4">
		                    <div class="card  shadow h-100 py-2">
		                      <div class="card-body">
		
		                      </div>
		                    </div>
		                  </div>
						
					</div><!--끝 왼쪽 4번째 줄  -->
					
				</div><!--끝 왼쪽 -->
				
				
				<!-- 오른쪽 -->
				<div class = "col-xl-3">
					<!-- 오른쪽 1번째 줄  -->
					<div class="row">
						<!-- 로그인관련 -->
		                  <div class="col-xl-12 col-md-10 mb-4">
		                    <div class="card  shadow h-100 py-2">
		                      <div class="card-body">
								<div class="form-group">
								<form class="form-horizontal">
									  <div class="form-group">
									    <label for="inputEmail3" class="col-sm-12 control-label">ID</label>
									    <div class="col-sm-10">
									      <input type="email" class="form-control" id="inputEmail3" placeholder="ID">
									    </div>
									  </div>
									  <div class="form-group">
									    <label for="inputPassword3" class="col-sm-12 control-label">Password</label>
									    <div class="col-sm-10">
									      <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
									    </div>
									  </div>
									  <div class="form-group">
									    <div class="col-sm-offset-2 col-sm-10">
									      <div class="checkbox">
									        <label>
									          <input type="checkbox"> Remember me
									        </label>
									      </div>
									    </div>
									  </div>
									  <div class="form-group">
									    <div class="col-sm-offset-2 col-sm-10">
									      <button type="submit" class="btn btn-primary ">Sign in</button>
									    </div>
									  </div>
									</form>
  								</div>
		                      </div>
		                    </div>
		                  </div>
					</div><!--끝 오른쪽 1번째 줄  -->
					
					<!-- 오른쪽 2번째 줄  -->
					<div class="row">
						<!-- 순위관련 -->
		                  <div class="col-xl-12 col-md-10 mb-4">
		                    <div class="card  shadow h-100 py-2">
		                      <div class="card-body">
									<table class="table table-hover">
			                            <thead>
			                              TOP 공고글
			                            </thead>
			                            <tr>
			                              <td>1</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            <tr>
			                              <td>2</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            <tr>
			                              <td>3</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            <tr>
			                              <td>4</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            <tr>
			                              <td>5</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            <tr>
			                              <td>6</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            <tr>
			                              <td>7</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            <tr>
			                              <td>8</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            <tr>
			                              <td>9</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            <tr>
			                              <td>10</td>
			                              <td><a href="#">글 제목</a></td>
			                            </tr>
			                            
			                          </table>
		                      </div>
		                    </div>
		                  </div>
					</div><!--끝 오른쪽 2번째 줄  -->
				
				</div><!--끝 오른쪽 -->
			
			</div><!-- 끝 main 본문을 한 줄로 묶기 -->	
			</div><!-- 끝 main 본문  -->
   		</div><!-- 끝 main -->
   		<!-- footer -->
		<%@ include file="./footer.jsp" %>
   </div><!-- 끝 content wrapper -->
</div><!-- 끝  wrapper -->
</body>
</html>