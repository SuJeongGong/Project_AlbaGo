<%@page import="com.spring.ex.dto.BoardCommunity"%>
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





	<!--================Blog Area =================-->
	<section class="blog_area section-padding">
		<div class="container">
		<h1>커뮤니티</h1>
			<div class="row">
				<div class="col-lg-12 mb-5 mb-lg-0">
					<div class="blog_left_sidebar">
						<%
							ArrayList<BoardCommunity> communitys = (ArrayList<BoardCommunity>) request.getAttribute("communitys");
						for (int i = 0; i < communitys.size(); i++) {
							BoardCommunity community = communitys.get(i);
							
							String title = community.getTitle();
							int c_id = community.getCommunity_id();
							String id = community.getIndividual_id();
							String date = community.getDate();
							int views = community.getViews();
						%>



						<article class="blog_item">
							<div class="blog_details">
								<div class="row">
									<div class="col-lg-5"><i class="fa fa-clock-o "></i><%=date.split(":")[0]%>:<%=date.split(":")[1]%></div>
									<p class="col-lg-4"><%=id%></p>
										<p class ="col-lg-2">조회수</p><p class ="col-lg-1"><%=views%></p>
								</div>
								<a class="d-inline-block" href="<%=request.getContextPath()%>/community/content?community_id=<%=c_id%>">
									<h2><%=title%></h2>
								</a>
								
								
							</div>
						</article>



						<%
							}
						%>



						<nav class="blog-pagination justify-content-center d-flex">

							<ul class="pagination">
								<li class="page-item"><a href="#" class="page-link"
									aria-label="Previous"> <i class="ti-angle-left"></i>
								</a></li>
								<li class="page-item"><a href="#" class="page-link">1</a></li>
								<li class="page-item active"><a href="#" class="page-link">2</a>
								</li>
								<li class="page-item"><a href="#" class="page-link"
									aria-label="Next"> <i class="ti-angle-right"></i>
								</a></li>
							</ul>

							<a class="boxed-btn3" href="write">글쓰기</a>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Blog Area =================-->






	<%@ include file="../serve/footer.jsp"%>

</body>
</html>