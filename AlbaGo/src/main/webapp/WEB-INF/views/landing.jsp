<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알바GO</title>
</head>
<body>
	<%@ include file="./serve/header.jsp" %>
	
	
	<!-- slider_area_start -->
    <div class="slider_area">
        <div class="single_slider  d-flex align-items-center slider_bg_1">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-6">
                        <div class="slider_text">
                            <h5 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">사회복지와 관련된 일자리 검색
                            </h5>
                            <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">복지GO에서 찾아보세요
                            </h3>
                            <p class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".4s"></p>
                            <div class="sldier_btn wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".5s">
                                <a href="<%=request.getContextPath() %>/main" class="boxed-btn3">복지GO 홈화면으로 이동</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ilstration_img wow fadeInRight d-none d-lg-block text-right" data-wow-duration="1s"
            data-wow-delay=".2s">
            <img src="img/banner/illustration.png" alt="">
        </div>
    </div>
    <!-- slider_area_end -->

	
 
	
	
	
	
	
	<%@ include file="./serve/footer.jsp" %>

</body>
</html>