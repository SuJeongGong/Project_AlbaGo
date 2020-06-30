<%@page import="com.spring.ex.dto.Advertising"%>
<%@page import="com.spring.ex.dto.PaymentHistoryUp"%>
<%@page import="com.spring.ex.dto.PaymentHistoryResume"%>
<%@page import="com.spring.ex.dto.Payment"%>
<%@page import="com.spring.ex.dto.Recruit"%>
<%@page import="com.spring.ex.dto.Volunteer"%>
<%@page import="com.spring.ex.dto.Scrap_enterprise"%>
<%@page import="com.spring.ex.dto.Enterprise"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	Enterprise Einfo = (Enterprise) request.getAttribute("Einfo");
int end = 0;
%>
<title><%=Einfo.getEnterprise_id()%> 기업의 마이페이지</title>
</head>
<body>
	<%@ include file="../serve/header.jsp"%>
	<div class="job_details_area">
		<!-- <h3 style="float: center;"Einfo.getEnterprise_id()id()%> 기업 마이페이지</h3> -->
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a href="<%=request.getContextPath()%>/enterprise/account">
										<h4>회원정보 수정</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/enterprise/account">
										수정</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								안전한 정보보호를 위해 연락처 일부만 확인가능하며,<br />수정화면에서 정확한 연락처 확인이 가능합니다.
							</p>
							<ul>


								<li>이름 : <span><%=Einfo.getName()%></span></li>
								<li>사업자 번호 : <span><%=Einfo.getBusiness_number()%></span></li>
								<li>담당자 이름 : <span><%=Einfo.getManager_name()%></span></li>
								<li>담당자 연락처 : <span><%=Einfo.getManager_phone()%></span></li>
								<li>카테고리 : <span><%=Einfo.getCategory()%></span></li>
								<li>가입날짜 : <span><%=Einfo.getDate().split(" ")[0]%></span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a href="<%=request.getContextPath()%>/enterprise/recruit/list">
										<h4>공고 관리</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/enterprise/recruit/list">
										자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								공고 수정을 하고싶다면 자세히 버튼을 눌러주세요<br />공고 관리 화면에서 수정하실수 있습니다.
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>제목</th>
									<th>작성날짜</th>
								</tr>
								<%
									ArrayList<Recruit> recruits = (ArrayList) request.getAttribute("recruit");
								if ( recruits.size() > 5) {
									end = 5;
								} else {
									end = recruits.size();
								}
									for (int i = 0; i < end; i++) {
										Recruit recruit = recruits.get(i);
										String title = recruit.getTitle();
										String date = recruit.getDate();
								%>
								<tr>
									<td><%=title%></td>
									<td><%=date.split(" ")[0]%></td>
								</tr>
								<%
									}
								%>
							</table>
						</div>
					</div>
				</div>
			</div>




			<div class="row">
				<br> <br> <br> <br> <br>
			</div>




			<div class="row">
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a
										href="<%=request.getContextPath()%>/enterprise/volunteer/list">
										<h4>지원 목록</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/enterprise/volunteer/list">자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								지원한 인재 목록을 자세히 보고싶으시면<br> 자세히 버튼을 눌러 지원한 인재 페이지로 이동해주세요
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>제목</th>
									<th>작성날짜</th>
									<th>지원자</th>
								</tr>
								<%
									ArrayList<Volunteer> volunteers = (ArrayList) request.getAttribute("volunteer");
								if ( volunteers.size() > 5) {
									end = 5;
								} else {
									end = volunteers.size();
								}
									for (int i = 0; i < end; i++) {
										Volunteer volunteer = volunteers.get(i);
										String individual_id = volunteer.getIndividual_id();
										String title = volunteer.getBoard_recruit_title();//null나옴 아마 sql문을 고져야할듯 as board_recruit_title로 
										String date = volunteer.getDate().split(" ")[0];
								%>
								<tr>
									<td><%=title%></td>
									<td><%=date%></td>
									<td><%=individual_id%></td>
								</tr>
								<%
									}
								%>
							</table>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a href="<%=request.getContextPath()%>/enterprise/scrap">
										<h4>스크랩</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/enterprise/scrap">자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								스크랩한 인재 목록을 수정하거나 자세히 보고싶으시면 <br> 자세히 버튼을 눌러 스크랩한 인재 페이지로
								이동해주세요
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>인재글 제목</th>
									<th>스크랩날짜</th>
								</tr>
								<%
									ArrayList<Scrap_enterprise> scraps = (ArrayList) request.getAttribute("scrap");			
									if ( scraps.size() > 5) {
										end = 5;
									} else {
										end = scraps.size();
									}
									for (int i = 0; i <end; i++) {
										Scrap_enterprise scrap = scraps.get(i);
										String title = scrap.getTitle();
										String date = scrap.getDate().split(" ")[0];
								%>
								<tr>
									<td><%=title%></td>
									<td><%=date%></td>
								</tr>
								<%
									}
								%>

							</table>
						</div>
					</div>
				</div>

			</div>


			<div class="row">
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a href="<%=request.getContextPath()%>/enterprise/payment">
										<h4>결제 내역</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/enterprise/payment">자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								최근에 구매한 5개의 결제 기록을 보여줍니다. <br>더 많은 결제 목록을 보시려면 자세히 버튼을
								눌러주세요
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>상품 이름</th>
									<th>가격</th>
									<th>결제 날짜</th>
								</tr>
								<%
									ArrayList<Payment> payments = (ArrayList) request.getAttribute("payment");
								if ( payments.size() > 5) {
									end = 5;
								} else {
									end = payments.size();
								}
									for (int i = 0; i < end; i++) {
										Payment payment = payments.get(i);
										String name = payment.getProduct_name();//null나옴 아마 sql문을 고져야할듯 as board_recruit_title로 
										String date = payment.getDate().split(" ")[0];
										int product_price = payment.getProduct_price();
								%>
								<tr>
									<td><%=name%></td>
									<td><%=product_price%></td>
									<td><%=date.split(" ")[0]%></td>
								</tr>
								<%
									}
								%>
							</table>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a href="<%=request.getContextPath()%>/enterprise/advertising">
										<h4>광고/배너 내역</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/enterprise/advertising">자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								최근에 시용한 5개의 상품 기록을 보여줍니다. <br>더 많은 사용 목록을 보시려면 자세히 버튼을
								눌러주세요
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>사용한 공고글</th>
									<th>시작하는 날짜</th>
									<th>끝나는 날짜</th>
								</tr>
								<%
								
									ArrayList<Advertising> advertisings = (ArrayList) request.getAttribute("advertising");
								

								if ( advertisings.size() > 5) {
									end = 5;
								} else {
									end = advertisings.size();
								}
								for (int i = 0; i < end; i++) {
										Advertising advertising = advertisings.get(i);
										String title = advertising.getBoard_recruit_title();
										String startDate = advertising.getStart_date().split(" ")[0];
										String endDate = advertising.getEnd_date().split(" ")[0];
								%>
								<tr>
									<td><%=title%></td>
									<td><%=startDate%></td>
									<td><%=endDate%></td>
								</tr>
								<%
									}
								%>

							</table>
						</div>
					</div>
				</div>

			</div>






			<div class="row">
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a
										href="<%=request.getContextPath()%>/enterprise/payment/resume">
										<h4>이력서 보기 사용 기록</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/enterprise/payment/resume">자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								최근에 구매한 5개의 결제 기록을 보여줍니다. <br>더 많은 결제 목록을 보시려면 자세히 버튼을
								눌러주세요
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>사용한 인재글</th>
									<th>연락처</th>
									<th>사용날짜</th>
								</tr>
								<%
									ArrayList<PaymentHistoryResume> paymentHistoriesResume = (ArrayList) request
											.getAttribute("payment_history_resume");

									System.out.println("jsp 에서 :" + paymentHistoriesResume);
							

									if ( paymentHistoriesResume.size() > 5) {
										end = 5;
									} else {
										end = paymentHistoriesResume.size();
									}
									for (int i = 0; i <end; i++) {
										PaymentHistoryResume paymentHistoryResume = paymentHistoriesResume.get(i);
										String boardResumeTitle = paymentHistoryResume.getBoard_resume_title();
										String phone = paymentHistoryResume.getResume_phone();//null나옴 아마 sql문을 고져야할듯 as board_recruit_title로 
										String date = paymentHistoryResume.getDate().split(" ")[0];
								%>
								<tr>
									<td><%=boardResumeTitle%></td>
									<td><%=phone%></td>
									<td><%=date%></td>
								</tr>
								<%
									}
								%>
							</table>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
									<a
										href="<%=request.getContextPath()%>/enterprise/payment/resume">
										<h4>up 버튼 사용 기록</h4>
									</a>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="boxed-btn3 w-10"
										href="<%=request.getContextPath()%>/enterprise/payment/up">자세히</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<p>
								up버튼 사용기록 최근 5개 입니다. <br>더 많은 사용 기록을 보시려면 자세히 버튼을 눌러주세요
							</p>
							<br>
							<table width="95%">
								<tr>
									<th>사용한 공고글</th>
									<th>사용한 날짜</th>
								</tr>
								<%
									ArrayList<PaymentHistoryUp> paymentHistoriessUp = (ArrayList) request.getAttribute("payment_history_up");
								end=0;
									if(paymentHistoriessUp !=null){
										if (paymentHistoriessUp.size() > 5) {
											end = 5;
											 System.out.println("end"+end);
										} else {
											end = paymentHistoriessUp.size();
											 System.out.println("end"+end);
										}
										for (int i = 0; i < end; i++) {
											PaymentHistoryUp paymentHistoryUp = paymentHistoriessUp.get(i);
											String title = paymentHistoryUp.getBoard_recruit_title();
											String date = paymentHistoryUp.getDate().split(" ")[0];
								%>
								<tr>
									<td><%=title%></td>
									<td><%=date%></td>
								</tr>
								<%
									}
										}
								%>

							</table>
						</div>
					</div>
				</div>



			</div>





		</div>
	</div>





	<%@ include file="../serve/footer.jsp"%>

</body>
</html>