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
	<%
		String conPath = request.getContextPath();
	%>
	<!-- featured_candidates_area_start  -->
	<div class="featured_candidates_area candidate_page_padding">

		<div class="container">

			<!-- 시작 -->
			<form action="<%=request.getContextPath()%>/main" name="payment">
				<div class="row">

					
					<div class="col-md-6 col-lg-5">
			<h1>승인 대기 중 입니다</h1>
							<button class="btn btn-info edit" aria-label="Settings"
								value="submit">
								<i class="fa fa-pencil-square-o" aria-hidden="true">확인</i>
							</button>

						</div>
			
					</div>
				
			</form>
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