<%@page import="com.spring.ex.dto.BoardRecruit1"%>
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
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
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
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="테마">테마</option>
                                                <option value="1">대학생</option>
                                                <option value="1">주부</option>
                                                <option value="1">청소년</option>
                                                <option value="1">외국인</option>
                                                <option value="1">장년</option>
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
                                                <option value="1">중학교 졸업</option>
                                                <option value="2">고등학교 졸업</option>
                                                <option value="1">대학교(2,3년제) 졸업</option>
                                                <option value="2">대학교(4년제) 졸업</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="근무기간">근무기간</option>
                                                <option value="1">단기알바</option>
                                                <option value="2">3~6개월</option>
                                                <option value="2">6~12개월</option>
                                                <option value="2">12개월 이상</option>
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
                                            <option value="1">최신순</option>
                                            <option value="2">조회수순 </option>
                                            <option value="4">지원순</option>
                                        </select>
                                        <a href="<%=request.getContextPath() %>/recruit/write" class="boxed-btn3">글쓰기</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="job_lists m-0">
                        <div class="row">
                        
                        <%
                        	ArrayList<BoardRecruit1> recruits = (ArrayList<BoardRecruit1>)request.getAttribute("recruits");
                        	for(int i=0; i<recruits.size(); i++) {
                        		BoardRecruit1 recruit = recruits.get(i);
                        		String title = recruit.getTitle();
                        		String date = recruit.getDate();
                        		String place = recruit.getPlace();
                        		int views = recruit.getViews();
                        		int board_recruit_id = recruit.getBoard_recruit_id();
                        		
                        		%>

                            <div class="col-lg-12 col-md-12">
                                <div class="single_jobs white-bg d-flex justify-content-between">
                                    <div class="jobs_left d-flex align-items-center">
                                        <div class="jobs_conetent">
                                            <a href="job_details.html"><h4><%=title %> </h4></a>
                                            <div class="links_locat d-flex align-items-center">
                                                <div class="location">
                                                    <p> <i class="fa fa-map-marker"></i><%=place %></p>
                                                </div>
                                                <div class="location">
                                                    <p> <i class="fa fa-clock-o"></i><%=date %></p>
                                                </div>
                                                <div class="location">
                                                	<p> 조회수 : <%=views %></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="jobs_right">
                                        <div class="apply_now">
                                            <a href="<%=request.getContextPath() %>/recruit/content?<%=board_recruit_id %>" class="boxed-btn3">글보러가기</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <%
                        	}
                            %>
                            
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