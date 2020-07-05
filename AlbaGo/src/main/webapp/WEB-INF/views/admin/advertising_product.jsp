<%@page import="com.spring.ex.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>상품관리</title>
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
					<!-- 요기다 작성  -->


						<a class="btn btn-info edit" aria-label="Settings"
							href="<%=conPath%>/admin/add_advertising">상품 추가</a>
				</div>
				<%
					ArrayList<Product> products = (ArrayList) request.getAttribute("products");
				for (int i = 0; i < products.size(); i++) {
					Product list = products.get(i);
					int product_id = list.getProduct_id();
					String name = list.getName();
					String term = list.getTerm();
					int price = list.getPrice();
					String explan = list.getExplan();
					int amount = list.getAmount();
					if ((i % 4) == 0) {
				%>
				<div class="container mb-5 mt-5">
					<div class="pricing card-deck flex-column flex-md-row mb-3">
						<%
							}
						%>
						<div class="card card-pricing text-center px-3 mb-4">

							<span
								class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">
								<%=product_id%><br/>
								<%=name%>
								</span>
							<div class="bg-transparent card-header pt-4 border-0">
								<h1 class="h4 font-weight-normal text-primary text-center mb-0"
									data-pricing-value="15">
								<%=price%>원 <br> 기간 : <%=term%>
								</h1>
							</div>
							<div class="card-body pt-0">
								<ul class="list-unstyled mb-4">
									설명:<%=explan%>

								</ul>



								<a class="btn btn-info edit" href="<%=conPath%>/admin/advertising/product_account?product_id=<%=product_id%>"
									aria-label="Settings"> 자세히</a>
				       
							</div>


						</div>

						<%
							if ((i % 4) == 3) {
						%>
					</div>
				</div>
				<%
					}
				}
				%>

				
			</div>
			<!-- 끝 main 본문  -->
		</div>
		<!-- 끝 main -->
		<!-- footer -->
	</div>
		<%@ include file="../serve/manager_footer.jsp"%>
	<!-- 끝 content wrapper -->

	<!-- 끝  wrapper -->
</body>

</html>