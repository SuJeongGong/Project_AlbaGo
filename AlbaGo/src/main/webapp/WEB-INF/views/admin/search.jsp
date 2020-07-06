<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Individual"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>개인검색</title>
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

					<div class="container">

						<h1 class="h3 mb-2 text-gray-800">회원 검색 결과</h1>


							<div class="col-md-12">
								<table class="table table-list-search">
									<!-- 테이블시작 -->
									<thead>
										<tr>
											<th>회원종류</th>
											<th>아이디</th>
											<th>회원이름</th>
											<th>연락처</th>
										</tr>
									</thead>
									<tbody>
										<%
										ArrayList<HashMap<String, Object>>  E_members = (ArrayList) request.getAttribute("E_members");
												for (int i = 0; i < E_members.size(); i++) {
													HashMap<String, Object> member = E_members.get(i);
													String member_id = (String)member.get("member_id");
													String name = (String)member.get("name");
													String phone = (String)member.get("phone");
										%>

										<tr>
											<td>기업</td>
											<td><%=member_id%></td>
											<td><a href="<%=conPath%>/admin/member/individual/detail?enterprise_id=<%=member_id%>"><%=name%></a></td>
											<td><%=phone%></td>
										</tr>

										<%
											}
										%>
										<%
										ArrayList<HashMap<String, Object>>  I_members = (ArrayList) request.getAttribute("I_members");
												for (int i = 0; i < I_members.size(); i++) {
													HashMap<String, Object> member = I_members.get(i);
													String member_id = (String)member.get("member_id");
													String name = (String)member.get("name");
													String phone = (String)member.get("phone");
										%>

										<tr>
											<td>개인</td>
											<td><%=member_id%></td>
											<td><a href="<%=conPath%>/admin/member/individual/detail?individual_id=<%=member_id%>"><%=name%></a></td>
											<td><%=phone%></td>
										</tr>

										<%
											}
										%>

									</tbody>
								</table>
							</div>
						</div>
					</div>

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