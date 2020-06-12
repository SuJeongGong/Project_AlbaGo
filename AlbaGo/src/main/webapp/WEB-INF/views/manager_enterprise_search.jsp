<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>기업검색</title>
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

                    <div class="container">

                        <hr />
                        <h1 class="h3 mb-2 text-gray-800">기업 검색</h1>
                        <hr />

                        <div class="row">
                            <div class="col-md-12">
                                <form action="#" method="get">
                                    <div class="input-group">
                                        <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                        <form>
                                            <select name="search">
                                                <option value="name">회원이름</option>
                                                <option value="phone">회원전화번호</option>
                                                <option value="email">회원이메일</option>
                                                <option value="address">회원주소</option>
                                            </select>
                                        </form>
                                        <input class="form-control" id="system-search" name="q" placeholder="Search for"
                                            required>
                                        <span class="input-group-btn">
                                            <button type="submit" class="btn btn-info">검색</button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-12">
                                <table class="table table-list-search">
                                    <thead>
                                        <tr>
                                            <th>회원이름</th>
                                            <th>전화번호</th>
                                            <th>이메일</th>
                                            <th>주소</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>Filter</td>
                                            <td>12-11-2011 11:11</td>
                                            <td>OK</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>It</td>
                                            <td>11-20-2013 08:56</td>
                                            <td>It</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>It</td>
                                            <td>11-20-2013 08:56</td>
                                            <td>It</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>It</td>
                                            <td>11-20-2013 08:56</td>
                                            <td>It</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>It</td>
                                            <td>11-20-2013 08:56</td>
                                            <td>It</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>It</td>
                                            <td>11-20-2013 08:56</td>
                                            <td>It</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>It</td>
                                            <td>11-20-2013 08:56</td>
                                            <td>It</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>It</td>
                                            <td>11-20-2013 08:56</td>
                                            <td>It</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>It</td>
                                            <td>11-20-2013 08:56</td>
                                            <td>It</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Sample</a></td>
                                            <td>$</td>
                                            <td>%</td>
                                            <td>&</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="text-center" style="float: left;">
                                <ul class="pagination">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                    </li>
                                    <li class="page-item active" aria-current="page"><a class="page-link" href="#">1
                                            <span class="sr-only">(current)</span></a></li>
                                    <li class="page-item"><a class="page-link" href="#">2 </a></li>
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


                </div><!-- 끝 main 본문  -->
            </div><!-- 끝 main -->
            <!-- footer -->
            <%@ include file="../manager_footer.jsp" %>
        </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>