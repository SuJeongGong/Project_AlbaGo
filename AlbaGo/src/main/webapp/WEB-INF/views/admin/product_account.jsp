
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
					String type=product.getType();
					int delete_check=product.getDelete_check();
					
				%>
				
				<!-- main 본문  -->
				<div class="container-fluid ">
					<!-- 요기다 작성  -->
					<div class="container mb-5 mt-5 card-center">
						<div class="pricing card-deck flex-column flex-md-row mb-3 card-center" >

							<div class="card  center-block card-center card-pricing text-center px-3 mb-4  col-xl-8">
				<form action="<%=request.getContextPath() %>/admin/account/product/update" name="product" id  = "product" class="col-xl-12" >
	             			
						<div class="row form-group ">
								<span
									class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">
								
									<input type="hidden" name="product_id" id="product_id"  value="<%=product_id%>">
								
								<%=product_id%><br>
									<input type="text" class="col-sm-12 form-control "name="name" id="name" value="<%=name%>">
								</span></div>
								<div class="bg-transparent card-header pt-4 border-0">
									<h1 class="h4 font-weight-normal text-primary text-center mb-0 form-group "
										data-pricing-value="15">
										<div class="row form-group ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"   class="col-sm-4 form-control "   name="price" id="price" value="<%=price%>" />&nbsp;원 &nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;	<input type="text"   class="col-sm-4 form-control " name="amount" id="amount"  value="<%=amount%>">&nbsp;개</div>
									</h1>
								</div>
								<div class="card-body pt-0">
									<ul class="list-unstyled mb-4 h4 font-weight-normal text-primary text-center" >
							
									<input type="hidden" cols=121 rows=5 class="form-control"
											style="border-radius: 0px"  name="term" id="term" value="<%=term%>" />								
							
								 <label class="radio-inline" name = "type"> 
		                     <input type="radio" id = "up" value="up"  name="type"> UP
		                     </label> 
		                     <label class="radio-inline" name = "type"> 
		                     <input type="radio"  value="resume" name="type"> Resume
		                     </label>
		                     <label class="radio-inline" name = "type"> 
		                     <input type="radio"    value="board" name="type" > Board
		                     </label>

									</ul>
									<ul class="list-unstyled mb-4">
									<div class="row form-group h4 font-weight-normal text-primary text-center">
										설명&nbsp;
										<input type="text" class="col-sm-10 form-control "
											style="border-radius: 0px" name="explan" id="explan" value="<%=explan%>" /></div>

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
			<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<script>
$(document).ready(function(){
		  $('input[name="type"][value="ad"]').hide();
		  $('input:radio[name="type"][value="<%=type%>"]').prop('checked', true);
	
});
</script>
</body>

</html>