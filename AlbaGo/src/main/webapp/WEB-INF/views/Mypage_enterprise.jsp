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
			<!-- main 본문을 한 줄로 묶기 -->
			<div class="d-sm-flex align-items-center justify-content-between mb-4">
            	<h1 class="h3 mb-0 text-gray-800">기업 회원 정보</h1>
       	   	</div>
			<div class="row">
                <div class="card col-xl-6 shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">회원 정보  
                      <a href="#" class="btn btn-primary btn-icon-split"><span class="text">수정</span></a>
                    </h6>
                    
                  </div>
                  <div class="card-body">
                    <div class="text-xs">
                      안전한 정보보호를 위해 연락처 일부만 확인가능하며,<br/> 수정화면에서 정확한 연락처 확인이 가능합니다.<br/><br/>
                    </div>
                    
                    <table>
                      <tr>
                        <td>이름</td>
                        <td>공수정</td>
                      </tr>
                      <tr>
                        <td>이메일</td>
                        <td>avsd@naver.com</td>
                      </tr>
                      <tr>
                        <td>연락처</td>
                        <td>010-****-6425</td>
                      </tr>
                      <tr>
                        <td>주소</td>
                        <td>서울특별시 동대문구 ******</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <div class="card col-xl-6 shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">공고글 관리
                      <a href="#" class="btn btn-primary btn-icon-split"><span class="text">자세히</span></a>
                    </h6>
                  </div>
                  <div class="card-body">
                    <div class="text-xs">
                      공고글 수정을 하고싶다면 자세히 버튼을 눌러주세요<br/> 공고글 관리 화면에서 수정하실수 있습니다.<br/><br/>
                    </div>
                    
                    <table>
                      <tr>
                        <th>제목</th>
                        <th>작성 날짜</th>
                      </tr>
                      <tr>
                        <td>교촌치킨 라이더 구해요</td>
                        <td>2020-05-08</td>
                      </tr>
                      <tr>
                        <td>교촌치킨 주방에서 일하실분</td>
                        <td>2020-05-05</td>
                      </tr>
                    </table>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="card col-xl-6 shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">지원한 인재 목록
                      <a href="#" class="btn btn-primary btn-icon-split"><span class="text">자세히</span></a>
                    </h6>
                  </div>
                  <div class="card-body">
                    <div class="text-xs">
                      지원한 인재 목록을 자세히 보고싶으시면<br />
                      자세히 버튼을 눌러 지원한 인재 페이지로 이동해주세요
                    </div>
                    
                    <table>
                      <tr>
                        <th>지원한 인재 이력서</th>
                        <th>지원 날짜</th>
                      </tr>
                      <tr>
                        <td>열심히 일하겠습니다</td>
                        <td>2020-05-08</td>
                      </tr>
                      <tr>
                        <td>성실한 알바생입니다</td>
                        <td>2020-05-05</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <div class="card col-xl-6 shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">스크랩 인재
                      <a href="#" class="btn btn-primary btn-icon-split"><span class="text">자세히</span></a>
                    </h6>
                  </div>
                  <div class="card-body">
                    <div class="text-xs">
                      스크랩한 인재 목록을 수정하거나 자세히 보고싶으시면<br />
                      자세히 버튼을 눌러 스크랩한 인재 페이지로 이동해주세요
                    </div>
                    
                    <table>
                      <tr>
                        <th>스크랩한 인재 제목</th>
                        <th>스크랩 날짜</th>
                      </tr>
                      <tr>
                        <td>뭐든 시켜만 주십시오!</td>
                        <td>2020-05-18</td>
                      </tr>
                      <tr>
                        <td>미소가 아름다운 인재입니다</td>
                        <td>2020-05-12</td>
                      </tr>
                    </table>
                  </div>
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