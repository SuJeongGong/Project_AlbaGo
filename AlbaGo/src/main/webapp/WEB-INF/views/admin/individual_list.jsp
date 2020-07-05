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
	<%
		String urlCategory = "";
		String urlSearch = "";
		HashMap<String, Object> map = (HashMap<String, Object>) request.getAttribute("map");//검색 조건
		if (map != null) {
			urlCategory = (String) map.get("category");
			urlSearch = (String) map.get("search");
			if (urlCategory == null) {
				urlCategory = "";
			}
			if (urlSearch == null) {
				urlSearch = "";
			}
		}
	%>
	<script type="text/javascript">
		function page(page){
			var page = page;
			location.href="?page="+page+"&category=<%=urlCategory%>&search=<%=urlSearch%>";

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

					<div class="container">

						<hr />
						<h1 class="h3 mb-2 text-gray-800">개인 검색</h1>
						<hr />

						<div class="row">
							<div class="col-md-12">
								<form
									action="<%=request.getContextPath()%>/admin/member/individual"
									method="get" name="keyword" id="keyword">

									<div class="input-group">
										<!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
										<select id="category" name="category">
											<option value="individual_id" id="individual_id">아이디</option>
											<option value="name" id="name">이름</option>
											<option value="phone" id="phone">연락처</option>
										</select> <input type="text" class="form-control form-control-sm"
											name="search">
										<!-- 검색내용입력 -->
										<span class="input-group-btn">
											<button class="btn btn-sm btn-primary" type="submit">검색</button>
										</span>
									</div>
								</form>
							</div>

							<div class="col-md-12">
								<table class="table table-list-search">
									<!-- 테이블시작 -->
									<thead>
										<tr>
											<th>회원이름</th>
											<th>아이디</th>
											<th>비밀번호</th>
											<th>연락처</th>
										</tr>
									</thead>
									<tbody>
										<%
											ArrayList<Individual> individuals = (ArrayList) request.getAttribute("individuals");
											for (int i = 0; i < individuals.size(); i++) {
												Individual list = individuals.get(i);
												String individual_id = list.getIndividual_id();
												String password = list.getPassword();
												String name = list.getName();
												String gender = list.getGender();
												String birth = list.getBirth();
												String phone = list.getPhone();
												String education = list.getEducation();
												String date = list.getDate();
										%>

										<tr>
											<td><a
												href="<%=conPath%>/admin/member/individual/detail?individual_id=<%=individual_id%>"><%=name%></a></td>
											<td><%=individual_id%></td>
											<td><%=password%></td>
											<td><%=phone%></td>
										</tr>

										<%
											}
										%>

									</tbody>
								</table>
							</div>


							<div class="text-center" style="float: left;">
								<ul class="pagination">
									<%
										int pageNum = (int) request.getAttribute("pageNum");
										int count = (int) request.getAttribute("count");
										System.out.println(pageNum);
										System.out.println(count);
										if (pageNum > 1) {//<
									%>
									<li class="page-item disabled"><a class="page-link"
										href="javascript:page(<%=pageNum + 1%>)">Previous</a></li>
									<%
										}
										for (int i = 1; i <= count; i++) {//각각 번호
									%>

									<li class="page-item"><a class="page-link"
										href="javascript:page(<%=i%>)"><%=i%> </a></li>
									<%
										}
										if (pageNum < count) {//>
									%>

									<li class="page-item"><a class="page-link"
										href="javascript:page(<%=pageNum + 1%>)">Next</a></li>
									<%
										}
									%>
								</ul>
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