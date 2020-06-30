<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<head>
<meta charset="UTF-8">
<title>알바GO</title>
</head>
<body>
	${sessionScop.id}
	<%@ include file="./serve/header.jsp"%>
	<!-- 검색바_area -->
	<div class="catagory_area slider_bg_1">
		<div class="container">
			<div class="row cat_search">
				<div class="single_input col-lg-3 col-md-3">
					<select class="wide">
						<option data-display="지역">지역</option>
						<option value="1">서울</option>
						<option value="1">경기</option>
						<option value="1">인천</option>
						<option value="1">부산</option>
						<option value="1">대구</option>
						<option value="1">대전</option>
						<option value="1">경남</option>
						<option value="1">전남</option>
						<option value="1">충남</option>
						<option value="1">광주</option>
						<option value="1">울산</option>
						<option value="1">경북</option>
						<option value="1">전북</option>
						<option value="1">충북</option>
						<option value="1">강원</option>
						<option value="1">제주</option>
						<option value="1">전국</option>
					</select>
				</div>
				<div class="single_input col-lg-3 col-md-3">
					<select class="wide">
						<option data-display="카테고리">카테고리</option>
						<option value="1">외식/음료</option>
						<option value="2">유통/판매</option>
						<option value="4">문화/여가/생활</option>
						<option value="1">서비스</option>
						<option value="2">사무직</option>
						<option value="4">고객상담/리서치</option>
						<option value="1">생산/건설/노무</option>
						<option value="2">교육/강사</option>
						<option value="4">디자인</option>
						<option value="1">미디어</option>
						<option value="2">운전/배달</option>
						<option value="4">병원/간호/연구</option>
						<option value="1">IT/컴퓨터</option>
					</select>
				</div>
				<div class="single_input col-lg-3 col-md-3">
					<input type="text" placeholder="검색할 단어">
				</div>
				<div class="job_btn col-lg-3 col-md-3">
					<a href="#" class="boxed-btn3">검색</a>
				</div>
			</div>

		</div>
	</div>
	<!--/ 검색바_area -->

	<!-- 아이콘메뉴_start  -->
	<div class="top_companies_area">
		<div class="container">
			<div class="row align-items-center mb-40"></div>
			<div class="row">
				<div class="col-lg-3 col-xl-3 col-md-3">
					<div class="single_company">
						<ul style="display: table; margin: auto; padding: 0;">
							<li><p class="titleSub">
								<h3>우리동네 알바</h3>
								</p> <br />
								<h4>
									<a href="#">서울</a> &nbsp; <a href="#">경기</a> &nbsp; <a href="#">인천</a>
									&nbsp; <a href="#">부산</a> <br />
									<br /> <a href="#">대구</a> &nbsp; <a href="#">대전</a> &nbsp; <a
										href="#">경남</a> &nbsp; <a href="#">전남</a> <br />
									<br /> <a href="#">충남</a> &nbsp; <a href="#">광주</a> &nbsp; <a
										href="#">울산</a> &nbsp; <a href="#">경북</a> <br />
									<br /> <a href="#">전북</a> &nbsp; <a href="#">충북</a> &nbsp; <a
										href="#">강원</a> &nbsp; <a href="#">제주</a> <br />
									<br /> <a href="#">세종</a> &nbsp; <a href="#">전국</a>
								</h4></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-3 col-xl-3 col-md-3">
					<div class="single_company">
						<ul style="display: table; margin: auto; padding: 0;">
							<li><p class="titleSub">
								<h3>카테고리별 알바</h3>
								</p> <br />
								<p>
									<a href="#"><i class="fas fa-utensils fa-1x"></i>외식/음료</a>
									&emsp; <a href="#"><i class="fas fa-shopping-cart fa-1x"></i>유통/판매
									</a> &nbsp; <a href="#"><i class="fab fa-fort-awesome fa-1x"></i>문화/여가/생활
									</a> &nbsp; <a href="#"><i class="fas fa-concierge-bell fa-1x"></i>서비스</a>
									<a href="#"><i class="fas fa-pen-fancy fa-1x"></i>사무직</a> <a
										href="#"><i class="fas fa-headset fa-1x"></i>고객상담/리서치</a> <a
										href="#"><i class="fas fa-hammer fa-1x"></i>생산/건설/노무</a>
									&nbsp; <a href="#"><i class="fas fa-paint-brush fa-1x"></i>디자인</a>
									<a href="#"><i class="fas fa-truck fa-1x"></i>운전/배달</a> &nbsp;
									<a href="#"><i class="fas fa-chalkboard-teacher fa-1x"></i>교육/강사</a>
									<a href="#"><i class="fas fa-desktop fa-1x"></i>IT/컴퓨터</a>
									&emsp; <a href="#"><i class="fas fa-video fa-1x"></i>미디어</a>
									&emsp; <a href="#"><i class="fas fa-user-md fa-1x"></i>병원/간호/연구</a>

								</p></li>
						</ul>
					</div>
				</div>






				<div class="col-lg-3 col-xl-3 col-md-3">
					<div class="single_company">
						<ul style="display: table; margin: auto; padding: 0;">
							<li><p class="titleSub">
								<h3>기간별 알바</h3>
								</p> <br />
								<p>
									<br /> <a href="#"><i class="fas fa-calendar-alt fa-2x"></i>하루</a>
									&nbsp;&nbsp;&nbsp;&emsp;&nbsp; <a href="#"><i
										class="fas fa-calendar-alt fa-2x"></i>일주일</a> &emsp;<br />
									<br /> <a href="#"><i class="fas fa-calendar-alt fa-2x"></i>1개월</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="#"><i class="fas fa-calendar-alt fa-2x"></i>3~6개월</a>
									<br />
									<br /> <a href="#"><i class="fas fa-calendar-alt fa-2x"></i>6~12개월</a>
									<a href="#"><i class="fas fa-calendar-alt fa-2x"></i>1년이상</a>
								</p></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-3 col-xl-3 col-md-3">
					<div class="single_company">
						<ul style="display: table; margin: auto; padding: 0;">
							<li><p class="titleSub">
								<h3>최종학력</h3>
								</p>
								<p>
									<a href="#"><i class="fas fa-graduation-cap fa-2x"></i>초등학교
										졸업</a> <br /> <a href="#"><i
										class="fas fa-graduation-cap fa-2x"></i>중학교 졸업</a> <br /> <a
										href="#"><i class="fas fa-graduation-cap fa-2x"></i>고등학교
										졸업</a> <br /> <a href="#"><i
										class="fas fa-graduation-cap fa-2x"></i>대학교(2,3년) 졸업</a> <br /> <a
										href="#"><i class="fas fa-graduation-cap fa-2x"></i>대학교(4년)
										졸업</a><br /> <a href="#"><i
										class="fas fa-graduation-cap fa-2x"></i>대학원 졸업 이상</a><br />
								</p></li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- 아이콘메뉴_end  -->

	<!--광고자리  -->
	<div class="featured_candidates_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section_title text-center mb-40">
						<h3>추천 알바</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="candidate_active owl-carousel">


						<%
							ArrayList<HashMap<String, Object>> AdList = (ArrayList<HashMap<String, Object>>) request
									.getAttribute("Advertising");
							for (int i = 0; i < AdList.size(); i++) {
						%>
						<div class="single_candidates text-center">
							<a
								href="<%=request.getContextPath()%>/recruit/content?board_recruit_id=<%=AdList.get(i).get("board_recruit_id")%>"><h4><%=AdList.get(i).get("adTitle")%></h4></a>
							<p><%=AdList.get(i).get("title")%></p>
						</div>

						<%
							}
						%>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- featured_candidates_area_end  -->




	<!-- 광고_start  -->
	<div class="popular_catagory_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section_title text-center mb-40">
						<h3>상품</h3>
					</div>
				</div>
			</div>
			<div class="row">
				
				
						<%
							ArrayList<HashMap<String, Object>> productList = (ArrayList<HashMap<String, Object>>) request.getAttribute("product");
							for (int i = 0; i < productList.size(); i++) {
						%>
	
				
				<div class="col-lg-4 col-xl-3 col-md-6">
					<div class="single_catagory">
						<a href="<%=request.getContextPath()%>/product/payment?product_id=<%=productList.get(i).get("product_id")%>">
							<h4><%=productList.get(i).get("productName")%></h4>
						</a>
						<p><%=productList.get(i).get("explan")%></p>
					</div>
				</div>
						<%
							}
						%>
				
				
				
				

	

			</div>
		</div>
	</div>
	<!-- 광고_end  -->









	<!-- 커뮤니티_area  -->
	<div class="testimonial_area  ">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section_title text-center mb-40">
						<h3>커뮤니티</h3>
					</div>
				</div>
				<div class="col-xl-12">
					<div class="testmonial_active owl-carousel">
						
						
										
						<%
							ArrayList<HashMap<String, Object>> community = (ArrayList<HashMap<String, Object>>) request.getAttribute("community");
							for (int i = 0; i < community.size(); i++) {
						%>
	
				
							<div class="single_carousel">
							<div class="row">
								<div class="col-lg-6">
									<div class="single_testmonial d-flex align-items-center">
										<div class="info">
											<p><a href ="<%=request.getContextPath()%>/community/content?community_id=<%=community.get(i).get("community_id")%>"><%=community.get(i).get("title")%></a></p>
											<span>-<%=community.get(i).get("individual_id")%></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%
							}
						%>
						
						
			
	
	
	
	
	
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 커뮤니티_area  -->




	<%@ include file="./serve/footer.jsp"%>

</body>
</html>