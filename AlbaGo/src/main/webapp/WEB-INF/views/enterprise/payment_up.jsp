<%@page import="com.spring.ex.dto.PaymentHistoryUp"%>
<%@page import="com.spring.ex.dto.PaymentHistoryResume"%>
<%@page import="com.spring.ex.dto.Advertising"%>
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
<title>UP 버튼 사용 내역</title>
</head>

<body>

	<%@ include file="../serve/header.jsp"%>
	<!-- content wrapper -->

	<!-- main 본문  -->
	<div class="container">
		<br />
		<div class="row">
			<h1>UP 버튼 사용 내역</h1>
		</div>
		<div class="row">
			<ul>
				<li>UP버튼을 사용한 내역을 확인 할 수 있습니다.</li>
				<li>최신순으로 정렬되어 있습니다.</li>
			</ul>

		</div>
		<br />
		<div class="row">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>사용한 공고글</th>
							<th>사용한 날짜</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<PaymentHistoryUp> paymentHistoriessUp = (ArrayList) request.getAttribute("payment_history_up");

							for (int i = 0; i < paymentHistoriessUp.size(); i++) {
								PaymentHistoryUp paymentHistoryUp = paymentHistoriessUp.get(i);
								String title = paymentHistoryUp.getBoard_recruit_title();
								String date = paymentHistoryUp.getDate().split(" ")[0];
						%>
						<tr>
							<td><%=title%></td>
							<td><%=date%></td>
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