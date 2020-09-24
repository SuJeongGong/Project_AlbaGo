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
	<%@ include file="./serve/header.jsp" %>
<!-- 검색바_area -->
    <div class="catagory_area slider_bg_1">
        <div class="container">
            	<form action="<%=request.getContextPath()%>/main/search" name="keyword" id="keyword" method="get" class="row cat_search">
                    <div class="single_input col-lg-3 col-md-3">
                        <select class="wide" name="local_category">
                            <option data-display="" value="">지역</option>
                            <option value="">전국</option>
                            <option value="서울">서울</option>
                            <option value="경기">경기</option>
                            <option value="인천">인천</option>
                            <option value="부산">부산</option>
                            <option value="대구">대구</option>
                            <option value="대전">대전</option>
                            <option value="경남">경남</option>
                            <option value="전남">전남</option>
                            <option value="충남">충남</option>
                            <option value="광주">광주</option>
                            <option value="울산">울산</option>
                            <option value="경북">경북</option>
                            <option value="전북">전북</option>
                            <option value="충북">충북</option>
                            <option value="강원">강원</option>
                            <option value="제주">제주</option>
                        </select>
                    </div>
                    <div class="single_input col-lg-3 col-md-3">
                        <select class="wide" name="enterprise_category">      
                        	 <option value="">전체</option>                                   
                             <option value="enterprise_category=외식/음료">아동,청소년</option>
                             <option value="enterprise_category=유통/판매">어르신</option>
                             <option value="enterprise_category=문화/여가/생활">장애인</option>
                             <option value="enterprise_category=서비스">여성</option>
                             <option value="enterprise_category=사무직">정신보건</option>
                             <option value="enterprise_category=고객상담/리서치">노숙인</option>
                             <option value="enterprise_category=생산/건설/노무">복지관</option>
                             <option value="enterprise_category=교육/강사">자원봉사</option>
                             <option value="enterprise_category=디자인">기타</option>
                        </select>
                    </div>
                    <div class="single_input col-lg-3 col-md-3">
                        <input type="text" placeholder="검색할 단어" name="title">
                    </div>
                    <div class="job_btn col-lg-3 col-md-3">
						<button type="submit" class="boxed-btn3 col-lg-12 col-md-12">검색</button>
					</div>
            	</form>

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
								<h3>지역별</h3>
								</p> <br />
								<h4>
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=서울">서울</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=경기">경기</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=인천">인천</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=부산">부산</a> <br /> <br /> 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=대구">대구</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=대전">대전</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=경남">경남</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=전남">전남</a> <br /> <br /> 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=충남">충남</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=광주">광주</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=울산">울산</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=경북">경북</a> <br /> <br /> 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=전북">전북</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=충북">충북</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=강원">강원</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=제주">제주</a> <br /> <br /> 
									<a href="<%=request.getContextPath()%>/recruit/list?local_category=세종">세종</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list">전국</a>
								</h4></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-3 col-xl-3 col-md-3">
					<div class="single_company">
						<ul style="display: table; margin: auto; padding: 0;">
							<li><p class="titleSub">
								<h3>카테고리</h3>
								</p> <br />
								<h4>
									<a href="<%=request.getContextPath()%>/recruit/list?enterprise_category=아동,청소년">아동,청소년</a> &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?enterprise_category=여석">여성</a>&nbsp; <br /><br />
									<a href="<%=request.getContextPath()%>/recruit/list?enterprise_category=장애인">장애인</a> &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?enterprise_category=어르신">어르신</a> &nbsp; <br /><br />
									<a href="<%=request.getContextPath()%>/recruit/list?enterprise_category=정신보건">정신보건</a> &nbsp;  &nbsp;  &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?enterprise_category=노숙인">노숙인</a> &nbsp; <br /><br />
									<a href="<%=request.getContextPath()%>/recruit/list?enterprise_category=복지관">복지관</a> &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?enterprise_category=자원봉사">자원봉사</a>&nbsp; <br /><br />
									<a href="<%=request.getContextPath()%>/recruit/list?enterprise_category=기타">기타</a> &nbsp;

								</h4></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-3 col-xl-3 col-md-3">
					<div class="single_company">
						<ul style="display: table; margin: auto; padding: 0;">
							<li><p class="titleSub">
								<h3>기간별</h3>
								</p> <br />
								<p> <br /> 
								<a href="<%=request.getContextPath()%>/recruit/list?term=하루"><i class="fas fa-calendar-alt fa-2x"></i>하루</a>
									&nbsp;&nbsp;&nbsp;&emsp;&nbsp; 
									<a href="<%=request.getContextPath()%>/recruit/list?term=일주일"><i class="fas fa-calendar-alt fa-2x"></i>일주일</a> &emsp;<br /> <br /> 
									<a href="<%=request.getContextPath()%>/recruit/list?term=1개월"><i class="fas fa-calendar-alt fa-2x"></i>1개월</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="<%=request.getContextPath()%>/recruit/list?term=3~6개월"><i class="fas fa-calendar-alt fa-2x"></i>3~6개월</a> <br /><br /> 
									<a href="<%=request.getContextPath()%>/recruit/list?term=6~12개월"><i class="fas fa-calendar-alt fa-2x"></i>6~12개월</a>
									<a href="<%=request.getContextPath()%>/recruit/list?term=1년이상"><i class="fas fa-calendar-alt fa-2x"></i>1년이상</a>
								</p></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-3 col-xl-3 col-md-3">
					<div class="single_company">
						<ul style="display: table; margin: auto; padding: 0;">
							<li><p class="titleSub">
								<h3>경력</h3>
								</p>
								<p>
									<a href="<%=request.getContextPath()%>/recruit/list?education=무관"><i class="fas fa-graduation-cap fa-2x"></i>무관</a> <br /> 
										<a href="<%=request.getContextPath()%>/recruit/list?education=신입"><i class="fas fa-graduation-cap fa-2x"></i>신입</a> <br />
										<a href="<%=request.getContextPath()%>/recruit/list?education=1~2년"><i class="fas fa-graduation-cap fa-2x"></i>1~2년</a> <br /> 
										<a href="<%=request.getContextPath()%>/recruit/list?education=3~4년"><i class="fas fa-graduation-cap fa-2x"></i>3~4년</a> <br /> 
										<a href="<%=request.getContextPath()%>/recruit/list?education=5~9년"><i class="fas fa-graduation-cap fa-2x"></i>5~9년</a><br /> 
										<a href="<%=request.getContextPath()%>/recruit/list?education=10년 이상"><i class="fas fa-graduation-cap fa-2x"></i>10년 이상</a><br />
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
						<h3>베스트</h3>
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