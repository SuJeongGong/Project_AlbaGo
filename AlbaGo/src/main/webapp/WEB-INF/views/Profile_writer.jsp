<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>이력서 작성</title>
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
                        <h1 class="h3 mb-0 text-gray-800">이력서 작성</h1>
                    </div>
                    <div class="row">
                        <!--  실제 내용 삽입 -->

                        <!-- DataTales Example -->
                        <!-- 파란색 글자 이력서 관리 -->
                        <div class="card shadow mb-4">

                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-body p-0">

                                                <!-- 개인기본정보 -->
                                                <div class="row p-5">

                                                    <!-- ◆개인기본정보 -->
                                                    <div>
                                                        <p class="font-weight-bold mb-4">◆
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

                                                <!-- 이력서 작성 부분 -->
                                                <div class="row pb-5 p-5">
                                                    <div class="col">

                                                        <!-- 이력서 제목 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 이력서 제목</p><input
                                                                type="text" class="form-control"
                                                                style="border-radius:0px" placeholder="이력서 제목">
                                                        </div>

                                                        <!-- 희망 근무지 -->
                                                        <div class="col-xs-4 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 희망 근무지</p><input
                                                                type="text" class="form-control"
                                                                style="border-radius:0px" placeholder="시/군/구">
                                                        </div>

                                                        <!-- 희망 업종직 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 희망 업종직</p><input
                                                                type="text" class="form-control"
                                                                style="border-radius:0px"
                                                                placeholder="키워드를 입력해보세요. ex. 서빙, 맥도날드">
                                                        </div>

                                                        <!-- 장단점 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 장점 º 단점</p><input
                                                                type="text" class="form-control"
                                                                style="border-radius:0px"
                                                                placeholder="키워드를 입력해보세요. ex. 체력, 성실, 인사">
                                                        </div>

                                                        <!-- 경럭사항 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 경력사항</p><input
                                                                type="text" class="form-control"
                                                                style="border-radius:0px"
                                                                placeholder="아르바이트 경험 등 경력사항이 있다면, 입력해보세요. 채용 확률이 올라갑니다.">
                                                        </div>

                                                        <!-- 하고싶은말 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 하고 싶은 말</p><textarea
                                                                cols=121 rows=5 class="form-control"
                                                                style="border-radius:0px"
                                                                placeholder="간단한 자기소개와 각오 한마디를 입력해 주세요."></textarea>
                                                        </div>
                                                    </div>
                                                </div>

                                                <hr class="my-5">

                                                <!-- 공개기간 추가연락처 부분 -->
                                                <div class="row p-5">
                                                    <div class="col">

                                                        <!-- 공개기간 -->
                                                        <div>
                                                            <p class="font-weight-bold mb-4">◆ 공개
                                                                기간&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <input type="radio" name="chk_info"
                                                                    value="90">90일&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <input type="radio" name="chk_info" value="60"
                                                                    checked="checked">60일&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <input type="radio" name="chk_info"
                                                                    value="30">30일&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                                        </div>

                                                        <!-- 추가연락처 -->
                                                        <div>
                                                            <p class="font-weight-bold mb-4">◆ 추가
                                                                연락처&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <input type="checkbox" name="chk_info" value="email"">이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <input type="checkbox" name="chk_info"
                                                                    value="homepage" checked="checked">홈페이지</p>
                                                        </div>

                                                        <!-- 기업에게 하고싶은말 -->
                                                        <div class="col-xs-6 pull-right form-group">
                                                            <p class="font-weight-bold mb-4">◆ 기업에게 전하고 싶은 말</p>
                                                            <textarea cols=121 rows=5 class="form-control"
                                                                style="border-radius:0px"
                                                                placeholder="오전, 오후 둘 다 근무 가능합니다.(오후 6시 이후에만 연락 가능)."></textarea>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- 이력서 등록한다 -->
                                                <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                                                    <div class="col">
                                                        <h4>본 이력서를 인재정보에 등록합니다.</h4>
                                                        <p>⊙ 이력서가 인재정보에 공개되며, 기업으로부터 알바제의를 받을 수 있습니다.</p>
                                                        <p>⊙ 연락처 비공개를 선택하시면 연락처를 제외한 이력서를 공개하며 알바제의만 받을 수 있는 서비스입니다.</p>
                                                    </div>
                                                </div>

                                                <!-- 버튼 -->
                                                <div class="row p-5">
                                                    <div class="pull">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-success btn-filter"
                                                                data-target="save">저장</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- /.container-fluid -->

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