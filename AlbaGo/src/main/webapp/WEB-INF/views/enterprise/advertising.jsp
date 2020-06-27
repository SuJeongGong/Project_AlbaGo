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
<title>광고 내역</title>
</head>

<body>

	<%@ include file="../serve/header.jsp"%>
	<!-- content wrapper -->

	<!-- main 본문  -->
	<div class="container">
		<br />
		<div class="row">
			<h1>광고 내역</h1>
		</div>
		<div class="row">
			<ul>
				<li>신청한 광고 내역을 확인 하실 수 있습니다.</li>
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
							<th>시작하는 날짜</th>
							<th>끝나는 날짜</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<Advertising> advertisings = (ArrayList) request.getAttribute("advertisings");
							for (int i = 0; i < advertisings.size(); i++) {
								Advertising advertising = advertisings.get(i);
								String title = advertising.getBoard_recruit_title();
								String startDate = advertising.getStart_date().split(" ")[0];
								String endDate = advertising.getEnd_date().split(" ")[0];
						%>
						<tr>
							<td><%=title%></td>
							<td><%=startDate%></td>
							<td><%=endDate%></td>
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