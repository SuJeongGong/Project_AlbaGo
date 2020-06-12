<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>인재 글 보기</title>
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
                        <h1 class="h3 mb-0 text-gray-800">인재 글 보기</h1>
                    </div>
                    <div class="row">
                        <!--  실제 내용 삽입 -->
                        <div class="card shadow mb-4">

                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-body p-0">

                                                <!-- 이력서 등록한다 -->
                                                <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                                                    <div class="col" style="text-align: center;">
                                                        <h4>믿고 맡기실 수 있는 인재입니다.</h4>
                                                    </div>
                                                </div>
                                                <!-- 개인기본정보 -->
                                                <div class="row p-5">



                                                    <!-- ◆개인기본정보 -->
                                                    <div>
                                                        <p class="font-weight-bold mb-6">◆
                                                            개인기본정보&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가입
                                                            시 등록한 개인정보를 한번 더
                                                            확인해주세요.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button>회원정보수정</button>
                                                        </p>
                                                    </div>

                                                    <!-- 사진 이름 나이 휴대폰 이메일 등 -->
                                                    <div class="col-md-6">
                                                        <img src="http://via.placeholder.com/200x250?text=picture">
                                                    </div>

                                                    <div class="col-md-6 text-right">
                                                        <p>
                                                        <pre><strong>김경민</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;남자24세&nbsp;/&nbsp;1997년생</pre>
                                                        </p>
                                                        <p class="text-muted">
                                                            휴대폰&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;010-2782-****
                                                        </p>
                                                        <p class="text-muted">
                                                            이메일&nbsp;&nbsp;&nbsp;&nbsp;kyungmin@google.com</p>
                                                        <p class="text-muted">
                                                            주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;경기도
                                                            의정부시 </p>
                                                    </div>
                                                </div>

                                                <hr class="my-5">

                                                <div class="row pb-5 p-5">
                                                    <div class="col">
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 희망근무조건</p>
                                                        </div>

                                                        <div class="card"
                                                            style="float:left; width:20%; padding:10px; height:170px;">
                                                            <div class="card-body" style="text-align:center">
                                                                <h5 class="card-title">근무기간</h5>
                                                                <h7 class="card-subtitle mb-2 text-muted">
                                                                    <br /><br />기간무관</h6>
                                                            </div>
                                                        </div>
                                                        <div class="card"
                                                            style="float:left; width:20%; padding:10px; height:170px;">
                                                            <div class="card-body" style="text-align:center">
                                                                <h5 class="card-title">근무요일</h5>
                                                                <h7 class="card-subtitle mb-2 text-muted">
                                                                    <br /><br />요일무관</h6>
                                                            </div>
                                                        </div>
                                                        <div class="card"
                                                            style="float:left; width:20%; padding:10px; height:170px;">
                                                            <div class="card-body" style="text-align:center">
                                                                <h5 class="card-title">근무시간</h5>
                                                                <h7 class="card-subtitle mb-2 text-muted">
                                                                    <br /><br />시간무관</h6>
                                                            </div>
                                                        </div>
                                                        <div class="card"
                                                            style="float:left; width:20%; padding:10px; height:170px;">
                                                            <div class="card-body" style="text-align:center">
                                                                <h5 class="card-title">희망지역</h5>
                                                                <h7 class="card-subtitle mb-2 text-muted">경기 고양시 덕양구/
                                                                    고양시 일산동구</h6>
                                                            </div>
                                                        </div>
                                                        <div class="card"
                                                            style="float:left; width:20%; padding:10px; height:170px;">
                                                            <div class="card-body" style="text-align:center">
                                                                <h5 class="card-title">희망직종</h5>
                                                                <h7 class="card-subtitle mb-2 text-muted">
                                                                    <br />편의점/음식점/레스토랑</h6>
                                                            </div>
                                                        </div>


                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p>&nbsp;</p>
                                                            <p class="font-weight-bold mb-4">◆
                                                                학력&nbsp;&nbsp;<sub>최종학력&nbsp;&nbsp;&nbsp;대학(2,3)년
                                                                    재학</sub></p>
                                                            <hr class="my-5">
                                                        </div>

                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆
                                                                경력&nbsp;&nbsp;<sub>총경력&nbsp;&nbsp;&nbsp;3년
                                                                    2개월</sub></p>
                                                            <hr class="my-5">
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- 이력서 작성 부분 -->
                                                <div class="row pb-5 p-5">
                                                    <div class="col">

                                                        <!-- 이력서 제목 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 이력서 제목</p>
                                                            <p class="form-control">믿고 맡기실 수 있는 인재입니다.</p>
                                                        </div>

                                                        <!-- 장단점 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 장점 º 단점</p>
                                                            <p class="form-control">강인한 체력과 인사성이 바르고 꾸준히 성실합니다.</p>
                                                        </div>

                                                        <!-- 경럭사항 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 경력사항</p>
                                                            <p class="form-control">편의점, 음식점, 홀, 서빙등 많은 일을 해보았습니다.</p>
                                                        </div>

                                                        <!-- 하고싶은말 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 하고 싶은 말</p><textarea
                                                                cols=121 rows=5 class="form-control"
                                                                style="border-radius:0px">사랑합니다.</textarea>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
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