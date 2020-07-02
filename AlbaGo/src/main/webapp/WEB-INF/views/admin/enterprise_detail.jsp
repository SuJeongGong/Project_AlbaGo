<%@page import="com.spring.ex.dto.Product"%>
<%@page import="com.spring.ex.dto.Recruit"%>
<%@page import="com.spring.ex.dto.Payment"%>
<%@page import="com.spring.ex.dto.Scrap_enterprise"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.BoardRecruit"%>
<%@page import="com.spring.ex.dto.Enterprise"%>
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
    <title>기업상세페이지</title>
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
					<script>
						function changeEnterprisestate(enterprise_id,result) {
							console.log(enterprise_id);
							$.ajax({
								url : "./changeEnterprisestate",
								method : "GET",
								data : {
									
									enterprise_id : enterprise_id,
									result : result
								
								},
								success :function(res1){
									if(res1>=1){
										alert("계정상태바꾸기");

										 $("#res1").load(window.location.href + " #res1");
									}else{
										alert("실패")
									}
								}
							});
						}
						</script>
                <%@ include file="../serve/manager_topbar.jsp" %>
                <%
             	  	 Enterprise enterprise = (Enterprise)request.getAttribute("enterprise");
					
						String enterprise_id = enterprise.getEnterprise_id();
				    	String password=enterprise.getPassword();
						String name = enterprise.getName();
						String business_number = enterprise.getBusiness_number();
						String manager_name = enterprise.getManager_name();
						String manager_phone = enterprise.getManager_phone();
						String address=enterprise.getAddress(); //주소
						String category = enterprise.getCategory();
						String date = enterprise.getDate().split(" ")[0];//가입날짜
						int up_count=enterprise.getUp_count(); 
						int resume_count=enterprise.getResume_count();
						int board_recruit_count=enterprise.getBoard_recruit_count();
						int state=enterprise.getState();
					%>

                <!-- main 본문  -->
                <div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">기업 회원 정보</h1>
                    </div>
                    <!-- main 본문을 한 줄로 묶기 -->
                    <div class="row">
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">기업 정보

                                </h6>
                            </div>
                            <div class="card-body">

						     <!-- 기업 회원정보 form 시작 -->
                           	<form action="<%=request.getContextPath() %>/admin/enterprise_detail/update" name="enterprise"  class="col-xl-12" >
                                  <table id="res1" class="table table-bordered ">
                                    <tr>
                                        <th>기업아이디</th>
                                        <td><input type="hidden" class="form-control" name="enterprise_id" value="<%=enterprise_id%>"> <%=enterprise_id%></td>
                                    </tr>
                                    <tr>
                                        <th>비밀번호</th>
                                        <td><input type="text" class="form-control" name="password" value="<%=password%>"></td>
                                    </tr>
                                    <tr>
                                        <th>기업이름</th>
                                        <td><input type="text" class="form-control" name="name" value="<%=name%>"></td>
                                    </tr>
                                    <tr>
                                        <th>기업전화번호</th>
                                        <td><input type="text" class="form-control" name="business_number" value="<%=business_number%>"></td>
                                    </tr>
                                    <tr>
                                        <th>담당자 이름</th>
                                        <td><input type="text" class="form-control" name="manager_name" value="<%=manager_name%>"></td>
                                    </tr>
                                    <tr>
                                        <th>담당자 연락처</th>
                                        <td><input type="text" class="form-control" name="manager_phone" value="<%=manager_phone%>">
                                        </td>
                                    </tr>
                                    	<tr>
                                        <th>주소</th>
                                        <td><input type="text" class="form-control" name="address" value="<%=address%>">
                                        </td>
                                    </tr>
                                     <tr>
                                 	<tr>
                                        <th>카테고리</th>
                                        <td><input type="text" class="form-control" name="category" value="<%=category%>">
                                        </td>
                                    </tr>
                                     <tr>
                                        <th>가입날짜</th>
                                        <td><input type="hidden" class="form-control" name="date" value="<%=date%>"><%=date%>
                                        </td>
                                    </tr>
                                      <tr>
                                        <th>up횟수</th>
                                        <td><input type="text" class="form-control" name="up_count" value="<%=up_count%>">
                                        </td>
                                    </tr>
                                      <tr>
                                        <th>resume횟수</th>
                                        <td><input type="text" class="form-control" name="resume_count" value="<%=resume_count%>">
                                        </td>
                                    </tr>
                                       <tr>
                                        <th>board_recruit횟수</th>
                                        <td><input type="text" class="form-control" name="board_recruit_count" value="<%=board_recruit_count%>">
                                        </td>
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
										   <button type="button" class="btn btn-danger" onclick="changeEnterprisestate('<%=enterprise_id%>',0)">계정정지</button>
										   <button type="button" class="btn btn-outline-danger" onclick="changeEnterprisestate('<%=enterprise_id%>',1)">계정정지해제</button>
                                       </td>
                                    </tr>
                                </table>
                                </form>
                            </div>
                        </div>
                        </div>
                     
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3"> 
                                <h6 class="m-0 font-weight-bold text-primary">공고 관리
                                </h6>
                            </div>
                            <div class="card-body">

   							  <!-- 공고 form 시작 -->
                     <script>
						function deleteEnterpriseRecruit(recruit_id) {
							console.log(recruit_id);
							$.ajax({
								url : "./deleteEnterpriseRecruit",
								method : "GET",
								data : {
									
									recruit_id : recruit_id
								
								},
								success :function(res2){
									if(res2>=1){
										alert("삭제완료");

										 $("#res2").load(window.location.href + " #res2");
									}else{
										alert("실패")
									}
								}
							});
						}
						</script>
                                <table id="res2" class="table  table-bordered ">

                                    <thead>
                                        <tr>
                                            <th>공고글 제목</th>           
                                            <th>장소</th>
                                            <th>공고보기</th>
                                            <th>작성날짜</th>
                                            <th>관리</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
									ArrayList<Recruit> recruit = (ArrayList) request.getAttribute("recruit");
					                  for (int i = 0; i < recruit.size(); i++) {
					                	  Recruit list = recruit.get(i);
					                	  String recruit_title = list.getTitle();
					                	  String recruit_place = list.getPlace();
					                	  String recruit_date = list.getDate().split(" ")[0];
					                	  int recruit_id = list.getRecruit_id();
					                	  int board_recruit_id=list.getBoard_recruit_id();
					                	  %>  
                                        <tr>
                                            <td><a  href="<%=request.getContextPath()%>/recruit/content?board_recruit_id=<%=board_recruit_id%>"><%=recruit_title %></a></td>
                                            <td><%=recruit_place %></td>
                                    	<td>  
                                    	   <a  href="<%=request.getContextPath()%>/enterprise/recruit/content?recruit_id=<%=recruit_id%>" class="btn btn-secondary btn-xs"> <span class="glyphicon glyphicon-edit"></span> 상세보기</a> 
                                    
                                            <td><%=recruit_date %></td>
                                            <td> <button type="button" class="btn btn-outline-danger" onclick="deleteEnterpriseRecruit(<%=recruit_id%>)">삭제</button>
                                      
                                        </tr>
                                        <%} %>
                                    </tbody>
                                </table>
                    
                            </div>
                        </div>
                    
          
              
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3"> 
                                <h6 class="m-0 font-weight-bold text-primary">공고게시판 작성글
                                </h6>
                            </div>
                            <div class="card-body">
 						<script>
						function deleteEnterpriseBoardRecruit(board_recruit_id) {
							console.log(board_recruit_id);
							$.ajax({
								url : "./deleteEnterpriseBoardRecruit",
								method : "GET",
								data : {
									
									board_recruit_id : board_recruit_id
								
								},
								success :function(res3){
									if(res3>=1){
										alert("삭제완료");

										 $("#res3").load(window.location.href + " #res3");
									}else{
										alert("실패")
									}
								}
							});
						}
						</script>
   							  <!-- 공고글 form 시작 -->
                
                                <table id="res3" class="table  table-bordered ">

                                    <thead>
                                        <tr>
                                            <th>공고 제목</th>
                                            <th>사용한 공고글 제목</th>
                                            <th>메모</th>
                                            <th>작성날짜</th>
                                            <th>관리</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
									ArrayList<BoardRecruit> boardrecruit = (ArrayList) request.getAttribute("boardrecruit");
					                  for (int i = 0; i < boardrecruit.size(); i++) {
					                	  BoardRecruit list = boardrecruit.get(i);
					                     String board_recruit_title =list.getTitle();
					                     String recruit_title=list.getRecruit_title();
					                     String memo=list.getMemo();
					                     String board_recruit_date=list.getDate().split(" ")[0];
					                     int board_recruit_id = list.getBoard_recruit_id();
					                     int recruit_id = list.getRecruit_id();
					                  %>  
                                        <tr>
                                            <td><a  href="<%=request.getContextPath()%>/recruit/content?board_recruit_id=<%=board_recruit_id%>"><%=board_recruit_title%></td>
                                            <td><a  href="<%=request.getContextPath()%>/enterprise/recruit/content?recruit_id=<%=recruit_id%>"><%=recruit_title%></a></td>
                                            <td><%=memo%></td>
                                            <td><%=board_recruit_date%></td>
                                          <td> <button type="button" class="btn btn-outline-danger" onclick="deleteEnterpriseBoardRecruit(<%=board_recruit_id%>)">삭제</button>
                                               </tr>
                                        <%} %>
                                    </tbody>
                                </table>
                          
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">인재 스크랩
                                </h6>
                            </div>
                            <div class="card-body">
					<script>
						function deleteScrap(scrap_id) {
							console.log(scrap_id);
							$.ajax({
								url : "./deleteScrap",
								method : "GET",
								data : {
									
									scrap_id : scrap_id
								
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
                                            <th>인재제목</th>
                                            <th>이력서제목</th>
                                        	<th>인재아이디</th>
                                        	<th>인재이름</th>
                                            <th>스크랩한 날짜</th>
                                            <th>스크랩취소</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
									ArrayList<Scrap_enterprise> scrap_enterprise = (ArrayList) request.getAttribute("scrap_enterprise");
					                  for (int i = 0; i < scrap_enterprise.size(); i++) {
					                	 Scrap_enterprise list = scrap_enterprise.get(i);
					                	 
					                     String individual_id =list.getIndividual_id(); //인재아이디
					                     String individual_name=list.getName();			//인재이름
					                     String board_resume_title=list.getBoard_resume_title(); //인재제목
					                     String resume_title=list.getResume_title();	//이력서제목
					                     String scrap_date=list.getDate().split(" ")[0];//스크랩한 날짜
					                     int scrap_id=list.getScrap_enterprise_id();
					                     int resume_id=list.getResume_id();
					                     int board_resume_id=list.getBoard_resume_id();
					                  %>  
                                        <tr>
                                     <td><a  href="<%=request.getContextPath()%>/resume/content?board_resume_id=<%=board_resume_id%>"><%=board_resume_title%></a></td>
                                            <td><a  href="<%=request.getContextPath()%>/individual/profile/content?resume_id=<%=resume_id%>"><%=resume_title%></a></td>
                                            <td>   	  <%=individual_id%> </td>
                                            <td><%=individual_name%></td>
                                            <td><%=scrap_date%></td>
                                            <td>
                                            <button type="button" class="btn btn-danger" onclick="deleteScrap(<%=scrap_id%>)">취소</button>
											</td>
                                        </tr>
                                        <%} %>
                                        
                                    </tbody>
                                </table>
                         
                            </div>
                        </div>
                        </div>
                        <div class="card col-xl-12 shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">상품 결제내역
                                </h6>
                            </div>
                            <!-- 결제내역 form 시작 -->
                            <% 
                            Product product = (Product)request.getAttribute("product");
    						int sumPrice = product.getSum_price();
                            %>
				
                       
                            <div class="card-body">
                                <h6 class="m-0 font-weight-bold text-primary" align="right">총계 : &nbsp; 
                                <input   type="hidden" name="product" value="<%=sumPrice%>"><%=sumPrice%>원</h6>
                                <br />
                                
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>상품명</th>
                                            <th>결제일</th>
                                            <th>사용기간</th>
                                            <th>가격</th>
                                     
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
									ArrayList<Payment> payment = (ArrayList) request.getAttribute("payment");
					                  for (int i = 0; i < payment.size(); i++) {
					                	  Payment list = payment.get(i);
					                	
					                	 String product_name=list.getName();
					                	 String payment_date=list.getDate().split(":")[0];
					                	 String payment_date2=list.getDate().split(":")[1];
					                	 String term=list.getTerm();
					                	 int price=list.getProduct_price();
					                	 
					                  %>  
                                    <tr>
                                        <td><%=product_name%></td>
                                        <td><%=payment_date%>:<%=payment_date2%></td>
                                        <td><%=term%></td>
                                        <td><%=price%></td>
                                    </tr>
                                    <%} %>
                                    </tbody>
                                </table>
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
    <%@ include file="../serve/footer.jsp" %>
    </div><!-- 끝 content wrapper -->
    </div><!-- 끝  wrapper -->
</body>

</html>