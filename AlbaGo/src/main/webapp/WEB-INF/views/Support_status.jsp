<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>지원현황</title>
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
                        <h1 class="h3 mb-0 text-gray-800">지원 현황</h1>
                    </div>
                    <div class="row">
                        <!--  실제 내용 삽입 -->

                        <div class="card-body">
                            <div class="table-responsive">

                                <!-- 테이블 -->
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>

                                        <!-- 제목 -->
                                        <tr>
                                            <th style="width:10%">지원일</th>
                                            <th style="width:25%">지원내역</th>
                                            <th style="width:10%">지원방법</th>
                                            <th style="width:10%">열람여부</th>
                                            <th style="width:10%">게재상태</th>
                                            <th style="width:10%">지원상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <!-- 1번째 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                        <!-- 두번째 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                        <!-- 세번째 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                        <!-- 4 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                        <!-- 5 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                        <!-- 6 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                        <!-- 7 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                        <!-- 8 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                        <!-- 9 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                        <!-- 10 -->
                                        <tr>
                                            <td>2008-12-19</td>
                                            <td><a href="#">버거킹</a></td>
                                            <td>온라인지원</td>
                                            <td>미열람</td>
                                            <td>마감</td>
                                            <td><button type="submit"
                                                    class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>

                                    </tbody>
                                </table>

                                <div class="text-center" style="float: left;">
                                    <ul class="pagination">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" tabindex="-1"
                                                aria-disabled="true">Previous</a>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item active" aria-current="page">
                                            <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
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


                    </div><!-- 끝 실제 내용 삽입 -->
                </div><!-- 끝 main 본문  -->
            </div><!-- 끝 main -->
            <!-- footer -->
            <%@ include file="../footer.jsp" %>
        </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>