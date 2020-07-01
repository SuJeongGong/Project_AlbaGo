<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>

<!DOCTYPE html>
<html>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<head>
<meta charset="UTF-8">
<title>알바GO</title>
</head>
<body>
	${sessionScop.id}
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
                            <option value="외식/음료">외식/음료</option>
                            <option value="유통/판매">유통/판매</option>
                            <option value="문화/여가/생활">문화/여가/생활</option>
                            <option value="서비스">서비스</option>
                            <option value="사무직">사무직</option>
                            <option value="고객상담/리서치">고객상담/리서치</option>
                            <option value="생산/건설/노무">생산/건설/노무</option>
                            <option value="교육/강사">교육/강사</option>
                            <option value="디자인">디자인</option>
                            <option value="운전/배달">운전/배달</option>
                            <option value="병원/간호/연구">병원/간호/연구</option>
                            <option value="IT/컴퓨터">IT/컴퓨터</option>
                        </select>
                    </div>
                    <div class="single_input col-lg-3 col-md-3">
                        <input type="text" placeholder="검색할 단어" name="title">
                    </div>
                    <div class="job_btn col-lg-3 col-md-3">
						<button type="submit" class="boxed-btn3">검색</button>
					</div>
            	</form>

        </div>
    </div>
    <!--/ 검색바_area -->
	
    <!-- 아이콘메뉴_start  -->
    <div class="top_companies_area">
        <div class="container">
            <div class="row align-items-center mb-40">
            </div>
            <div class="row">
                <div class="col-lg-3 col-xl-3 col-md-3">
                    <div class="single_company">
                    <ul style="display: table; margin: auto; padding:0;">
                    	<li ><p class="titleSub"><h3>우리동네 알바</h3></p>
                    	<br />
							<h4>
								<a href="#">서울</a> &nbsp;
								<a href="#">경기</a> &nbsp;
								<a href="#">인천</a> &nbsp;
								<a href="#">부산</a>  <br /><br />
								<a href="#">대구</a> &nbsp;
								<a href="#">대전</a> &nbsp;
								<a href="#">경남</a> &nbsp;
								<a href="#">전남</a>  <br/><br />
								<a href="#">충남</a> &nbsp;
								<a href="#">광주</a> &nbsp;
								<a href="#">울산</a> &nbsp;
								<a href="#">경북</a> <br/><br />
								<a href="#">전북</a> &nbsp;
								<a href="#">충북</a> &nbsp;
								<a href="#">강원</a> &nbsp;
								<a href="#">제주</a> <br/><br />
								<a href="#">세종</a> &nbsp;
								<a href="#">전국</a>
							</h4>
						</li>
					 </ul>
                    </div>
                </div>
                
                <div class="col-lg-3 col-xl-3 col-md-3">
                    <div class="single_company">
                    <ul style="display: table; margin: auto; padding:0;">
                    	<li ><p class="titleSub"><h3>카테고리별 알바</h3></p>
                    	<br />
							<p>
								<a href="#"><i class="fas fa-utensils fa-1x"></i>외식/음료</a> &emsp;
								<a href="#"><i class="fas fa-shopping-cart fa-1x"></i>유통/판매 </a> &nbsp;
								<a href="#"><i class="fab fa-fort-awesome fa-1x"></i>문화/여가/생활 </a>  &nbsp;
								<a href="#"><i class="fas fa-concierge-bell fa-1x"></i>서비스</a>
								<a href="#"><i class="fas fa-pen-fancy fa-1x"></i>사무직</a>
								<a href="#"><i class="fas fa-headset fa-1x"></i>고객상담/리서치</a>
								<a href="#"><i class="fas fa-hammer fa-1x"></i>생산/건설/노무</a>  &nbsp;
								<a href="#"><i class="fas fa-paint-brush fa-1x"></i>디자인</a>
								<a href="#"><i class="fas fa-truck fa-1x"></i>운전/배달</a> &nbsp;
								<a href="#"><i class="fas fa-chalkboard-teacher fa-1x"></i>교육/강사</a>
								<a href="#"><i class="fas fa-desktop fa-1x"></i>IT/컴퓨터</a> &emsp;
								<a href="#"><i class="fas fa-video fa-1x"></i>미디어</a> &emsp;
								<a href="#"><i class="fas fa-user-md fa-1x"></i>병원/간호/연구</a>
								 
							</p>
						</li>
					 </ul>
                    </div>
                </div>
                
                
               
               
                
                
                <div class="col-lg-3 col-xl-3 col-md-3">
                    <div class="single_company">
                    <ul style="display: table; margin: auto; padding:0;">
                        <li><p class="titleSub"><h3>테마 알바</h3></p>
                        <br />
							<p>
								<a href="#"><i class="fas fa-calendar-alt fa-2x"></i>단기알바</a> &emsp;
								<a href="#"><i class="fas fa-calendar-alt fa-2x"></i>3~6개월</a> &emsp; <br/>
								<a href="#"><i class="fas fa-calendar-alt fa-2x"></i>6~12개월</a> &nbsp;&nbsp;
								<a href="#"><i class="fas fa-moon fa-2x"></i>12개월</a><br /><br />
								<a href="#"><i class="fas fa-male fa-2x"></i>남성 전용</a> &emsp;&nbsp;
								<a href="#"><i class="fas fa-female fa-2x"></i>여성 전용</a> &emsp; <br/>
							</p>
							</li>
						</ul>
                    </div>
                </div>
                
                <div class="col-lg-3 col-xl-3 col-md-3">
                    <div class="single_company">
                    <ul style="display: table; margin: auto; padding:0;">
                        <li><p class="titleSub"><h3>최종학력</h3></p>
                        <br />
                       
							<p>		
								<a href="#"><i class="fas fa-graduation-cap fa-2x"></i>중학교 졸업</a> <br/>
								<a href="#"><i class="fas fa-graduation-cap fa-2x"></i>고등학교 졸업</a> <br/>
								<a href="#"><i class="fas fa-graduation-cap fa-2x"></i>대학교(2,3년) 졸업</a> <br/>
								<a href="#"><i class="fas fa-graduation-cap fa-2x"></i>대학교(4년) 졸업</a><br />
							</p>
							 <br />
							 <br />
							</li>
						</ul>
                    </div>
                </div>
               </div> 
            
        </div>
    </div>
    <!-- 아이콘메뉴_end  -->


    <!-- 광고_start  -->
    <div class="popular_catagory_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="recruit/content">
                            <h4>광고문구</h4>
                        </a>
                        <p> 광고 소개 </p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html">
                            <h4>광고문구</h4>
                        </a>
                        <p> 광고 소개 </p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html">
                            <h4>광고문구</h4>
                        </a>
                        <p> 광고 소개 </p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html">
                            <h4>광고문구</h4>
                        </a>
                        <p> 광고 소개 </p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html">
                            <h4>광고문구</h4>
                        </a>
                        <p> 광고 소개 </p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html">
                            <h4>광고문구</h4>
                        </a>
                        <p> 광고 소개 </p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html">
                            <h4>광고문구</h4>
                        </a>
                        <p> 광고 소개 </p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html">
                            <h4>광고문구</h4>
                        </a>
                        <p> 광고 소개 </p>
                    </div>
                </div>


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
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="thumb">
                                        </div>
                                        <div class="info">
                                            <p>
                                                커뮤니티 글 내용 샬라샬라샬라샬라살ㄹ랴
                                            </p>
                                            <span>- 아이디</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="thumb">
                                        </div>
                                        <div class="info">
                                            <p>
                                                커뮤니티 글 내용 샬라샬라샬라샬라살ㄹ랴
                                            </p>
                                            <span>- 아이디</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="thumb">
                                        </div>
                                        <div class="info">
                                            <p>
                                                커뮤니티 글 내용 샬라샬라샬라샬라살ㄹ랴
                                            </p>
                                            <span>- 아이디</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 커뮤니티_area  -->

 <!-- featured_candidates_area_start  -->
    <div class="featured_candidates_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_title text-center mb-40">
                        <h3>Featured Candidates</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="candidate_active owl-carousel">
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/1.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/2.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/3.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/4.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/5.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/6.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/7.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/8.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/9.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/9.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/10.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/3.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                        <div class="single_candidates text-center">
                            <div class="thumb">
                                <img src="img/candiateds/4.png" alt="">
                            </div>
                            <a href="#"><h4>Markary Jondon</h4></a>
                            <p>Software Engineer</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- featured_candidates_area_end  -->

	
	
	
	
	
	
	
	
	
	<%@ include file="./serve/footer.jsp" %>

</body>
</html>