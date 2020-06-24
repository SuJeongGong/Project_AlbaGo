<%@page import="com.spring.ex.dto.Product"%>
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
	<%
		Product product = (Product) request.getAttribute("product");//여기 ""안에 m.addAttribute() 안에 적어준 이름이랑 같게 해야해
		
	%>

	<div class="job_details_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a href="#">
										<h4>
											<%=product.getName()%>
											<%=product.getAmount()%></h4>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<h4>
								가격 :
								<%=product.getPrice()%></h4>
						</div>
						<div class="single_wrap">
							<h4></h4>
							<p><%=product.getExplan()%></p>
						</div>
						<form action="#">
							<div class="row">
								<div class="col-md-6"> 
									<div class="submit_btn">
									<a href="<%=request.getContextPath()%>/product/payment/result?product_id=<%=product.getProduct_id()%>"
											>결제하기</a>
											</div>
								</div>
								<div class="col-md-6">
									<div class="submit_btn">
										<a href="<%=request.getContextPath() %>/product/list">목록으로</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>





	<%@ include file="../serve/footer.jsp"%>

</body>
</html>