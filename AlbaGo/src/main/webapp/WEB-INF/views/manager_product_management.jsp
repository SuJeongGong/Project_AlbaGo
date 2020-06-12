<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>상품관리</title>
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../manager_Sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <div id="content">
                <!-- Topbar -->
                <%@ include file="../manager_topbar.jsp" %>

                <!-- main 본문  -->
                <div class="container-fluid">
                    <!-- 요기다 작성  -->

                    <div class="container mb-5 mt-5">
                        <div class="pricing card-deck flex-column flex-md-row mb-3">
                            <div class="card card-pricing text-center px-3 mb-4">
                                <span
                                    class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">아이템(UP)</span>
                                <div class="bg-transparent card-header pt-4 border-0">
                                    <h1 class="h4 font-weight-normal text-primary text-center mb-0"
                                        data-pricing-value="15"><input type="text" placeholder="300,0000"
                                            size="7"></input>원
                                        <span class="h6 text-muted ml-2">/+5개</span></h1>
                                </div>
                                <div class="card-body pt-0">
                                    <ul class="list-unstyled mb-4">
                                        <input type="text" cols=121 rows=5 class="form-control" style="border-radius:0px"
                                            placeholder="게시판 글을 상단에 위치하게끔 하는 아이템 입니다."></input>
                                    </ul>
                                    <a class="btn btn-info edit" href="path/to/settings" aria-label="Settings">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true">수정</i>
                                    </a>
                                    <a class="btn btn-danger btn-xs" href="path/to/settings" aria-label="Settings">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                                    </a>
                                </div>
                            </div>
                            <div class="card card-pricing popular shadow text-center px-3 mb-4">
                                <span
                                    class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">게시글
                                    갯수</span>
                                <div class="bg-transparent card-header pt-4 border-0">
                                    <h1 class="h4 font-weight-normal text-primary text-center mb-0"
                                        data-pricing-value="30"><input type="text" placeholder="300,0000"
                                            size="7"></input>원
                                        <span class="h6 text-muted ml-2">/+5개</span></h1>
                                </div>
                                <div class="card-body pt-0">
                                    <ul class="list-unstyled mb-4">
                                        <input type="text" cols=121 rows=5 class="form-control" style="border-radius:0px"
                                            placeholder="한정적인 게시글을 더 쓸 수 있는 아이템입니다."></input>
                                    </ul>
                                    <a class="btn btn-info edit" href="path/to/settings" aria-label="Settings">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true">수정</i>
                                    </a>
                                    <a class="btn btn-danger btn-xs" href="path/to/settings" aria-label="Settings">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                                    </a>
                                </div>
                            </div>
                            <div class="card card-pricing text-center px-3 mb-4">
                                <span
                                    class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">이력서
                                    열람</span>
                                <div class="bg-transparent card-header pt-4 border-0">
                                    <h1 class="h4 font-weight-normal text-primary text-center mb-0"
                                        data-pricing-value="45">
                                        <input type="text" placeholder="300,0000" size="7"></input>원
                                        <span class="h6 text-muted ml-2">/+5개</span></h1>
                                </div>
                                <div class="card-body pt-0">
                                    <ul class="list-unstyled mb-4">
                                        <input type="text" cols=121 rows=5 class="form-control" style="border-radius:0px"
                                            placeholder="기업에 맞는 이력서를 편하게 열람할 수 있는 아이템입니다."></input>
                                    </ul>
                                    <a class="btn btn-info edit" href="path/to/settings" aria-label="Settings">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true">수정</i>
                                    </a>
                                    <a class="btn btn-danger btn-xs" href="path/to/settings" aria-label="Settings">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                                    </a>
                                </div>
                            </div>
                            <div class="card card-pricing text-center px-3 mb-4">
                                <span
                                    class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">광고배너</span>
                                <div class="bg-transparent card-header pt-4 border-0">
                                    <h1 class="h4 font-weight-normal text-primary text-center mb-0"
                                        data-pricing-value="60"><input type="text" placeholder="300,0000"
                                            size="7"></input>원
                                        <span class="h6 text-muted ml-2">/+5개</span></h1>
                                </div>
                                <div class="card-body pt-0">
                                    <ul class="list-unstyled mb-4">
                                        <input type="text" cols=121 rows=5 class="form-control" style="border-radius:0px"
                                            placeholder="배너를 메인에 위치하는 아이템입니다."></input>
                                    </ul>
                                    <a class="btn btn-info edit" href="path/to/settings" aria-label="Settings">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true">수정</i>
                                    </a>
                                    <a class="btn btn-danger btn-xs" href="path/to/settings" aria-label="Settings">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div style="float:right">
                            <a class="btn btn-info edit" href="path/to/settings" aria-label="Settings">
                                <i class="fa fa-pencil-square-o" aria-hidden="true">추가
                                </i>
                            </a>
                        </div>
                    </div>


                </div><!-- 끝 main 본문  -->
            </div><!-- 끝 main -->
            <!-- footer -->
            <%@ include file="../manager_footer.jsp" %>
        </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>