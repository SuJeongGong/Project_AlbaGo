<%@page import="com.spring.ex.dto.BoardCommunity"%>
<%@page import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@page import="com.spring.ex.dto.BoardResume"%>
<%@page import="com.spring.ex.dto.Volunteer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Resume"%>
<%@page import="com.spring.ex.dto.Individual"%>
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
    <title>개인상세페이지</title>
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
					<%
						Individual individual = (Individual)request.getAttribute("individual");
					
						String id = individual.getIndividual_id();
				    	String password=individual.getPassword();
						String name = individual.getName();
						String birth = individual.getBirth().split(" ")[0];;
						String gender = individual.getGender();
						String date = individual.getDate().split(" ")[0];;//가입날짜
						String education = individual.getEducation();
						String phone = individual.getPhone();
						
					%>
                <!-- main 본문  -->
                <!-- 회원정보시작  -->
               <div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">개인 회원 정보</h1>
                    </div>
                    <!-- main 본문을 한 줄로 묶기 -->
                    <div class="row">
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">회원 정보

                                </h6>
                            </div>
                            <div class="card-body">
                            <!-- 회원정보 form 시작 -->
                            <form id="info" action="" >
                                <table class="table table-bordered ">
	               			<tr>
	               				<th>아이디</th>
	               				<td><input type="text" name ="id" id ="id" value="<%=id%>" ></td>
	               			</tr>
	               			<tr>
	               				<th>비밀번호</th>
	               				<td><input type="text" name ="password" id ="password" value="<%=password%>" ></td>
	               			</tr>
	               			<tr>
	               				<th>이름</th>
	               				<td><input type="text" class="form-control" name = "name" id="name" value="<%=name%>"></td>
	               			</tr>
	               			<tr>
	               				<th>성별</th>
	               				<td><input type="text" class="form-control" name = "gender" id="gender" value="<%=gender%>"></td>
	               			</tr>
	               			<tr>
	               				<th>연락처</th>
	               				<td><input type="text" class="form-control" name = "phone" id="phone" value="<%=phone%>"></td>
	               			</tr>
	               			<tr>
	               				<th>생년월일</th>
	               				<td><input type="text" class="form-control" name = "birth" id="birth" value="<%=birth%>"></td>
	               			</tr>
	               			<tr>
	               				<th>최종학력</th>
	               				<td><input type="text" class="form-control" name = "education" id="education" value="<%=education%>"></td>
	               			</tr>
	               			<tr>
	               				<th>가입날짜</th>
	               				<td><input type ="text" name ="date" id ="date" value="<%=date%>"></td>
	               			</tr>
	               			<tr>
	               				<th>관리자</th>
	               				<td>
                                    <a class='btn btn-info btn-xs' href="#">
                                    <span class="glyphicon glyphicon-edit"></span>정보 수정</a> 
                                    <a href="#" class="btn btn-danger btn-xs">
                                    <span class="glyphicon glyphicon-remove"></span>계정 삭제</a>
                                </td>
	               			</tr>
	               		</table>
                            </form>
                            </div>
                        </div>
                        
			<!-- ################################# -->     
			                   
						<!-- 이력서 관리 -->
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">
                                	이력서 관리
                                </h6>
                            </div>
                            <div class="card-body">
                            <!-- 이력서 관리 form 시작 -->
                            <form id="resume" action="">
                                <table class="table table-striped custab">
                                    <thead>
                                        <!-- 제목 -->
				
								       <tr>
                                            <th class="text-center" style="width:30%">제목</th>
                                            <th class="text-center">작성 날짜</th>
                                            <th class="text-center">상세보기</th>
                                            <th class="text-center">관리</th>
                                        </tr>
                                    </thead>
									<tbody>
                                   <%
									ArrayList<Resume> resume = (ArrayList) request.getAttribute("resume");
					                  for (int i = 0; i < resume.size(); i++) {
					                     Resume list = resume.get(i);
					                     String title =list.getTitle();
					                     String resume_date=list.getDate();
					                  %>  
										<tr>
                                        <td class="text-center"><%=title%></td>
                                        <td class="text-center"><%=resume_date%></td>
                                        <td class="text-center">   
                                        	<a  href="#" class="btn btn-secondary btn-xs"> <span class="glyphicon glyphicon-edit"></span> 상세보기</a> 
                                    	</td>
                                        <td class="text-center">
                                        <a  href="#" class="btn btn-info btn-xs"> <span class="glyphicon glyphicon-edit"></span> 수정</a> 
                                        <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a>
                                        </td>
                                    </tr>
                                    <%} %>
                          
								    </tbody>
                                </table>
                                </form>
                            </div>
                        </div>
                    </div>
			<!-- ################################# -->     
			                   
					<!-- 지원한 알바 -->
                    <div class="row">
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">
                                	지원한 알바
                                </h6>
                            </div>
                            <div class="card-body">
                              <!-- 지원한 알바 form 시작 -->
                            <form id="apply" action="">
                       
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <!-- 제목 -->
                                        <tr>

                                            <th class="text-center" style="width:20%">공고글 제목</th>
                                            <th class="text-center" style="width:15%">기업이름</th>
                                            <th class="text-center" style="width:20%">사용한 이력서 제목</th>
                                            <th class="text-center" style="width:10%">지원날짜</th>
                                            <th class="text-center" style="width:10%">지원결과</th>
                                            <th class="text-center" style="width:09%">지원취소</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                      					                    
                                         <%
										ArrayList<Volunteer> volunteers = (ArrayList) request.getAttribute("volunteers");
										for (int i = 0; i < volunteers.size(); i++) {
											Volunteer volunteer = volunteers.get(i);
			             		
			                        		int volunteer_id = volunteer.getVolunteer_id();
											String title = volunteer.getBoard_recruit_title();
											String enterprise_id=volunteer.getEnterprise_id();
											String resume_title = volunteer.getResume_title();
											String volunteer_date = volunteer.getDate().split(" ")[0];
											String result = volunteer.getResult();
											
										%>  
										<tr>
                                            <td class="text-center"><a href="#"><%= title %></td>
                                            <td class="text-center"><%= enterprise_id %></td>
                                            <td class="text-center"><%= resume_title %></td>
                                            <td class="text-center"><%= volunteer_date %></td>
                                            <td class="text-center"><%= result %></td>
                                            <td class="text-center"><button type="submit" class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                                        </tr>
                                        <%} %>

                                      
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </div>
                
                	<!-- ################################# -->     
			                   
					<!-- 인재 게시판 작성글 알바 -->
                <div class="row">
                    <div class="card col-xl-12 shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">인재 게시판 작성글

                            </h6>
                        </div>
                        <div class="card-body">
                        <form id="resumeWrite" action="">
                               <table class="table table-striped">
                                <thead>
                                
                                    <tr class="text-center">
                                        <th>글 제목</th>
                                        <th>사용한이력서제목</th>
                                        <th>메모</th>
                                        <th>작성날짜</th>
                                        <th>관리</th>
                                    </tr> 
                           
                               
                                </thead>
                                <tbody>         
                                
                                
                                <%
										ArrayList<BoardResume> resumewrite = (ArrayList) request.getAttribute("resumewrite");
										for (int i = 0; i < resumewrite.size(); i++) {
											BoardResume list = resumewrite.get(i);
			             						
											String title = list.getBoard_resume_title();
											String resume_title = list.getResume_title();
											String memo = list.getMemo();
											String resume_date=list.getDate().split(" ")[0];
											
										%>  
                                    <tr class="text-center">
                                        <td><%=title %></td>
                                        <td><a href="#"><%=resume_title %></a></td>
                                        <td><%=memo %></td>
                                        <td><%=resume_date %></td>
                                        <td>   
                                        <input type="submit" value="삭제" class="btn py-1 px-1 btn-danger">
                                      	</td>
                                    </tr>
                                        <%
                                    }
                                    %>
                                </tbody>
                            </table>
                            </form>
                        </div>
                    </div>
                    
                   <!-- ################################# -->     
					<!-- 커뮤니티 게시판 작성글 -->
                    <div class="card col-xl-12 shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">커뮤니티 게시판 작성글
                            </h6>
                        </div>
                        <div class="card-body">
           				<form id="communityWrite" action="">
             
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    	<th>글제목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>관리</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
  
                                <%
										ArrayList<BoardCommunity> communitys = (ArrayList) request.getAttribute("communitys");
										for (int i = 0; i < communitys.size(); i++) {
											BoardCommunity community = communitys.get(i);
			             						
											String title = community.getTitle();
											String community_name = community.getName();
											String community_date=community.getDate().split(" ")[0];
											
										%>  
                                    <tr class="text-center">
                                    	<td style="width:30%"><a href="#"><%=title %></td>
                                        <td style="width:20%"><%=community_name%></td> 
                                        <td style="width:20%"><%=community_date%></td>
                                        <td style="width:10%"> 
                                            <input type="submit" value="삭제" class="btn py-1 px-1 btn-danger">
                                        </td>
                                    </tr>
									<%} %>
                                    
                                </tbody>
                            </table>
                        </form>
                        </div>
                    </div>
                </div>
            </div><!-- 끝 main 본문  -->
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