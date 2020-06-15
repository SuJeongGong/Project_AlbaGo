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

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/img/favicon.png"/>">
    <!-- Place favicon.ico in the root directory -->

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
    <!-- <link rel="stylesheet" href="<c:url value="css/responsive" />"> -->
</head>
<body>
   <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid ">
                    <div class="header_bottom_border">
                        <div class="row align-items-center">
                            <div class="col-xl-2 col-lg-2">
                                <div class="logo">
                                    <a href="index.html">
                                        <img src="img/logo.png" alt="">
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
                                                    <li><a href="">서울</a></li>
                                                    <li><a href="">경기</a></li>
                                                    <li><a href="">인천</a></li>
                                                    <li><a href="">부산</a></li>
                                                    <li><a href="">대구</a></li>
                                                    <li><a href="">대전</a></li>
                                                    <li><a href="">경남</a></li>
                                                    <li><a href="">전남</a></li>
                                                    <li><a href="">충남</a></li>
                                                    <li><a href="">광주</a></li>
                                                    <li><a href="">울산</a></li>
                                                    <li><a href="">경북</a></li>
                                                    <li><a href="">전북</a></li>
                                                    <li><a href="">충북</a></li>
                                                    <li><a href="">강원</a></li>
                                                    <li><a href="">제주</a></li>
                                                    <li><a href="">전국</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">카테고리 </a>
                                                <ul class="submenu">
                                                    <li><a href="">외식/음료</a></li>
                                                    <li><a href="">유통/판매</a></li>
                                                    <li><a href="">문화/여가/생활</a></li>
                                                    <li><a href="">서비스</a></li>
                                                    <li><a href="">사무직</a></li>
                                                    <li><a href="">고객상담/리서치</a></li>
                                                    <li><a href="">생산/건설/노무</a></li>
                                                    <li><a href="">교육/강사</a></li>
                                                    <li><a href="">디자인</a></li>
                                                    <li><a href="">미디어</a></li>
                                                    <li><a href="">운전/배달</a></li>
                                                    <li><a href="">병원/간호/연구</a></li>
                                                    <li><a href="">IT/컴퓨터</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">테마</a>
                                                <ul class="submenu">
                                                    <li><a href="blog.html">주휴수당</a></li>
                                                    <li><a href="single-blog.html">대학생</a></li>
                                                    <li><a href="single-blog.html">주부</a></li>
                                                    <li><a href="single-blog.html">청소년</a></li>
                                                    <li><a href="single-blog.html">외국인</a></li>
                                                    <li><a href="single-blog.html">장년</a></li>
                                                </ul>
                                            </li>
                                            <span>|</span>
                                            <li  class="submenu">인재</i>
                                            <li><a href="#">지역 </a>
                                                <ul class="submenu">
                                                    <li><a href="">서울</a></li>
                                                    <li><a href="">경기</a></li>
                                                    <li><a href="">인천</a></li>
                                                    <li><a href="">부산</a></li>
                                                    <li><a href="">대구</a></li>
                                                    <li><a href="">대전</a></li>
                                                    <li><a href="">경남</a></li>
                                                    <li><a href="">전남</a></li>
                                                    <li><a href="">충남</a></li>
                                                    <li><a href="">광주</a></li>
                                                    <li><a href="">울산</a></li>
                                                    <li><a href="">경북</a></li>
                                                    <li><a href="">전북</a></li>
                                                    <li><a href="">충북</a></li>
                                                    <li><a href="">강원</a></li>
                                                    <li><a href="">제주</a></li>
                                                    <li><a href="">전국</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">카테고리 </a>
                                                <ul class="submenu">
                                                    <li><a href="">외식/음료</a></li>
                                                    <li><a href="">유통/판매</a></li>
                                                    <li><a href="">문화/여가/생활</a></li>
                                                    <li><a href="">서비스</a></li>
                                                    <li><a href="">사무직</a></li>
                                                    <li><a href="">고객상담/리서치</a></li>
                                                    <li><a href="">생산/건설/노무</a></li>
                                                    <li><a href="">교육/강사</a></li>
                                                    <li><a href="">디자인</a></li>
                                                    <li><a href="">미디어</a></li>
                                                    <li><a href="">운전/배달</a></li>
                                                    <li><a href="">병원/간호/연구</a></li>
                                                    <li><a href="">IT/컴퓨터</a></li>
                                                </ul>
                                            </li>
                                            <span>|</span>
                                            <li><a href="jobs.html">커뮤니티</a></li>


                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-1 d-none d-lg-block">
                                <div class="Appointment">
                                    <div class="phone_num d-none d-xl-block">
                                        <a href="#">로그인</a>
                                    </div>
                                    <div class="d-none d-lg-block">
                                        <a class="boxed-btn3" href="#">회원가입</a>
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
    <!-- JS here -->
    <script src="<c:url value="/js/vendor/modernizr-3.5.0.min.js" />"></script>
    <script src="<c:url value="/js/vendor/jquery-1.12.4.min.js" />"></script>
    <script src="<c:url value="/js/popper.min.js" />"></script>
    <script src="<c:url value="/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/js/owl.carousel.min.js" />"></script>
    <script src="<c:url value="/js/isotope.pkgd.min.js" />"></script>
    <script src="<c:url value="/js/ajax-form.js" />"></script>
    <script src="<c:url value="/js/waypoints.min.js" />"></script>
    <script src="<c:url value="/js/jquery.counterup.min.js" />"></script>
    <script src="<c:url value="/js/imagesloaded.pkgd.min.js" />"></script>
    <script src="<c:url value="/js/scrollIt.js" />"></script>
    <script src="<c:url value="/js/jquery.scrollUp.min.js" />"></script>
    <script src="<c:url value="/js/wow.min.js" />"></script>
    <script src="<c:url value="/js/nice-select.min.js" />"></script>
    <script src="<c:url value="/js/jquery.slicknav.min.js" />"></script>
    <script src="<c:url value="/js/jquery.magnific-popup.min.js" />"></script>
    <script src="<c:url value="/js/plugins.js" />"></script>
    <script src="<c:url value="/js/gijgo.min.js" />"></script>



    <!--contact js-->
    <script src="<c:url value="/js/contact.js" />"></script>
    <script src="<c:url value="/js/jquery.ajaxchimp.min.js" />"></script>
    <script src="<c:url value="/js/jquery.form.js" />"></script>
    <script src="<c:url value="/js/jquery.validate.min.js" />"></script>
    <script src="<c:url value="/js/mail-script.js" />"></script>


    <script src="<c:url value="/js/main.js" />"></script>
</body>
</html>