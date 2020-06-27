<%@page import="com.spring.ex.dto.BoardResume"%>
<%@page import="java.util.ArrayList"%>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    function deleteResumes() {
    	var boardresume_ids = [];
    	$("input[name='boardresume_id']:checked").each(function(){
    		if(this.checked){
    			console.log($(this).val());
    			boardresume_ids.push($(this).val());
    			console.log($(this).val());
    		}
    	})
    	
    	$.ajax({
    		url : "./deleteBoardResumes",
    		method : "GET",
    		data : {
    			boardresume_ids: boardresume_ids
    		},
    		success :function(res){
    			if(res=="성공"){
    				alert("삭제 성공");
    			}else{
    				alert("삭제 실패");
    			}
    		}
    	});
    }
    </script>
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

                                        <td><input type="text" name="date" style="width: 150px;">&nbsp;&nbsp; ~
                                            &nbsp;&nbsp;<input type="text" name="date" style="width: 150px;"> 
                                            <input type="submit" value="오늘" class="btn py-1 px-1 btn-primary">&nbsp;
                                            <input type="submit" value="1주일" class="btn py-1 px-1 btn-primary">&nbsp;
                                            <input type="submit" value="1개월" class="btn py-1 px-1 btn-primary">
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>근무기간 </th>
                                        <th>근무요일</th>
                                    </tr>
                                    <tr>
                                        <td style="width:500px">
                                            <label class="checkbox-inline2">
                                                <input type="checkbox" id="term1" value="option1">1주일 이하
                                            </label>
                                            <label class="checkbox-inline2">
                                                <input type="checkbox" id="term2" value="option2">1개월
                                            </label>
                                            <label class="checkbox-inline2">
                                                <input type="checkbox" id="term3" value="option3">3개월~6개월
                                            </label>
                                            <label class="checkbox-inline2">
                                                <input type="checkbox" id="term4" value="option4"> 1년 이상
                                            </label>
                                            <label class="checkbox-inline2">
                                                <input type="checkbox" id="term5" value="option5"> 기간협의
                                            </label>
                                        </td>


                                        <td style="width:500px">
                                            <label class="checkbox-inline3">
                                                <input type="checkbox" id="term1" value="option1">월
                                            </label>
                                            <label class="checkbox-inline3">
                                                <input type="checkbox" id="term2" value="option2">화
                                            </label>
                                            <label class="checkbox-inline3">
                                                <input type="checkbox" id="term3" value="option3">수
                                            </label>
                                            <label class="checkbox-inline3">
                                                <input type="checkbox" id="term4" value="option4">목
                                            </label>
                                            <label class="checkbox-inline3">
                                                <input type="checkbox" id="term5" value="option5">금
                                            </label>
                                            <label class="checkbox-inline3">
                                                <input type="checkbox" id="term5" value="option5">토
                                            </label>
                                            <label class="checkbox-inline3">
                                                <input type="checkbox" id="term5" value="option5">일
                                            </label>
                                        </td>
                                    </tr>
                                    
                                    <th>성별</th>
                                    <th>학력</th>
                                    <th>검색</th>
                                    <th></th>

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
                                            </select> </td>
                                            
                                        <td><select name="" style="width: 100px;">
                                                <option value="0">전체</option>
                                                <option value="1">작성자</option>
                                                <option value="2">제목</option>
                                            </select>
                                            <input type="text" name="time" style="width: 350px;">
                                            <input type="submit" value="검색" class="btn py-1 px-1 btn-primary">
                                        </td>
                                        
                                    </tr>
                                </table>
                            </div>
                        </div>


                        <div class="card shadow mb-3">
                            <div>
                                <div class="card card-stats" style="float:left; width:33%; padding:10px;">
                                    <div class="card-header card-header-warning card-header-icon">
                                        <div class="card-icon">
                                            <i class="material-icons">전체 인재</i>
                                        </div>
                                        <h3 class="card-title" id="allcount_resume" name="allcount_resume"><%=request.getAttribute("allcount_resume")%><small>개</small>
                                        </h3>
                                    </div>

                                </div>
                                <div class="card card-stats" style="float:left; width:33%; padding:10px;">
                                    <div class="card-header card-header-warning card-header-icon">
                                        <div class="card-icon">
                                            <i class="material-icons">오늘의 인재</i>
                                        </div>
                                        <h3 class="card-title" id="todaycount_resume"><%=request.getAttribute("todaycount_resume")%><small>개</small></h3>
                                    </div>

                                </div>
                                <div class="card card-stats" style="float:left; width:33%; padding:10px;">
                                    <div class="card-header card-header-warning card-header-icon">
                                        <div class="card-icon">
                                            <i class="material-icons">어제의 인재</i>
                                        </div>
                                        <h3 class="card-title" id="yesterdaycount_resume"><%=request.getAttribute("yesterdaycount_resume")%><small>개</small></h3>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">

                            <br />
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <button type="submit" onclick="deleteResumes()" class="btn py-1 px-1 btn-danger"
                                            style="float: right;">삭제</button>
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
                                    <%
                                    ArrayList<BoardResume> boardresumes = (ArrayList)request.getAttribute("boardresumes");
                                    for (int i=0; i<boardresumes.size(); i++) {
                                    	BoardResume list = boardresumes.get(i);
                                    	int boardresume_id = list.getBoard_resume_id();
                                    	String boardresume_date = list.getDate().split(" ")[0];
                                    	String boardresume_title = list.getBoard_resume_title();
                                    	String individual_id = list.getIndividual_id();
                                    	
                                    %>
                                        <tr>
                                            <td><input type='checkbox' class='memberChk' name = "boardresume_id" value="<%=boardresume_id %>"
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td><%=boardresume_id %></td>
                                            <td><%=boardresume_date %></td>
                                            <td><a href="<%=request.getContextPath() %>/resume/list?board_resume_id=<%=boardresume_id%>"><%=boardresume_title%></a></td>
                                            <td><%=individual_id %></td>
                                            <td>신입</td>
                                            <td>전국</td>
                                        </tr>
                                    <%} %>
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