<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
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
<%
    String conPath = request.getContextPath();
	
	String recruitPath=conPath+"/recruit/list";
	String resumePath=conPath+"/resume/list";
	String productPath=conPath+"/product/list";
	String adPath=conPath+"/advertising/list";
	String communityPath=conPath+"/community/list";
	
	String joinLoginPath=conPath+"/join/login";
	String joinJoinPath=conPath+"/join/join";
	
	String enterpisePath=conPath+"/enterprise/mypage";
	String individualPath=conPath+"/individual/mypage";
	
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
                                    <a href="<%=request.getContextPath() %>/main">
                                        <img src="<c:url value="/img/logo.png" />" alt="로고" width="90%" hright="40%">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-7 col-lg-7">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li  class="submenu">알바</i>
                                            <li><a href="<%=recruitPath%>">지역 </a>
                                                <ul class="submenu">
                                                    <li><a href="<%=recruitPath%>?local_category=서울">서울</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=경기">경기</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=인천">인천</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=부산">부산</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=대구">대구</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=대전">대전</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=경남">경남</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=전남">전남</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=충남">충남</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=광주">광주</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=울산">울산</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=경북">경북</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=전북">전북</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=충북">충북</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=강원">강원</a></li>
                                                    <li><a href="<%=recruitPath%>?local_category=제주">제주</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="<%=recruitPath%>">카테고리 </a>
                                                <ul class="submenu">
                                                    <li><a href="<%=recruitPath%>?enterprise_category=외식/음료">외식/음료</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=유통/판매">유통/판매</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=문화/여가/생활">문화/여가/생활</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=서비스">서비스</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=사무직">사무직</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=고객상담/리서치">고객상담/리서치</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=생산/건설/노무">생산/건설/노무</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=교육/강사">교육/강사</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=디자인">디자인</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=미디어">미디어</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=운전/배달">운전/배달</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=병원/간호/연구">병원/간호/연구</a></li>
                                                    <li><a href="<%=recruitPath%>?enterprise_category=IT/컴퓨터">IT/컴퓨터</a></li>
                                                </ul>
                                            </li>
                                            <span>|</span>
                                            <li  class="submenu">인재</i>
                                            <li><a href="<%=resumePath%>">지역 </a>
                                                <ul class="submenu">
                                                    <li><a href="<%=resumePath%>?local_category=서울">서울</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=경기">경기</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=인천">인천</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=부산">부산</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=대구">대구</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=대전">대전</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=경남">경남</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=전남">전남</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=충남">충남</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=광주">광주</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=울산">울산</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=경북">경북</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=전북">전북</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=충북">충북</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=강원">강원</a></li>
                                                    <li><a href="<%=resumePath%>?local_category=제주">제주</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="<%=resumePath%>">카테고리 </a>
                                                <ul class="submenu">
                                                    <li><a href="<%=resumePath%>?enterprise_category=외식/음료">외식/음료</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=유통/판매">유통/판매</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=문화/여가/생활">문화/여가/생활</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=서비스">서비스</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=사무직">사무직</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=고객상담/리서치">고객상담/리서치</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=생산/건설/노무">생산/건설/노무</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=교육/강사">교육/강사</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=디자인">디자인</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=미디어">미디어</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=운전/배달">운전/배달</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=병원/간호/연구">병원/간호/연구</a></li>
                                                    <li><a href="<%=resumePath%>?enterprise_category=IT/컴퓨터">IT/컴퓨터</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="<%=communityPath %>">커뮤니티</a></li>
                                            <li><a href="<%=productPath %>">광고/상품</a>
												<ul class="submenu">
                                                    <li><a href="<%=adPath%>">광고</a></li>
                                                    <li><a href="<%=productPath%>">상품</a></li>
                                                </ul>
                                                </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            
                            
<% if (	session.getAttribute("id")==null){
	%>
	
	 
                            <div class="col-xl-3 col-md-3 col-lg-3 d-none d-lg-block">
                                <div class="Appointment">
                                    <div class="phone_num d-none d-xl-block">
                                        <a href="<%=joinLoginPath%>" class="boxed-btn4">로그인</a>
                                    </div>
                                    <div class="d-none d-lg-block">
                                        <a href="<%=joinJoinPath %>" class="boxed-btn3" >회원가입</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
	
	
	<%
}else{
	
	if(session.getAttribute("type").toString().equals("기업")){
		
	%>
	
	 
                            <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                                <div class="Appointment">
                                	<div class="phone_num d-none d-xl-block">
                                        <a href="<%=conPath%>/join/logout" class="boxed-btn4">로그아웃</a>
                                    </div>
                                    <div class="d-none d-lg-block">
                                        <a href="<%=conPath%>/enterprise/mypage" class="boxed-btn3" >마이페이지</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
	
	<%
	}
	else{
		
		
		%>
					         <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                                <div class="Appointment">
                                    <div class="phone_num d-none d-xl-block">
                                        <a href="<%=conPath%>/join/logout" class="boxed-btn4">로그아웃</a>
                                    </div>
                                    <div class="d-none d-lg-block">
                                        <a href="<%=conPath%>/individual/mypage" class="boxed-btn3" >마이페이지</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
		
		
		
		<%
	}
}
%>
                            
                           
                            
                            
                            
                            
                            
                            
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