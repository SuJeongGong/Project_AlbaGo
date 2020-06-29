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
    			if(res>=1){
    				alert("삭제 성공");

  					 $("#res").load(window.location.href + " #res");
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
                                    <th style="width: 700px;">업직종</th>
                                    <th style="width: 400px;">희망지역</th>
                                    <th style="width: 1200px;">성별&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;학력</th>
                                    <tr>
                                    	<form action="<%=request.getContextPath() %>/admin/resume/total" method="get" name="keyword" id="keyword">
                                        <td><select name="individual_category">
                                                <option value="">전체</option>
                                                <option value="외식/음료">외식/음료</option>
                                                <option value="유통/판매">유통/판매</option>
                                                <option value="문화/여가/생활">문화/여가/생활</option>
                                                <option value="서비스">서비스</option>
                                                <option value="사무직">사무직</option>
                                                <option value="고객상담/리서치">고객상담/리서치</option>
                                                <option value="생산/건설/노무">생산/건설/노무</option>
                                                <option value="교육/강사">교육/강사</option>
                                                <option value="디자인">디자인</option>
                                                <option value="운전/배달">운전/배달</option>
                                                <option value="병원/간호/연구">병원/간호/연구</option>
                                                <option value="IT/컴퓨터">IT/컴퓨터</option>
                                            </select></td>

                                        <td><select name="local_category">
                                                <option value="">전국</option>
                                                <option value="서울">서울</option>
                                                <option value="경기">경기</option>
                                                <option value="인천">인천</option>
                                                <option value="부산">부산</option>
                                                <option value="대구">대구</option>
                                                <option value="대전">대전</option>
                                                <option value="경남">경남</option>
                                                <option value="전남">전남</option>
                                                <option value="충남">충남</option>
                                                <option value="광주">광주</option>
                                                <option value="울산">울산</option>
                                                <option value="경북">경북</option>
                                                <option value="전북">전북</option>
                                                <option value="충북">충북</option>
                                                <option value="강원">강원</option>
                                                <option value="제주">제주</option>
                                            </select></td>
										<td>
                                        	<select name="gender">
                                                <option value="">무관</option>
                                                <option value="남자">남자</option>
                                                <option value="여자">여자</option>
                                            </select>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <select name="education">
                                                <option value="">--선택하십시오--</option>
                                                <option value="초등학교 졸업">초등학교 졸업</option>
                                                <option value="중학교 졸업">중학교 졸업</option>
                                                <option value="고등학교 졸업">고등학교 졸업</option>
                                                <option value="2/3년제 졸업">대학교(2, 3년) 졸업</option>
                                                <option value="4년제 졸업">대학교(4년) 졸업</option>
                                            </select>
                                            <button type="submit" class="btn py-1 px-1 btn-primary">&nbsp;검색</button>
                                        </td>
                                        </form>
                                    </tr>
                                    
                                    <th>작성일자</th>
                                    <th></th>                                    
                                    <th>검색</th>

                                    <tr>
                                        <form action="<%=request.getContextPath() %>/admin/resume/day" method="get" name="keyword" id="keyword">
                                    	<td>
                                            <select name="day" style="width:150px;">
                                            	<option value="">--선택하십시오--</option>
                                            	<option value="today">오늘</option>
                                            	<option value="week">일주일</option>
                                            	<option value="month">1개월</option>
                                            </select>
                                            <input type="hidden" name="daysearch">
                                    		<button type="submit" class="btn py-1 px-1 btn-primary">&nbsp;검색</button>
                                    	</td>
                                    	</form>	
                                    	<td></td>
                                    	<form action="<%=request.getContextPath() %>/admin/resume/id" method="get" name="keyword" id="keyword">
                                    	<td><select name="category" style="width: 100px;">
                                                <option value="">전체</option>
                                                <option value="writer">작성자</option>
                                                <option value="title">제목</option>
                                            </select>
                                            <input type="text" name="search" style="width: 350px;">
                                            <button type="submit" class="btn py-1 px-1 btn-primary">검색</button>
                                        </td>
                                    	</form>
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
                                <table class="table" id = "res">
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
                                            <th>업직종</th>                                            
                                            <th>희망지역</th>
                                            <th>성별</th>
                                            <th>학력</th>
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
                                    	String category = list.getCategory();
                                    	String place = list.getPlace();
                                    	String gender = list.getGender();
                                    	String education = list.getEducation();
                                    	
                                    %>
                                        <tr>
                                            <td><input type='checkbox' class='memberChk' name = "boardresume_id" value="<%=boardresume_id %>"
                                                    onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td><%=boardresume_id %></td>
                                            <td><%=boardresume_date %></td>
                                            <td><a href="<%=request.getContextPath() %>/resume/list?board_resume_id=<%=boardresume_id%>"><%=boardresume_title%></a></td>
                                            <td><%=individual_id %></td>
                                            <td><%=category %></td>
                                            <td><%=place %></td>
                                            <td><%=gender %></td>
                                            <td><%=education %></td>
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