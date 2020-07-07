<%@page import="com.spring.ex.dto.Payment"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>


<meta charset="UTF-8">
<%
       ArrayList<Payment> payments=(ArrayList)request.getAttribute("payments");
     %>
     
<script>
  function updateResult(id,result) {
                        	
                        	$.ajax({
                        		url : "./updateResult",
                        		method : "GET",
                        		data : {
                        			result : result,
                        			id:id
                        		},
                        		success :function(res){
                        			if(res>=1){
                        				alert("결과 저장 완료");
                        				<% for(int i =0; i< payments.size()  ;i++){ %>

                   					 $("#res<%=i%>").load(window.location.href + " #res<%=i%>");
                        				<% } %>
                        			}else{
                        				alert("실패");
                        			}
                        		}
                        	});
                        }
                        function updateResults(result) {
                        	var payment_ids = [];
                        	$("input[name='payment_id']:checked").each(function(){
                        		if(this.checked){
                        			payment_ids.push($(this).val());
                        			console.log($(this).val());
                        		}
                        	})
                        	
                        	$.ajax({
                        		url : "./updateResults",
                        		method : "GET",
                        		data : {
                        			result : result,
                        			payment_ids: payment_ids
                        		},
                        		success :function(res){
                        			if(res>=1){
                        				alert("결과 저장 완료");
                        				<% for(int i =0; i< payments.size()  ;i++){ %>

                   					 $("#res<%=i%>").load(window.location.href + " #res<%=i%>");
                        				<% } %>
                        			}else{
                        				alert("실패");
                        			}
                        		}
                        	});
                        }

                            
                            
                        </script>
<title>결제승인</title>
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

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">결제 승인</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<input type="submit" onclick="updateResults('거부')" value="선택거부"  class="btn btn-outline-danger" style="float: right;">
										<input type="submit" onclick="updateResults('승인')" value="선택승인"  class="btn btn-outline-primary" style="float: right;">
										<tr>
											<th><input type="checkbox" class="selectAllMembers"  checked=false onclick='OnOffMemberAllClickBtn()' /></th>
											<th>결제번호</th>
											<th>기업이름</th>
											<th>상품이름</th>
											<th>기간</th>
											<th>결제날짜</th>
											<th>승인결과</th>

										</tr>
									</thead>
									<tbody>
										<tr>
											<%
				
									for (int i = 0; i < payments.size(); i++) {
										Payment payment = payments.get(i);
		

										String enterprise_name =payment.getEnterprise_name();
										String product_name =payment.getProduct_name();
										int payment_id=payment.getPayment_id();
										String useDate =payment.getUse_date();
										String date = payment.getDate();
										String result = payment.getResult();
										String type = payment.getProduct_type();
										%>
										
										<td><input type="checkbox" class="memberChk" name="payment_id" value="<%=payment_id%>"></td>
										<td><%=payment_id %></td>
										<td><%=enterprise_name %></td>
										<td><%=product_name %></td>
										<td><%=useDate %></td>
										<td><%=date.split(" ")[0] %></td>
										
										<td >
										<div id = "res<%=i %>">
										
										<%  if (result == null) {  %>
												
								<button onclick="updateResult(<%=payment_id%>,'승인')" id='accept' class="btn btn-outline-primary">승인</button>
								<button onclick="updateResult(<%=payment_id%>,'거부')" type="submit" id="reject" class="btn btn-outline-danger">거부</button>
								
											
											<%  }else{  %>
											
													<%=result %>
														
										<%}%>
										</div>
										</td>
										</tr>
											<%
												}
											%>

									</tbody>
								</table>
							</div>
						</div>
						<script>
							var selectAll = document
									.querySelector(".selectAllMembers");
							selectAll.addEventListener('click', function() {
								var objs = document
										.querySelectorAll(".memberChk");
								for (var i = 0; i < objs.length; i++) {
									objs[i].checked = selectAll.checked;
								}
								;
							}, false);
							var objs = document.querySelectorAll(".memberChk");
							for (var i = 0; i < objs.length; i++) {
								objs[i]
										.addEventListener(
												'click',
												function() {
													var selectAll = document
															.querySelector(".selectAllMembers");
													for (var j = 0; j < objs.length; j++) {
														if (objs[j].checked === false) {
															selectAll.checked = false;
															return;
														}
														;
													}
													;
													selectAll.checked = true;
												}, false);
							}
						</script>
					</div>


				</div>
				<!-- 끝 main 본문  -->
				<div class="text-center" style="float: left;">
								<ul class="pagination">
									<%
										int pageNum = (int) request.getAttribute("pageNum");
										int count = (int) request.getAttribute("count");
										System.out.println(pageNum);
										System.out.println(count);
										if (pageNum > 1) {//<
									%>
									<li class="page-item"><a class="page-link"
										href="?page=<%=pageNum - 1%>">Previous</a></li>
									<%
										}
										for (int i = 1; i <= count; i++) {//각각 번호
									%>

									<li class="page-item"><a class="page-link"
										href="?page=<%=i%>"><%=i%> </a></li>
									<%
										}
										if (pageNum < count) {//>
									%>

									<li class="page-item"><a class="page-link"
										href="?page=<%=pageNum + 1%>">Next</a></li>
									<%
										}
									%>
								</ul>
							</div>
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