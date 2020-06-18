<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="<c:url value="site.webmanifest"/>">
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/img/favicon.png"/>">

    <!-- CSS here -->
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/css/owl.carousel.min.css" />">
    <link rel="stylesheet" href="<c:url value="/css/magnific-popup.css" />">
    <link rel="stylesheet" href="<c:url value="/css/font-awesome.min.css" />">
    <link rel="stylesheet" href="<c:url value="/css/themify-icons.css" />">
    <link rel="stylesheet" href="<c:url value="/css/nice-select.css" />">
    <link rel="stylesheet" href="<c:url value="/css/flaticon.css" />">
    <link rel="stylesheet" href="<c:url value="/css/gijgo.css" />">
    <link rel="stylesheet" href="<c:url value="/css/animate.min.css" />">
    <link rel="stylesheet" href="<c:url value="/css/slicknav.css" />">

    <link rel="stylesheet" href="<c:url value="/css/style.css" />">
    <link rel="stylesheet" href="<c:url value="/css/responsive" />">
    <%

	String url= request.getRequestURL().toString();
	String uri=request.getRequestURI().toString();
	String context=request.getContextPath();
	String basicPath=url.split(uri)[0];
	
	String recruitPath=basicPath+"/ex/recruit/list";
	String resumePath=basicPath+"/ex/resume/list";
	String productPath=basicPath+"/ex/product/list";
	String communityPath=basicPath+"/ex/community/list";
	
	String joinLoginPath=basicPath+"/ex/join/login";
	String joinJoinPath=basicPath+"/ex/join/join";
	
	String enterpisePath=basicPath+"/ex/enterprise/mypage";
	String individualPath=basicPath+"/ex/individual/mypage";
	

%>
</head>
<body>

   <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid ">
                    <div class="header_bottom_border">
                        <div class="row align-items-center">
                            <div class="col-xl-2 col-lg-2">                        
                                <div class="logo">                                     <!-- 로고자리_area -->        
                                    <a href="main.jsp">
                                        <img src="img/logo2.JPG" alt="로고" width="200" hright="100">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-8 col-lg-8">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li  class="submenu">알바</i>
                                            <li><a href="#">지역 </a>
                                                <ul class="submenu">
                                                    <li><a href="<%=recruitPath%>">서울</a></li>
                                                    <li><a href="<%=recruitPath%>">경기</a></li>
                                                    <li><a href="<%=recruitPath%>">인천</a></li>
                                                    <li><a href="<%=recruitPath%>">부산</a></li>
                                                    <li><a href="<%=recruitPath%>">대구</a></li>
                                                    <li><a href="<%=recruitPath%>">대전</a></li>
                                                    <li><a href="<%=recruitPath%>">경남</a></li>
                                                    <li><a href="<%=recruitPath%>">전남</a></li>
                                                    <li><a href="<%=recruitPath%>">충남</a></li>
                                                    <li><a href="<%=recruitPath%>">광주</a></li>
                                                    <li><a href="<%=recruitPath%>">울산</a></li>
                                                    <li><a href="<%=recruitPath%>">경북</a></li>
                                                    <li><a href="<%=recruitPath%>">전북</a></li>
                                                    <li><a href="<%=recruitPath%>">충북</a></li>
                                                    <li><a href="<%=recruitPath%>">강원</a></li>
                                                    <li><a href="<%=recruitPath%>">제주</a></li>
                                                    <li><a href="<%=recruitPath%>">전국</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">카테고리 </a>
                                                <ul class="submenu">
                                                    <li><a href="<%=recruitPath%>">외식/음료</a></li>
                                                    <li><a href="<%=recruitPath%>">유통/판매</a></li>
                                                    <li><a href="<%=recruitPath%>">문화/여가/생활</a></li>
                                                    <li><a href="<%=recruitPath%>">서비스</a></li>
                                                    <li><a href="<%=recruitPath%>">사무직</a></li>
                                                    <li><a href="<%=recruitPath%>">고객상담/리서치</a></li>
                                                    <li><a href="<%=recruitPath%>">생산/건설/노무</a></li>
                                                    <li><a href="<%=recruitPath%>">교육/강사</a></li>
                                                    <li><a href="<%=recruitPath%>">디자인</a></li>
                                                    <li><a href="<%=recruitPath%>">미디어</a></li>
                                                    <li><a href="<%=recruitPath%>">운전/배달</a></li>
                                                    <li><a href="<%=recruitPath%>">병원/간호/연구</a></li>
                                                    <li><a href="<%=recruitPath%>">IT/컴퓨터</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">테마</a>
                                                <ul class="submenu">
                                                    <li><a href="<%=recruitPath%>">주휴수당</a></li>
                                                    <li><a href="<%=recruitPath%>">대학생</a></li>
                                                    <li><a href="<%=recruitPath%>">주부</a></li>
                                                    <li><a href="<%=recruitPath%>">청소년</a></li>
                                                    <li><a href="<%=recruitPath%>">외국인</a></li>
                                                    <li><a href="<%=recruitPath%>">장년</a></li>
                                                </ul>
                                            </li>
                                            <span>|</span>
                                            <li  class="submenu">인재</i>
                                            <li><a href="<%=resumePath%>">지역 </a>
                                                <ul class="submenu">
                                                    <li><a href="<%=resumePath%>">서울</a></li>
                                                    <li><a href="<%=resumePath%>">경기</a></li>
                                                    <li><a href="<%=resumePath%>">인천</a></li>
                                                    <li><a href="<%=resumePath%>">부산</a></li>
                                                    <li><a href="<%=resumePath%>">대구</a></li>
                                                    <li><a href="<%=resumePath%>">대전</a></li>
                                                    <li><a href="<%=resumePath%>">경남</a></li>
                                                    <li><a href="<%=resumePath%>">전남</a></li>
                                                    <li><a href="<%=resumePath%>">충남</a></li>
                                                    <li><a href="<%=resumePath%>">광주</a></li>
                                                    <li><a href="<%=resumePath%>">울산</a></li>
                                                    <li><a href="<%=resumePath%>">경북</a></li>
                                                    <li><a href="<%=resumePath%>">전북</a></li>
                                                    <li><a href="<%=resumePath%>">충북</a></li>
                                                    <li><a href="<%=resumePath%>">강원</a></li>
                                                    <li><a href="<%=resumePath%>">제주</a></li>
                                                    <li><a href="<%=resumePath%>">전국</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">카테고리 </a>
                                                <ul class="submenu">
                                                    <li><a href="<%=resumePath%>">외식/음료</a></li>
                                                    <li><a href="<%=resumePath%>">유통/판매</a></li>
                                                    <li><a href="<%=resumePath%>">문화/여가/생활</a></li>
                                                    <li><a href="<%=resumePath%>">서비스</a></li>
                                                    <li><a href="<%=resumePath%>">사무직</a></li>
                                                    <li><a href="<%=resumePath%>">고객상담/리서치</a></li>
                                                    <li><a href="<%=resumePath%>">생산/건설/노무</a></li>
                                                    <li><a href="<%=resumePath%>">교육/강사</a></li>
                                                    <li><a href="<%=resumePath%>">디자인</a></li>
                                                    <li><a href="<%=resumePath%>">미디어</a></li>
                                                    <li><a href="<%=resumePath%>">운전/배달</a></li>
                                                    <li><a href="<%=resumePath%>">병원/간호/연구</a></li>
                                                    <li><a href="<%=resumePath%>">IT/컴퓨터</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="<%=communityPath %>">커뮤니티</a></li>


                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-1 d-none d-lg-block">
                                <div class="Appointment">
                                    <div class="phone_num d-none d-xl-block">
                                        <a href="<%=joinLoginPath%>">로그인</a>
                                    </div>
                                    <div class="d-none d-lg-block">
                                        <a href="<%=joinJoinPath %>" class="boxed-btn3" >회원가입</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>
    <div class=" bradcam_bg_1">
        <div class="container">
            <div class="bradcam_text">
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </div>




 <!-- link that opens popup -->
 


</body>
</html>