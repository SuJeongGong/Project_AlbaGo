<%@page import="com.spring.ex.dto.Product"%>
<%@page import="com.spring.ex.dao.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../serve/header.jsp"%>

	<!-- featured_candidates_area_start  -->
	<div class="featured_candidates_area candidate_page_padding">

		<div class="container">

			<!-- 시작 -->
		
				<div class="row">


					
						<%
							ArrayList<Product> products = (ArrayList) request.getAttribute("products");
						for (int i = 0; i < products.size(); i++) {
							Product list = products.get(i);
							int product_id=list.getProduct_id();
							String name = list.getName();
							String term = list.getTerm();
							int price = list.getPrice();
							String explan = list.getExplan();
							int amount = list.getAmount();
						%><div class="col-md-12 col-lg-4">
						<div class="single_candidates">
							<div class=" text-center">
								<input type="hidden"  name="Product_id"  placeholder=<%=product_id %> value="<%=product_id %>"  />
								<h2 class="row" name="name"> <%=name%></h2>
								<h3 class="row" name="amount"><%=amount%>개</h3>
								<p class="row" name="product_explan">설명 : <%=explan%></p>
							<br> 
							</div>
							<br> 
				
							
							<a href="<%=request.getContextPath()%>/product/payment?product_id=<%=product_id %>" name = "product_id">결제</a>

						</div>
					</div>
						<%
							}
						%>
				</div>
	

			<!-- 끝 -->
		</div>


		<div class="row">
			<div class="col-lg-12">
				<div class="pagination_wrap">
					<ul>
						<li><a href="#"> <i class="ti-angle-left"></i>
						</a></li>
						<li><a href="#"><span>01</span></a></li>
						<li><a href="#"><span>02</span></a></li>
						<li><a href="#"> <i class="ti-angle-right"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- featured_candidates_area_end  -->






	<%@ include file="../serve/footer.jsp"%>

</body>
</html>