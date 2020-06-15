<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../serve/header.jsp" %>
	
	
	
	
	
	    <!-- job_listing_area_start  -->
    <div class="job_listing_area plus_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="job_filter white-bg">
                        <div class="form_inner white-bg">
                            <h3>검색필터</h3>
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="지역">지역</option>
                                                <option value="1">Rangpur</option>
                                                <option value="2">Dhaka </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="카테고리">카테고리</option>
                                                <option value="1">Category 1</option>
                                                <option value="2">Category 2 </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="테마">테마</option>
                                                <option value="1">Experience 1</option>
                                                <option value="2">Experience 2 </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="성별">성별</option>
                                                <option value="1">여자</option>
                                                <option value="2">남자</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="최종학력">최종학력</option>
                                                <option value="1">Qualification 1</option>
                                                <option value="2">Qualification 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="근무기간">근무기간</option>
                                                <option value="1">male</option>
                                                <option value="2">female</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <input type="text" placeholder="검색어">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="row">
                            &nbsp 
                            <div class="reset_btn">
                                <button  class="boxed-btn3 w-100" type="submit">초기화</button>
                            </div>&nbsp
                            <div class="reset_btn">
                                <button  class="boxed-btn3 w-100" type="submit">검&nbsp &nbsp 색</button>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="recent_joblist_wrap">
                        <div class="recent_joblist white-bg ">
                            <div class="row align-items-center">
                                <div class="col-md-6">
                                    <h4>공고글 게시판</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="serch_cat d-flex justify-content-end">
                                        <select>
                                            <option data-display="정렬 기준">정렬 기준</option>
                                            <option value="1">Marketer</option>
                                            <option value="2">Wordpress </option>
                                            <option value="4">Designer</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="job_lists m-0">
                        <div class="row">

                            <div class="col-lg-12 col-md-12">
                                <div class="single_jobs white-bg d-flex justify-content-between">
                                    <div class="jobs_left d-flex align-items-center">

                                        <div class="jobs_conetent">
                                            <a href="job_details.html"><h4>글제목 </h4></a>
                                            <div class="links_locat d-flex align-items-center">
                                                <div class="location">
                                                    <p> <i class="fa fa-map-marker"></i> 경기도 의정부시</p>
                                                </div>
                                                <div class="location">
                                                    <p> <i class="fa fa-clock-o"></i>2020-05-30</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="jobs_right">
                                        <div class="apply_now">
                                            <a href="job_details.html" class="boxed-btn3">글보러가기</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="pagination_wrap">
                                    <ul>
                                        <li><a href="#"> <i class="ti-angle-left"></i> </a></li>
                                        <li><a href="#"><span>01</span></a></li>
                                        <li><a href="#"><span>02</span></a></li>
                                        <li><a href="#"> <i class="ti-angle-right"></i> </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job_listing_area_end  -->
 
	
	
	
	
	
	<%@ include file="../serve/footer.jsp" %>

</body>
</html>