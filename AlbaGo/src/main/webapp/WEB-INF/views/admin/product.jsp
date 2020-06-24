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

	<%
		String conPath = request.getContextPath();
	%>
	<script>
		
		function update(){
				update.action="<%=conPath%>/admin/product/update_product";
		
				}
	</script>
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
							href="<%=conPath%>/admin/add_product_term">상품 추가</a>
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
								<%=product_id%>
								<input type="text" value="<%=name%>">
								</span>
							<div class="bg-transparent card-header pt-4 border-0">
								<h1 class="h4 font-weight-normal text-primary text-center mb-0"
									data-pricing-value="15">
									<input type="text" size="7" value="<%=price%>" />원 <br> <input
										type="text" size="7" value="<%=amount%>">개
								</h1>
							</div>
							<div class="card-body pt-0">
								<ul class="list-unstyled mb-4">
									기간
									<input type="text" cols=121 rows=5 class="form-control"
										style="border-radius: 0px" value="<%=term%>" />

								</ul>
								<ul class="list-unstyled mb-4">
									설명
									<input type="text" cols=121 rows=5 class="form-control"
										style="border-radius: 0px" value="<%=explan%>" />

								</ul>

							<!-- 	<button class="btn btn-info edit" id="update" name="update"
									onclick="update()" type="submit" aria-label="ASettings">
									수정</button> -->

								<a class="btn btn-info edit" href="<%=conPath%>/admin/product_account?product_id=<%=product_id%>"
									aria-label="Settings"> 수정 </a>
								<a class="btn btn-danger btn-xs" href="pasth/to/setting"
									aria-label="Settings"> 삭제 </a>
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
		<%@ include file="../serve/manager_footer.jsp"%>
	</div>
	<!-- 끝 content wrapper -->

	<!-- 끝  wrapper -->
</body>

</html>