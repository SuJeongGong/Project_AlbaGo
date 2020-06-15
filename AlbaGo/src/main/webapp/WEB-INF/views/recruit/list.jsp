<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>공고글 게시판</title>
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../serve/sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <div id="content">
                <!-- topbar -->
                <%@ include file="../serve/topbar.jsp" %>

                <!-- main 본문  -->
                <div class="container-fluid">
                    <!-- main 본문을 한 줄로 묶기 -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">공고글 게시판</h1>
                    </div>
                    <div class="row">
                        <!--  실제 내용 삽입 -->

 <div class="row">

                                <div class="col-md-12">
                                    <div>
                                        <p>◆ 전체 공고<br></p>
                                    </div>
                                        
                                    <select name="test" style="width:80px;height:30px;" > >
                                        <option>지역</option>
                                        <option>급여</option>

                                        </select>
                                    <input type="text" size="20" id="text_search" placeholder="검색하세요" ></input>
                                
                                            <a href="#" class="btn btn-primary btn-xs pull-right">검색</a>
                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>지역</th>
                                                    <th>공고 제목</th>
                                                    <th>근무날짜</th>
                                                    <th>급여</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>서울</td>
                                                    <td><a href="#">sweet카페 알바 지원해주세요.</a></td>
                                                   
                                                    <td>2020-06-15</td>
                                                    <td>9900원</td>
                                                </tr>
                                                  <tr>
                                                    <td>서울</td>
                                                    <td><a href="#">sweet카페 알바 지원해주세요.</a></td>
                                                
                                                    <td>2020-06-15</td>
                                                    <td>9900원</td>
                                                </tr>
                                                  <tr>
                                                    <td>서울</td>
                                                    <td><a href="#">sweet카페 알바 지원해주세요.</a></td>
                                                   
                                                    <td>2020-06-15</td>
                                                    <td>9900원</td>
                                                </tr>
                                                      <tr>
                                                    <td>서울</td>
                                                    <td><a href="#">sweet카페 알바 지원해주세요.</a></td>
                                               
                                                    <td>2020-06-15</td>
                                                    <td>9900원</td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <hr />
                                        <div class="text-center" style="float: left;">
                                            <ul class="pagination">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="#" tabindex="-1"
                                                        aria-disabled="true">Previous</a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item active" aria-current="page">
                                                    <a class="page-link" href="#">2 <span
                                                            class="sr-only">(current)</span></a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">Next</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div><a href="write" class="btn btn-primary btn-xs pull-right">글쓰기</a>

                                </div>
                            </div>



                    </div><!-- 끝 실제 내용 삽입 -->
                </div><!-- 끝 main 본문  -->
            </div><!-- 끝 main -->
            <!-- footer -->
            <%@ include file="../serve/footer.jsp" %>
        </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>