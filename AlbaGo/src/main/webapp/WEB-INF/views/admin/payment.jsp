<%@page import="com.spring.ex.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Payment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>매출</title>
<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
</head>

<body>
	<div id="wrapper">
		<!-- 사이드 바 -->
		<%@ include file="../serve/manager_sidebar.jsp"%>

		<!-- content wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- main -->
			<div id="content">
				<!-- Topbar -->
				<%@ include file="../serve/manager_topbar.jsp"%>

				<!-- main 본문  -->
				<div class="container-fluid">



					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">매출 관리</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<!-- Card Header - Accordion -->
						<a href="#collapseCardExample" class="d-block card-header py-3"
							data-toggle="collapse" role="button" aria-expanded="true"
							aria-controls="collapseCardExample">
							<h6 class="m-0 font-weight-bold text-primary">상세정보검색</h6>
						</a>
						<!-- Card Content - Collapse -->
						<div class="collapse show" id="collapseCardExample">
							<div class="card-body">
								<table>
								<form action="<%=request.getContextPath() %>/admin/payment" method="get" name="keyword" id="keyword">
									<th style="width: 900px;">기간</th>
									<tr>
										<td><input type="text" name="start" style="width: 150px;">&nbsp;&nbsp; ~ &nbsp;&nbsp;			
										    <input type="text" name="end" style="width: 150px;"> 			
										</td>
									</tr>
									<tr>
									<td>
                                    	</td>
                                    	</tr>
									<th>상품명 검색</th>
									
									<tr>
										<td>
                                            <select name="product_type" style="width:150px;">
                                            	<option value="">--선택하십시오--</option>
                                            	<option value="">전체</option>
                                            	<option value="ad">광고</option>
                                            	<option value="up">up</option>
                                            	<option value="resume">resume</option>
                                            	<option value="board">board</option>
                                            </select>
                                    	</td>
                                    	<td>
                                            <input type="text" name="search" style="width: 150px;">
                                    		<button type="submit" class="btn py-1 px-1 btn-primary" >&nbsp;검색</button>
                                    	</td>
									</tr>
								</form>
								</table>
							</div>
						</div>
						
					
						

						<div class="card shadow mb-3">
							<div>
								<div class="card card-stats"
									style="float: left; width: 33%; padding: 10px;">
									<div class="card-header card-header-warning card-header-icon">
										<div class="card-icon">
											<i class="material-icons">전체 매출</i>
										</div>
										<h3 class="card-title" id="all_totalsales" name="all_totalsales">
											<%=request.getAttribute("all_totalsales") %><small>원</small>
										</h3>
									</div>

								</div>
								<div class="card card-stats"
									style="float: left; width: 33%; padding: 10px;">
									<div class="card-header card-header-warning card-header-icon">
										<div class="card-icon">
											<i class="material-icons">오늘 매출</i>
										</div>
										<h3 class="card-title" id="todaysales" name="todaysales">
											<%=request.getAttribute("todaysales") %><small>원</small>
										</h3>
									</div>

								</div>
								<div class="card card-stats"
									style="float: left; width: 33%; padding: 10px;">
									<div class="card-header card-header-warning card-header-icon">
										<div class="card-icon">
											<i class="material-icons">최근 일주일 매출</i>
										</div>
										<h3 class="card-title" id="weeklysales" name="weeklysales">
											<%=request.getAttribute("weeklysales") %><small>원</small>
										</h3>
									</div>
								</div>
							</div>
						</div>
						

						<div class="card-body">


							<br /> <br />
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>기업 회원 아이디</th>
											<th>상품명</th>
											<th>금액</th>
											<th>결제일</th>
										</tr>
									</thead>
									<tbody>
										<%
											ArrayList<Payment> payments = (ArrayList<Payment>) request.getAttribute("payment");
											for (int i = 0; i < payments.size(); i++) {
												Payment payment = payments.get(i);

												String date = payment.getDate();
												 date = date.split(":")[0]+":"+date.split(":")[1];
												
												
												String e_id = payment.getEnterprise_id();
												String name = payment.getProduct_name();
												int price = payment.getProduct_price();
										%>

										<tr>
											<td><%=e_id%></td>
											<td><%=name%></td>
											<td><%=price%></td>
											<td><%=date%></td>
										</tr>
										<%
											}
										%>
									</tbody>
								</table>
							</div>
							<br />
							<hr>


<div class="text-center" style="float: left;">
								<ul class="pagination">
									<%
										int pageNum = (int) request.getAttribute("pageNum");
										int count = (int) request.getAttribute("count");
										System.out.println(pageNum);
										System.out.println(count);
										if (pageNum > 1) {//<
									%>
									<li class="page-item"><a class="page-link"
										href="?page=<%=pageNum - 1%>">Previous</a></li>
									<%
										}
										for (int i = 1; i <= count; i++) {//각각 번호
									%>

									<li class="page-item"><a class="page-link"
										href="?page=<%=i%>"><%=i%> </a></li>
									<%
										}
										if (pageNum < count) {//>
									%>

									<li class="page-item"><a class="page-link"
										href="?page=<%=pageNum + 1%>">Next</a></li>
									<%
										}
									%>
								</ul>
							</div>


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