<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<style>
    thead th {
        border-bottom: 1px solid #444444;
        padding: 10px;
        text-align: center;
        background-color: #CCCCCC;
    }
</style>

<head>
    <meta charset="UTF-8">
    <title>공고등록</title>
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../serve/sidebar.jsp" %>



        <!--탭을 만듭니다-->

        <div class="container">
            <br>
            <h1>공고보기</h1>
            <hr>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col" style="background-color=black">모집조건</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row" style="width:12%">마감일</th>
                        <td>2020.06.04</td>
                    </tr>
                    <tr>
                        <th scope="row">인원</th>
                        <td>0명(인원미정)</td>
                    </tr>
                    <tr>
                        <th scope="row">성별</th>
                        <td>무관</td>
                    </tr>
                    <tr>
                        <th scope="row">연령</th>
                        <td>무관</td>
                    </tr>
                    <tr>
                        <th scope="row">학력</th>
                        <td>대학(2,3년제)졸업 이상</td>
                    </tr>
                </tbody>
            </table>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">근무조건</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row" style="width:12%">급여</th>
                        <td>시급 10,000원</td>
                    </tr>
                    <tr>
                        <th scope="row">근무기간</th>
                        <td>1주일 이하</td>
                    </tr>
                    <tr>
                        <th scope="row">근무요일</th>
                        <td>요일협의</td>
                    </tr>
                    <tr>
                        <th scope="row">근무시간 </th>
                        <td>시간협의</td>
                    </tr>

                    <tr>
                        <th scope="row">업직종</th>
                        <td>유통,판매 기타</td>
                    </tr>
                    <tr>
                        <th scope="row">고용형태</th>
                        <td>알바</td>
                    </tr>
                </tbody>
            </table>

            <div class="container show-grid">
                <div class="row">
                    <div class="col"><br>
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#qwe">근무지역</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#close">채용기업정보</a>
                            </li>
                        </ul>
                    </div>
                </div>


                <!--공고지원자관리 밑에 탭 3개-->
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="qwe"> <br>
                        <p>근무지역</p><br>
                        <img src="C:\Users\이예슬\Desktop\startbootstrap-sb-admin-2-gh-pages\startbootstrap-sb-admin-2-gh-pages\img\location.jpg"
                            alt="location">
                        경기도 의정부시 가능동 서부로 545


                    </div>
                    <div class="tab-pane fade" id="close"><br>

                        <span style="color:black"> 점포명 </span><br><br>
                        <p>알파고</p>
                        <span style="color:black"> 대표자 </span>
                        공수정 <br>
                        <span style="color:black"> 회사주소 </span>
                        경기도 의정부시 가능동 서부로 545<br>
                        <span style="color:black"> 사업내용 </span>알바고 판매


                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value=" /vendor/jquery/jquery.min.js" />"></script>
    <script src="<c:url value=" /vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

    <!-- Core plugin JavaScript-->
    <script src="<c:url value=" /vendor/jquery-easing/jquery.easing.min.js" />"></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value=" /js/sb-admin-2.min.js" />"></script>

    <!-- Page level plugins -->
    <script src="<c:url value=" /vendor/chart.js/Chart.min.js" />"></script>

    <!-- Page level custom scripts -->
    <script src="<c:url value=" /js/demo/chart-area-demo.js" />"></script>
    <script src="<c:url value=" /js/demo/chart-pie-demo.js" />"></script>
</body>

</html>