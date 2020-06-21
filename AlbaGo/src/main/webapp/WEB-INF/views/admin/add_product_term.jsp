<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>상품추가</title>
</head>

	<%
		String conPath = request.getContextPath();
	%>
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

					<div class="container mb-5 mt-5"
						style="height: 200px; width: 700px;">
						<form action="<%=request.getContextPath()%>/admin/add_product_term/result" name="product">
						
						<div class="pricing card-deck flex-column flex-md-row mb-3">
							<div class="card card-pricing text-center px-3 mb-4">
								<span class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">
								
								<input type="text" placeholder="ex)아이템" size="6" value="" name="name"></input></span>
								<div class="bg-transparent card-header pt-4 border-0">
								<h1 class="h4 font-weight-normal text-primary text-center mb-0" data-pricing-value="15" >
								<input type="text" placeholder="ex)100,000" size="9" name="price"/>원
										<span class="h6 text-muted ml-2">
											<input type="text" placeholder="ex) / +5개" size="6" name="amount"/></span>
									</h1>
								</div>
								<div class="card-body pt-0">
									<ul class="list-unstyled mb-4">
										<input type="text" cols=121 rows=5 class="form-control" style="border-radius: 0px" placeholder="기간을 알려주세요" name="term">
									</ul>
								
									<ul class="list-unstyled mb-4">
										<input type="text" cols=121 rows=5 class="form-control" style="border-radius: 0px" placeholder="게시글 정보를 알려주세요" name="product_explan">
									</ul>

								
								<button class="btn btn-info edit" aria-label="Settings" value="submit"> <i class="fa fa-pencil-square-o" aria-hidden="true">추가</i></button>
							
							</div>
						</div>
					</div>
					</form>
				</div>


			</div>
			
			<!-- 끝 main 본문  -->
		</div>
		<!-- 끝 main -->
		<!-- footer -->
		<%@ include file="../serve/manager_footer.jsp"%>
	</div>
	<!-- 끝 content wrapper -->
</div>
	<!-- 끝  wrapper -->
</body>

</html>