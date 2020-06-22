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

					
					<div class="col-md-6 col-lg-5">
			<h1>승인 대기 중 입니다</h1>
							<button class="btn btn-info edit" aria-label="Settings"
								value="submit">
								<a class="fa fa-pencil-square-o" href="<%=request.getContextPath() %>/main"aria-hidden="true">확인</a>
							</button>

						</div>
			
					</div>
				
</div>
			<!-- 끝 -->
		</div>



	<!-- featured_candidates_area_end  -->






	<%@ include file="../serve/footer.jsp"%>

</body>
</html>