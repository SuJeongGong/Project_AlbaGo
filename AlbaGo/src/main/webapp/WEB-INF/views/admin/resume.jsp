<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>인재글관리</title>
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
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
                    <h1 class="h3 mb-2 text-gray-800">인재글 관리</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <!-- Card Header - Accordion -->
                        <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse"
                            role="button" aria-expanded="true" aria-controls="collapseCardExample">
                            <h6 class="m-0 font-weight-bold text-primary">상세정보검색</h6>
                        </a>
                        <!-- Card Content - Collapse -->
                        <div class="collapse show" id="collapseCardExample">
                            <div class="card-body">
                                <table>
                                    <th style="width: 200px;">업직종</th>
                                    <th style="width: 400px;">지역</th>
                                    <th style="width: 900px;">작성일자</th>
                                    <tr>
                                        <td><select name="enterprise_category">
                                                <option value="0">전체</option>
                                                <option value="1">외식/음료</option>
                                                <option value="2">외식/음료</option>
                                                <option value="3">유통/판매</option>
                                                <option value="4">문화/여가/생활</option>
                                                <option value="5">서비스</option>
                                                <option value="6">사무직</option>
                                                <option value="7">고객상담/리서치</option>
                                                <option value="8">생산/건설/노무</option>
                                                <option value="9">교육/강사</option>
                                                <option value="10">디자인</option>
                                                <option value="12">운전/배달</option>
                                                <option value="13">병원/간호/연구</option>
                                                <option value="14">IT/컴퓨터</option>
                                            </select></td>

                                        <td><select name="local_category">
                                                <option value="0">전국</option>
                                                <option value="1">서울</option>
                                                <option value="2">경기</option>
                                                <option value="3">인천</option>
                                                <option value="4">부산</option>
                                                <option value="5">대구</option>
                                                <option value="6">대전</option>
                                                <option value="7">경남</option>
                                                <option value="8">전남</option>
                                                <option value="9">충남</option>
                                                <option value="10">광주</option>
                                                <option value="11">울산</option>
                                                <option value="12">경북</option>
                                                <option value="13">전북</option>
                                                <option value="13">충북</option>
                                                <option value="13">강원</option>
                                                <option value="13">제주</option>
                                            </select></td>

                                        <td><input type="text" name="date">&nbsp;&nbsp; ~
                                            &nbsp;&nbsp;<input type="text" name="date"> <input type="submit" value="오늘"
                                                class="btn py-1 px-1 btn-primary">&nbsp;
                                            <input type="submit" value="1주일" class="btn py-1 px-1 btn-primary">&nbsp;
                                            <input type="submit" value="1개월" class="btn py-1 px-1 btn-primary">
                                        </td>
                                    </tr>
                                    <th>성별</th>
                                    <th>학력</th>

                                    <tr>
                                        <td><select name="">
                                                <option value="0">무관</option>
                                                <option value="1">남자</option>
                                                <option value="2">여자</option>
                                            </select></td>


                                        <td><select name="">
                                                <option value="0">초등학교 졸업</option>
                                                <option value="1">중학교 졸업</option>
                                                <option value="2">고등학교 졸업</option>
                                                <option value="3">대학교(2, 3년) 졸업</option>
                                                <option value="4">대학교(4년) 졸업</option>
                                                <option value="5">대학원 졸업</option>
                                            </select> </td>

                                    </tr>

                                    <th>검색</th>
                                    <tr>
                                        <td><select name="" style="width: 100px;">
                                                <option value="0">전체</option>
                                                <option value="1">작성자</option>
                                                <option value="2">제목</option>
                                            </select></td>
                                        <td><input type="text" name="time" style="width: 450px;">
                                        </td>
                                        <td><input type="submit" value="검색" class="btn py-1 px-1 btn-primary"></td>
                                    </tr>
                                </table>
                            </div>
                        </div>


                        <div class="card shadow mb-3">
                            <div>
                                <div class="card card-stats" style="float:left; width:33%; padding:10px;">
                                    <div class="card-header card-header-warning card-header-icon">
                                        <div class="card-icon">
                                            <i class="material-icons">전체 인재글</i>
                                        </div>
                                        <h3 class="card-title">280,012<small>개</small>
                                        </h3>
                                    </div>

                                </div>
                                <div class="card card-stats" style="float:left; width:33%; padding:10px;">
                                    <div class="card-header card-header-warning card-header-icon">
                                        <div class="card-icon">
                                            <i class="material-icons">오늘의 인재글</i>
                                        </div>
                                        <h3 class="card-title">896<small>개</small></h3>
                                    </div>

                                </div>
                                <div class="card card-stats" style="float:left; width:33%; padding:10px;">
                                    <div class="card-header card-header-warning card-header-icon">
                                        <div class="card-icon">
                                            <i class="material-icons">채용된 인재글</i>
                                        </div>
                                        <h3 class="card-title">896<small>개</small></h3>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">

                            <br />
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <input type="submit" value="삭제" class="btn py-1 px-1 btn-danger"
                                            style="float: right;">
                                        <tr>
                                            <th>
                                                <input type="checkbox" class="selectAllMembers" checked=false />
                                            </th>
                                            <th> </th>
                                            <th>작성일</th>
                                            <th>인재글 제목</th>
                                            <th>작성자</th>
                                            <th>경력</th>
                                            <th>희망지역</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type='checkbox' class='memberChk' checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>1</td>
                                            <td> 2020.01.12-2020.01.23</td>
                                            <td><a href="#">사장님 나빠요</a></td>
                                            <td>송원준</td>
                                            <td>신입</td>
                                            <td>전국</td>
                                        </tr>
                                        <tr>
                                            <td><input type='checkbox' class='memberChk' checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>2</td>
                                            <td> 2020.01.12-2020.01.23</td>
                                            <td><a href="#">사장님 나빠요</a></td>
                                            <td>송원준</td>
                                            <td>신입</td>
                                            <td>전국</td>
                                        </tr>
                                        <tr>
                                            <td><input type='checkbox' class='memberChk' checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>3</td>
                                            <td> 2020.01.12-2020.01.23</td>
                                            <td><a href="#">사장님 나빠요</a></td>
                                            <td>송원준</td>
                                            <td>신입</td>
                                            <td>전국</td>
                                        </tr>
                                        <tr>
                                            <td><input type='checkbox' class='memberChk' checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>4</td>
                                            <td> 2020.01.12-2020.01.23</td>
                                            <td><a href="#">사장님 나빠요</a></td>
                                            <td>송원준</td>
                                            <td>신입</td>
                                            <td>전국</td>
                                        </tr>
                                        <tr>
                                            <td><input type='checkbox' class='memberChk' checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>5</td>
                                            <td> 2020.01.12-2020.01.23</td>
                                            <td><a href="#">사장님 나빠요</a></td>
                                            <td>송원준</td>
                                            <td>신입</td>
                                            <td>전국</td>
                                        </tr>
                                        <tr>
                                            <td><input type='checkbox' class='memberChk' checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>6</td>
                                            <td> 2020.01.12-2020.01.23</td>
                                            <td><a href="#">사장님 나빠요</a></td>
                                            <td>송원준</td>
                                            <td>신입</td>
                                            <td>전국</td>
                                        </tr>
                                        <tr>
                                            <td><input type='checkbox' class='memberChk' checked=false
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td>7</td>
                                            <td> 2020.01.12-2020.01.23</td>
                                            <td><a href="#">사장님 나빠요</a></td>
                                            <td>송원준</td>
                                            <td>신입</td>
                                            <td>전국</td>
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
                        <br />
                        <hr>
                    </div>
                </div>


                <div class="text-center" style="float: left;">
                    <ul class="pagination">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item active" aria-current="page">
                            <a class="page-link" href="##">2 <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="page-item"><a class="page-link" href="###">3</a></li>
                        <li class="page-item"><a class="page-link" href="####">4</a></li>
                        <li class="page-item"><a class="page-link" href="#####">5</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </div>


            </div>
        </div>
    </div>

    </div>
    <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->



    </div>
    <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>



    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>



    </div><!-- 끝 main 본문  -->
    </div><!-- 끝 main -->
    <!-- footer -->
    <%@ include file="../serve/manager_footer.jsp" %>
    </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>