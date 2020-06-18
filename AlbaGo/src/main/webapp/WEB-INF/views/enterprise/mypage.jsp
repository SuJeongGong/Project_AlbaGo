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
    <div class="job_details_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4>회원정보 수정</h4>
                                    </a>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="boxed-btn3 w-10" href="#"> 수정</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <p>안전한 정보보호를 위해 연락처 일부만 확인가능하며,<br/>수정화면에서 정확한 연락처 확인이 가능합니다.</p>
                            <ul>
                                <li>아이디 : <span>#{Einfo.enterprise_id}</span></li>
                                <li>비밀번호 : <span>#{Einfo.password}</span></li>
                                <li>이름 : <span>#{Einfo.name}</span></li>
                                <li>사업자 번호 : <span>#{Einfo.business_number}</span></li>
                                <li>담당자 이름 : <span>#{Einfo.manager_name}</span></li>
                                <li>담당자 연락처 : <span>#{Einfo.manager_phone}</span></li>
                                <li>카테고리 : <span>#{Einfo.category}</span></li>
                                <li>UP 횟수 : <span>#{Einfo.up_count}</span></li>
                                <li>이력서 횟수 : <span>#{Einfo.resume_count}</span></li>
                                <li>가입날짜 : <span>#{Einfo.date}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4>공고 관리</h4>
                                    </a>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="boxed-btn3 w-10" href="#"> 자세히</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <p>공고 수정을 하고싶다면 자세히 버튼을 눌러주세요<br/>공고 관리 화면에서 수정하실수 있습니다.</p>
                            <br>
							<table width="95%">
								<tr>
									<th>제목</th><th>작성날짜</th>
								</tr>
								<tr>
									<td>제목</td><td>작성날짜</td>
								</tr>
								<tr>
									<td>제목</td><td>작성날짜</td>
								</tr>
								<tr>
									<td>제목</td><td>작성날짜</td>
								</tr>
								
							</table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
            <br><br><br><br><br></div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4>지원 목록</h4>
                                    </a>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="boxed-btn3 w-10" href="#">자세히</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <p>지원한 인재 목록을 자세히 보고싶으시면<br>
자세히 버튼을 눌러 지원한 인재 페이지로 이동해주세요 </p>
                            <br>
							<table width="95%">
								<tr>
									<th>제목</th><th>작성날짜</th>
								</tr>
								<tr>
									<td>제목</td><td>작성날짜</td>
								</tr>
								<tr>
									<td>제목</td><td>작성날짜</td>
								</tr>								
							</table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="jobs_conetent">
                                    <a href="#">
                                        <h4>스크랩</h4>
                                    </a>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="boxed-btn3 w-10" href="#">자세히</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <p>스크랩한 인재 목록을 수정하거나 자세히 보고싶으시면
                            <br>
자세히 버튼을 눌러 스크랩한 인재 페이지로 이동해주세요 </p>
                            <br>
							<table width="95%">
								<tr>
									<th>제목</th><th>작성날짜</th>
								</tr>
								<tr>
									<td>#{scrap.title}</td><td>작성날짜</td>
								</tr>
								<tr>
									<td>제목</td><td>작성날짜</td>
								</tr>
								<tr>
									<td>제목</td><td>작성날짜</td>
								</tr>
								
							</table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">

                </div>
            </div>
        </div>
    </div>
	
	
	
	
	
	<%@ include file="../serve/footer.jsp" %>

</body>
</html>