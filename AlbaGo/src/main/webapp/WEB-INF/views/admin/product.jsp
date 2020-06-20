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
function checkMember(){   
   if(select.radio.value =="기간필요o"){
	   select.action ="<%=conPath%>/admin/add_product_term";
	   select.submit();
   }
   if(select.radio.value =="기간필요x"){
	   select.action ="<%=conPath%>/admin/add_product_no_term";
	select.submit();
			}
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
					<form name="select" onsubmit="checkMember()">
						<div style="float: center">
							<label class="radio-inline"> <input type="radio"
								name="radio" id="term_need" checked="checked" value="기간필요o">
								기간필요o
							</label> <label class="radio-inline"> <input type="radio"
								name="radio" id="term_unnecessary" value="기간필요x"> 기간필요x
							</label>

							<button class="btn btn-info edit" aria-label="Settings"
								type="submit">상품 추가</button>

						</div>
						<%
						ArrayList<Product> products = (ArrayList)request.getAttribute("products");
						for (int i = 0; i < products.size(); i++) {
							Product list = products.get(i);
							int Product_id = list.getProduct_id();
							String name = list.getName();
							String term = list.getTerm();
							int price = list.getPrice();
							String product_explan = list.getProduct_explan();
							int amount = list.getAmount();
						%>
						<div class="container mb-5 mt-5">
							<div class="pricing card-deck flex-column flex-md-row mb-3">
								<div class="card card-pricing text-center px-3 mb-4">

									<span
										class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm"><%= Product_id%> <%=name %></span>
									<div class="bg-transparent card-header pt-4 border-0">
										<h1
											class="h4 font-weight-normal text-primary text-center mb-0"
											data-pricing-value="15">
											<input type="text" size="7" value="<%=price %>"/>원 
											<span
												class="h6 text-muted ml-2"><%=amount%>개</span>
										</h1>
									</div>
									<div class="card-body pt-0">
										<ul class="list-unstyled mb-4">
											<input type="text" cols=121 rows=5 class="form-control" style="border-radius: 0px" value="<%=term%>"/>
								
										</ul>
										<ul class="list-unstyled mb-4">
											<input type="text" cols=121 rows=5 class="form-control" style="border-radius: 0px" value="<%=product_explan%>"/>
										
										</ul>

										<a class="btn btn-info edit" href="path/to/settings"
											aria-label="ASettings"> <i class="fa fa-pencil-square-o"
											aria-hidden="true">수정</i>
										</a> <a class="btn btn-danger btn-xs" href="path/to/settings"
											aria-label="Settings"> <i class="fa fa-pencil-square-o"
											aria-hidden="true">삭제</i>
										</a>
									</div>
								</div>

							</div>

							<%
								}
							%>

						</div>


					</form>
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