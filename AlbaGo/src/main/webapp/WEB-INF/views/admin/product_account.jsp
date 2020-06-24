
<%@page import="com.spring.ex.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>상세보기</title>
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
				<%
					Product product = (Product) request.getAttribute("product");//여기 ""안에 m.addAttribute() 안에 적어준 이름이랑 같게 해야해
					int product_id=product.getProduct_id();
					String name=product.getName();
					String term=product.getTerm();
					int price=product.getPrice();
					int amount=product.getAmount();
					String explan=product.getExplan();
					int delete_check=product.getDelete_check();
				%>
				
				<!-- main 본문  -->
				<div class="container-fluid">
					<!-- 요기다 작성  -->
					<div class="container mb-5 mt-5">
						<div class="pricing card-deck flex-column flex-md-row mb-3">

							<div class="card card-pricing text-center px-3 mb-4">
				<form action="<%=request.getContextPath() %>/admin/account/update" name="product" id  = "product" class="col-xl-11" >
	             			
					
								<span
									class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">
								
									<input type="text" name="product_id" id="product_id" value="<%=product_id%>">
								<%=product_id%>
									<input type="text" name="name" id="name" value="<%=name%>">
								</span>
								<div class="bg-transparent card-header pt-4 border-0">
									<h1 class="h4 font-weight-normal text-primary text-center mb-0"
										data-pricing-value="15">
										<input type="text" size="7" name="price" id="price" value="<%=price%>" />원 <br>
										<input type="text" size="7" name="amount" id="amount"  value="<%=amount%>">개
									</h1>
								</div>
								<div class="card-body pt-0">
									<ul class="list-unstyled mb-4">
										기간
										<input type="text" cols=121 rows=5 class="form-control"
											style="border-radius: 0px"  name="term" id="term" value="<%=term%>" />

									</ul>
									<ul class="list-unstyled mb-4">
										설명
										<input type="text" cols=121 rows=5 class="form-control"
											style="border-radius: 0px" name="explan" id="explan" value="<%=explan%>" />

									</ul>
								<button class="btn btn-info edit" 
									 type="submit" aria-label="ASettings">
									수정</button> 
					
			
	
							
									<a	class="btn btn-danger btn-xs" href="<%=request.getContextPath()%>/admin/account/delete?product_id=<%=product_id%>"
										aria-label="Settings"> 삭제 </a>
								</div>

			</form>
							</div>


						</div>
					</div>



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