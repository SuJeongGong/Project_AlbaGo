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
					
						String individual_id = individual.getIndividual_id();
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
                         	<form action="<%=request.getContextPath() %>/admin/individual_detail/update?<%=individual_id%>"name="individual"  class="col-xl-12" >
                                <table class="table table-bordered ">
	               			<tr>
	               				<th>아이디</th>
	               				<td><input type="hidden" name ="individual_id" value="<%=individual_id%>" ><%=individual_id%></td>
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
	               					<button class="btn btn-info edit" type="submit" aria-label="ASettings"> 정보 수정</button> 
					
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
						<script>
						function deleteResume(individual_id,resume_id) {
							console.log(individual_id,resume_id);//a,2
							$.ajax({
								url : "./deleteResume",
								method : "GET",
								data : {
									individual_id : individual_id,
									resume_id : resume_id
								
								},
								success :function(resa){
									if(res>=1){
										alert("삭제완료");

										 $("#resa").load(window.location.href + " #resa");
									}else{
										alert("실패")
									}
								}
							});
						}
						</script>
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">
                                	이력서 관리
                                </h6>
                            </div>
                            <div class="card-body">
                            <!-- 이력서 관리 form 시작 -->
                            <form >
                                <table class="table table-striped custab" id="resa">
                                    <thead>
                                        <!-- 제목 -->
				
								       <tr>
                                            <th class="text-center" style="width:30%">제목</th>
                                            <th class="text-center">작성 날짜</th>
                                            <th class="text-center">상세보기</th>
                                            <th class="text-center">관리</th>
                                        </tr>
                                    </thead>
									<tbody >
                                   <%
									ArrayList<Resume> resume = (ArrayList) request.getAttribute("resume");
					                  for (int i = 0; i < resume.size(); i++) {
					                     Resume list = resume.get(i);
					                     String title =list.getTitle();
					                     String resume_date=list.getDate();
					                     int resume_id=list.getResume_id();
					                     String id=list.getIndividual_id();
					                  %>  
										<tr >
                                        <td class="text-center"><%=title%></td>
                                        <td class="text-center"><%=resume_date%></td>
                                        <td class="text-center">   
                                        <a  href="<%=request.getContextPath()%>/individual/profile/content?resume_id=<%=resume_id%>" class="btn btn-secondary btn-xs"> <span class="glyphicon glyphicon-edit"></span> 상세보기</a> 
                                    	</td>
                                        <td class="text-center">
                                        <button type="button" class="btn btn-outline-danger" onclick="deleteResume('<%=id%>',<%=resume_id%>)">삭제</button>
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
			         <script>
					function deleteVolunteer(individual_id,volunteer_id) {
					console.log(individual_id,volunteer_id);
					$.ajax({
							url : "./deleteVolunteer",
							method : "GET",
							data : {
								volunteer_id:volunteer_id
							},
							success :function(res){
								if(res>=1){
									alert("결과 저장 완료");
					
									 $("#res").load(window.location.href + " #res");
								}else{
									alert("사용실패")
								}
							}
						});
					}          
					
					</script>
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
                            <form>
                       
                                <table class="table table-bordered" id="res" width="100%" cellspacing="0">
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
											String enterprise_name=volunteer.getEnterprise_name();
											String resume_title = volunteer.getResume_title();
											String volunteer_date = volunteer.getDate().split(" ")[0];
											String result = volunteer.getResult();
											int board_recruit_id=volunteer.getBoard_recruit_id();
											String individual_id_volunteer=volunteer.getIndividual_id();
											
											if(result==null){
												result="결과 없음";
											}
								
												
										%>  
										<tr>
                                            <td class="text-center"><a href="<%=request.getContextPath()%>/recruit/content?board_recruit_id=<%=board_recruit_id%>"><%= title %></td>
                                    
                                            <td class="text-center"><%= enterprise_name %></td>
                                            <td class="text-center"><%= resume_title %></td>
                                            <td class="text-center"><%= volunteer_date %></td>
                                            <td class="text-center"><%= result %></td>
                                            <td class="text-center"><button type="button" class="btn btn-sm btn-primary btn-cancel" onclick="deleteVolunteer('<%=individual_id_volunteer %>',<%=volunteer_id%>)">지원취소</button></td>
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
											int board_resume_id=list.getBoard_resume_id();
											
										%>  
                                    <tr class="text-center">
                                        <td><a href="<%=request.getContextPath()%>/resume/content?board_resume_id=<%=board_resume_id%>"><%=title %></a></td>
                                        <td><%=resume_title %></td>
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
											int community_id=community.getCommunity_id();
													
										%>  
                                    <tr class="text-center">
                                    	<td style="width:30%"><a href="<%=request.getContextPath()%>/community/content?community_id=<%=community_id%>"><%=title %></td>
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