<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>전체 인재 정보</title>
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../Sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <div id="content">
                <!-- Topbar -->
                <%@ include file="../Topbar.jsp" %>

                <!-- main 본문  -->
                <div class="container-fluid">
                    <!-- main 본문을 한 줄로 묶기 -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">전체 인재 정보</h1>
                    </div>
                    <div class="row">
                        <!--  실제 내용 삽입 -->

                        <div class="container ">
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="card card-stats">
                                        <div class="card-header card-header-warning card-header-icon"
                                            style="cursor:pointer;" onclick="location.href='www.naver.com';">
                                            <div class="card-icon">
                                                <i class="material-icons">전체 인재</i>
                                            </div>
                                            <h3 class="card-title">280,012<small>명</small>
                                            </h3>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="card card-stats">
                                        <div class="card-header card-header-warning card-header-icon"
                                            style="cursor:pointer;" onclick="location.href='www.naver.com';">
                                            <div class="card-icon">
                                                <i class="material-icons">오늘의 인재</i>
                                            </div>
                                            <h3 class="card-title">896<small>명</small></h3>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="card card-stats">
                                        <div class="card-header card-header-warning card-header-icon"
                                            style="cursor:pointer;" onclick="location.href='www.naver.com';">
                                            <div class="card-icon">
                                                <i class="material-icons">베테랑 인재</i>
                                            </div>
                                            <h3 class="card-title">896<small>명</small></h3>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="card card-stats">
                                        <div class="card-header card-header-icon" style="cursor:pointer;"
                                            onclick="location.href='www.naver.com';">
                                            <div class="card-icon">
                                                <i class="material-icons">대학생 인재</i>
                                            </div>
                                            <h3 class="card-title">896<small>명</small></h3>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div class="row">

                                <div class="col-md-12">
                                    <div>
                                        <p>◆ 전체 인재<br></p>
                                    </div>

                                    <div class="dropdown">
                                        <a class="btn-top" style="margin-right: 15px;" href="#"
                                            class="btn btn-primary btn-success"> 수정일순</a>
                                        <a class="btn-top" style="margin-right: 15px;" href="#"
                                            class="btn btn-primary btn-success"> 등록일순</a>
                                        <a class="btn-top" style="margin-right: 15px;" href="#"
                                            class="btn btn-primary btn-success pull-right">
                                            &nbsp 마감일순</a>
                                        <a class="btn-top" style="margin-left: 15px;" href="#"
                                            class="btn btn-primary btn-success pull-left">
                                            &nbsp 조회수</a>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>이름</th>
                                                    <th>이력서제목</th>
                                                    <th>경력,자격증</th>
                                                    <th>희망지역</th>
                                                    <th>조회수</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        임OO<small>(남/24세)</small>
                                                    </td>
                                                    <td><a href="#">믿음직하고 끈기 있는 알바생입니다.</a></td>
                                                    <td>경력 : 신입</td>
                                                    <td>경기 고양시</td>
                                                    <td>12</td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <hr />
                                        <div style="float: right;">
                                            <a href="#" class="btn btn-primary btn-xs pull-right">글쓰기</a>
                                        </div>

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
                                    </div>

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