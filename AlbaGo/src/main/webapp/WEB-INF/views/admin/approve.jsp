<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>결제승인</title>
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../serve/manager_sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <div id="content">
                <!-- Topbar -->
                <%@ include file="../serve/manager_topbar.jsp" %>

                <!-- main 본문  -->
                <div class="container-fluid">
                    <!-- 요기다 작성  -->

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">결제 승인</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <input type="submit" value="거부" class="btn btn-outline-danger"
                                            style="float: right;">
                                        <input type="submit" value="승인" class="btn btn-outline-primary"
                                            style="float: right;">
                                        <tr>
                                            <th>
                                                <input type="checkbox" class="selectAllMembers" checked=false />
                                            </th>
                                            <th></th>
                                            <th>기업이름</th>
                                            <th>사용기간</th>
                                            <th>등록날짜</th>
                                            <th>담당자이름</th>
                                            <th>승인</th>
                                            <th>거부</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>1</td>
                                            <td>슬 00회사</td>
                                            <td>2020.01.12-2020.01.23</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>2</td>
                                            <td>슬회사</td>
                                            <td>2020.01.12-2020.01.23</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>3</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td4>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>4</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td4>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>5</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td4>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>6</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td4>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>7</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td4>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>8</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td4>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>9</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td4>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>10</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td4>
                                            <td><button type="button" class="btn btn-outline-primary">승인</button></td>
                                            <td><button type="button" class="btn btn-outline-danger">거부</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <script>
                            var selectAll = document.querySelector(".selectAllMembers");
                            selectAll.addEventListener('click', function () {
                                var objs = document.querySelectorAll(".memberChk");
                                for (var i = 0; i < objs.length; i++) {
                                    objs[i].checked = selectAll.checked;
                                };
                            }, false);
                            var objs = document.querySelectorAll(".memberChk");
                            for (var i = 0; i < objs.length; i++) {
                                objs[i].addEventListener('click', function () {
                                    var selectAll = document.querySelector(".selectAllMembers");
                                    for (var j = 0; j < objs.length; j++) {
                                        if (objs[j].checked === false) {
                                            selectAll.checked = false;
                                            return;
                                        };
                                    };
                                    selectAll.checked = true;
                                }, false);
                            } 
                        </script>
                    </div>


                </div><!-- 끝 main 본문  -->
            </div><!-- 끝 main -->
            <!-- footer -->
            <%@ include file="../serve/manager_footer.jsp" %>
        </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>