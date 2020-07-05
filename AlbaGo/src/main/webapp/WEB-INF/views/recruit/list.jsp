<%@page import="java.util.HashMap"%>
<%@page import="com.spring.ex.dto.BoardRecruit"%>
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
	<%
	HashMap<String, Object> map=(HashMap<String, Object>)request.getAttribute("map");//검색 조건
	String local_category= (String)map.get("local_category");
	String enterprise_category=(String)map.get("enterprise_category");
	String gender=(String)map.get("gender");
	String education=(String)map.get("education");
	String term=(String)map.get("term");
	String title_keyword=(String)map.get("title");
	
	
	if(local_category==null){
		local_category = "";
	}	
	if(enterprise_category==null){
		enterprise_category = "";
	}	
	if(gender==null){
		gender = "";
	}	
	if(education==null){
		education = "";
	}	
	if(term==null){
		term = "";
	}	
	if(title_keyword==null){
		title_keyword = "";
	}
	
	%>
	
	
		
	<script type="text/javascript">
		function page(page){
			var page = page;
			location.href="?page="+page+"&local_category=<%=local_category %>&enterprise_category=<%=enterprise_category %>&gender=<%=gender %>&education=<%=education %>& term=<%=term %>&title=<%=title_keyword %>";
			
			
		}
	
	</script>
	
	
	    <!-- job_listing_area_start  -->
    <div class="job_listing_area plus_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="job_filter white-bg">
                        <div class="form_inner white-bg">
                            <h3>검색필터</h3>
                            <form action="<%=request.getContextPath() %>/recruit/list" method="get" name="keyword" id="keyword">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide" id="local_category" name="local_category">
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
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide" id="enterprise_category" name="enterprise_category">
                                                <option data-display="" value="">카테고리</option>
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
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide" id="gender" name="gender">
                                                <option data-display="" value="">성별</option>
                                                <option value="">무관</option>
                                                <option value="남자">남자</option>
                                                <option value="여자">여자</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide" id="education" name="education">
                                                <option data-display="" value="">최종학력</option>
                                                <option value="초등학교 졸업">초등학교 졸업</option>
                                                <option value="중학교 졸업">중학교 졸업</option>
                                                <option value="고등학교 졸업">고등학교 졸업</option>
                                                <option value="2/3년제 졸업">2/3년제 졸업</option>
                                                <option value="4년제 졸업">4년제 졸업</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide" id="term" name="term">
                                                <option data-display="" value="">근무기간</option>
                                                <option value="하루">하루</option>
                                                <option value="일주일">일주일</option>
                                                <option value="1개월">1개월</option>
                                                <option value="3개월~6개월">3개월~6개월</option>
                                                <option value="6개월~12개월">6개월~12개월</option>
                                                <option value="1년이상">1년이상</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <input type="text" placeholder="검색어" name="title" id="title">
                                        </div>
                                    </div>
                                </div>
	                            <div class="reset_btn">
	                                <button  class="boxed-btn3 w-100" type="submit">초기화</button>&nbsp
	                                <button class="boxed-btn3 w-100" type="submit">검&nbsp &nbsp 색</button>
	                            </div>
                            </form>
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
                                        <select id="sort" name="sort">
                                            <option data-display="" value="">정렬 기준</option>
                                            <option value="최신순">최신순</option>
                                            <option value="조회수순">조회수순 </option>
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
                        	ArrayList<BoardRecruit> boardrecruits = (ArrayList<BoardRecruit>)request.getAttribute("boardrecruits");
                        	for(int i=0; i<boardrecruits.size(); i++) {
                        		BoardRecruit recruit = boardrecruits.get(i);
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
                                            <a href="<%=request.getContextPath() %>/recruit/content?board_recruit_id=<%=board_recruit_id %>"><h4><%=title %> </h4></a>
                                            <div class="links_locat d-flex align-items-center">
                                                <div class="location">
                                                    <p> <i class="fa fa-map-marker"></i><%=place %></p>
                                                </div>
                                                <div class="location">
                                                    <p> <i class="fa fa-clock-o"></i><%=date.split(":")[0] %>:<%=date.split(":")[1] %></p>
                                                </div>
                                                <div class="location">
                                                	<p> 조회수 : <%=views %></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="jobs_right">
                                        <div class="apply_now">
                                            <a href="<%=request.getContextPath() %>/recruit/content?board_recruit_id=<%=board_recruit_id %>" class="boxed-btn3">글보러가기</a>
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
                                <%
                                	int pageNum = (int)request.getAttribute("pageNum");
                              		int count = (int)request.getAttribute("count");
                                System.out.println(pageNum);
                                System.out.println(count);
                                	if(pageNum>1){//<
                                		%>
                                        <li>
                                        <a href="javascript:page(<%=pageNum+1%>)"> 
                                        <i class="ti-angle-left"></i> </a></li>
                                		
                                		<%                             		                                		
                                	}
                                	for (int i =1; i<=count ; i++){//각각 번호 
                                		%>
                                		
                                        <li><a href="javascript:page(<%=i%>)"> <span><%=i %></span></a></li>
                                		
                                		<%
                                	}	
                                	if(pageNum<count){//>
                                		%>
                                        <li><a href="javascript:page(<%=pageNum+1%>)"> 
                                        <i class="ti-angle-right"></i> </a></li>
                                		
                                		<%                             		                                		
                                	}
                                
                                %>
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