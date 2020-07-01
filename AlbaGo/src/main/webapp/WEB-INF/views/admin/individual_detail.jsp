<%@page import="com.spring.ex.dto.Scrap_Individual"%>
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
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

  
</head>


<body>

    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../serve/manager_sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <!-- 계정정지 -->
						<script>
						function changestate(individual_id,result) {
							console.log(individual_id);
							$.ajax({
								url : "./changestate",
								method : "GET",
								data : {
									
									individual_id : individual_id,
									result : result
								
								},
								success :function(res5){
									if(res5>=1){
										alert("계정상태바꾸기");

										 $("#res5").load(window.location.href + " #res5");
									}else{
										alert("실패")
									}
								}
							});
						}
						</script>
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
						int state= individual.getState();
						
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
                         	<form action="<%=request.getContextPath() %>/admin/individual_detail/update"name="individual"  class="col-xl-12" >
                                <table id="res5" class="table table-bordered ">
	               			<tr>
	               				<th>아이디</th>
	               				<td><input type="hidden" name ="individual_id" value="<%=individual_id%>" ><%=individual_id%></td>
	               			</tr>
	               			<tr>
	               				<th>비밀번호</th>
	               				<td><input type="text" class="form-control" name ="password" id ="password" value="<%=password%>" ></td>
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
	               				<td><input type ="hidden" name ="date" id ="date" value="<%=date%>"><%=date%></td>
	               			</tr>
	               			<tr>
                              <th>계정상태</th>
                              <%if(state==1){ %>
                              <td><input type ="hidden" name ="state" id ="state" value="<%=state%>">정상</td>
                              <%} 
                              else{
                     %>
                              <td><input type ="hidden" name ="state" id ="state" value="<%=state%>">정지</td>
                     <%
                        }
                     %>
                           </tr>
	               			<tr>
	               				<th>관리자</th>
	               				<td>
	               					<button class="btn btn-info edit" type="submit" aria-label="ASettings"> 정보 수정</button> 
						 			<button type="button" class="btn btn-danger" onclick="changestate('<%=individual_id%>',0)">계정정지</button>
									<button type="button" class="btn btn-outline-danger" onclick="changestate('<%=individual_id%>',1)">계정정지해제</button>
                                    
                                </td>
	               			</tr>
	               		</table>
                            </form>
                            </div>
                        </div>
                        
			<!-- ################################# -->     
			                   
						<!-- 이력서 관리 -->
						<script>
						function deleteResume(resume_id) {
							console.log(resume_id);//a,2
							$.ajax({
								url : "./deleteResume",
								method : "GET",
								data : {
									
									resume_id : resume_id
								
								},
								success :function(resa){
									if(resa>=1){
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
                                        <button type="button" class="btn btn-danger" onclick="deleteResume(<%=resume_id%>)">삭제</button>
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
					function deleteVolunteer(volunteer_id) {
					console.log(volunteer_id);
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
                              %>  
                              <tr class="text-center">
                                            <td><a href="<%=request.getContextPath()%>/recruit/content?board_recruit_id=<%=board_recruit_id%>"><%= title %></td>
                                    
                                            <td><%= enterprise_name %></td>
                                            <td><%= resume_title %></td>
                                            <td><%= volunteer_date %></td>
                                           
                                         	<%
								if (result == null) {
							%>
                                            
                                            <td>미정</td>
                                            <td class="text-center">
                                            	<button type="button" class="btn btn-sm btn-primary btn-cancel" onclick="deleteVolunteer(<%=volunteer_id%>)">지원취소
                                            	</button>
                                            </td>
                                   
                                   <%
								} else {
							%>
							<td><%=result%></td>
							<td>취소 불가</td>
							<%
								}
							%>

						</tr>
						<%
							}
						%>

                                      
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </div>
                
                	<!-- ################################# -->     
			            <script>
					function deletBoardResume(board_resume_id) {
					console.log(board_resume_id);
					$.ajax({
							url : "./deletBoardResume",
							method : "GET",
							data : {
								board_resume_id:board_resume_id
							},
							success :function(res1){
								console.log(res1);
								if(res1>=1){
									alert("결과 저장 완료");
					
									 $("#res1").load(window.location.href + " #res1");
								}else{
									alert("사용실패")
								}
							}
						});
					}          
					
					</script>
					<!-- 인재 게시판 작성글 알바 -->
                <div class="row">
                    <div class="card col-xl-12 shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">인재 게시판 작성글

                            </h6>
                        </div>
                        <div class="card-body">
                        <form id="resumeWrite">
                               <table class="table table-striped" id="res1">
                               
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
                                        <button type="button" class="btn btn-danger" onclick="deletBoardResume(<%=board_resume_id%>)">삭제</button>
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
				   <script>

				    function deleteCommunity(community_id) {
				    	console.log(community_id);
				    	$.ajax({
				    		url : "./deleteCommunity",
				    		method : "GET",
				    		data : {
				    			community_id: community_id
				    		},
				    		success :function(res3){
				    			console.log(res3);
				    			if(res3>=1){
				    				alert("삭제 성공");
				
				  					 $("#res3").load(window.location.href + " #res3");
				    			}else{
				    				alert("삭제 실패");
				    			}
				    		}
				    	});
				    }
				    </script>
					<!-- 커뮤니티 게시판 작성글 -->
                    <div class="card col-xl-12 shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">커뮤니티 게시판 작성글
                            </h6>
                        </div>
                        <div class="card-body">
           				<form id="communityWrite">
             
                            <table id="res3" class="table table-bordered"  width="100%" cellspacing="0">
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
                                            <button type="button" class="btn py-1 px-1 btn-danger" onclick="deleteCommunity(<%=community_id%>)">삭제
                                            </button>   
                                         </td>
                                    </tr>
									<%} %>
                                    
                                </tbody>
                            </table>
                        </form>
                        </div>
                    </div>
                    
                    
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">기업 스크랩
                                </h6>
                            </div>
                            <div class="card-body">
					<script>
			
					function deleteEnterpriseScrap(scrap_individual_id) {
						console.log(scrap_individual_id);
						$.ajax({
							url : "./deleteEnterpriseScrap",
							method : "GET",
							data : {
								
								scrap_individual_id : scrap_individual_id
							
							},
							success :function(res4){
								if(res4>=1){
									alert("삭제완료");

									 $("#res4").load(window.location.href + " #res4");
								}else{
									alert("실패")
								}
							}
						});
					}
			
						</script>
     						<!-- 인재스크랩 form 시작 -->
 
                         
                                <table id="res4" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>공고글제목</th>
                                            <th>공고제목</th>
                                        	<th>기업아이디</th>
                                        	<th>기업이름</th>
                                            <th>스크랩한 날짜</th>
                                            <th>스크랩취소</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
										ArrayList<Scrap_Individual> scrap_individual = (ArrayList) request.getAttribute("scrap_individual");
										for (int i = 0; i < scrap_individual.size(); i++) {
											Scrap_Individual list = scrap_individual.get(i);
										  
											String enterprise_id =list.getEnterprise_id(); //기업아이디
						                     String enterprise_name=list.getName();			//기업
						                     String board_recruit_title=list.getBoard_recruit_title(); //기업공고글
						                     String recruit_title=list.getRecruit_title();	//공고
						                     String scrap_date=list.getDate().split(" ")[0];//스크랩한 날짜
						                     int scrap_individual_id=list.getScrap_individual_id();
						                   
						   
										%>  
                                  
                                        <tr>
                                            <td><%=board_recruit_title%></td>
                                            <td><%=recruit_title%></td>
                                            <td><%=enterprise_id%></td>
                                            <td><%=enterprise_name%></td>
                                            <td><%=scrap_date%></td>
                                          
                                            
                                            <td>
                                            <button type="button" class="btn btn-danger" onclick="deleteEnterpriseScrap(<%=scrap_individual_id%>)">취소</button>
											</td>
                                        </tr>
                                        <%} %>
                                        
                                    </tbody>
                                </table>
                         
                            </div>
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





    </div><!-- 끝 main 본문  -->
    </div><!-- 끝 main -->
    <!-- footer -->
    <%@ include file="../serve/manager_footer.jsp" %>
    </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>