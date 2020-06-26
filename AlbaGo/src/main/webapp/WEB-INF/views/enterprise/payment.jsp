<%@page import="com.spring.ex.dto.Payment"%>
<%@page import="com.spring.ex.dto.Scrap_enterprise"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>결제내역</title>
</head>

<body>

	<%@ include file="../serve/header.jsp"%>
	<!-- content wrapper -->

	<!-- main 본문  -->
	<div class="container"><br/>
		<div class="row">
			<h1>결제 내역보기</h1>
		</div>
		<div class="row">
			<ul>
				<li>결제한 내역을 확인 하실 수 있습니다.</li>
				<li>최신순으로 정렬되어 있습니다.</li>
			</ul>

		</div><br/>
		<div class="row">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>상품 이름</th>
							<th>가격</th>
							<th>결제 날짜</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<Payment> payments = (ArrayList) request.getAttribute("payments");
							for (int i = 0; i < payments.size(); i++) {
								Payment payment = payments.get(i);
								String name = payment.getProduct_name();//null나옴 아마 sql문을 고져야할듯 as board_recruit_title로 
								String date = payment.getDate().split(" ")[0];
								int product_price = payment.getProduct_price();
						%>
						<tr>
							<td><%=name%></td>
							<td><%=product_price%></td>
							<td><%=date.split(" ")[0]%></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>

			</div>
		</div>
	</div>


	<%@ include file="../serve/footer.jsp"%>
</body>

</html>