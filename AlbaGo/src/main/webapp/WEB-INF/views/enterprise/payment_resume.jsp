<%@page import="com.spring.ex.dto.PaymentHistoryResume"%>
<%@page import="com.spring.ex.dto.Advertising"%>
<%@page import="com.spring.ex.dto.Payment"%>
<%@page import="com.spring.ex.dto.Scrap_enterprise"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>인재글 연락처 확인 사용 내역</title>
</head>

<body>

	<%@ include file="../serve/header.jsp"%>
	<!-- content wrapper -->

	<!-- main 본문  -->
	<div class="container">
		<br />
		<div class="row">
			<h1>인재글 연락처 확인 사용 내역</h1>
		</div>
		<div class="row">
			<ul>
				<li>인재글 연락처 확인 사용 내역을 확인 하실 수 있습니다.</li>
				<li>최신순으로 정렬되어 있습니다.</li>
			</ul>

		</div>
		<br />
		<div class="row">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>사용한 인재글</th>
							<th>연락처</th>
							<th>사용날짜</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<PaymentHistoryResume> paymentHistoriesResume = (ArrayList) request.getAttribute("payment_history_resume");

							System.out.println("jsp 에서 :" + paymentHistoriesResume);

							for (int i = 0; i < paymentHistoriesResume.size(); i++) {
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
					</tbody>
				</table>

			</div>
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
                                        <a href="?page=<%=pageNum - 1%>"> 
                                        <i class="ti-angle-left"></i> </a></li>
                                		
                                		<%                             		                                		
                                	}
                                	for (int i =1; i<=count ; i++){//각각 번호 
                                		%>
                                		
                                        <li><a href="?page=<%=i%>"> <span><%=i %></span></a></li>
                                		
                                		<%
                                	}	
                                	if(pageNum<count){//>
                                		%>
                                        <li><a href="?page=<%=pageNum + 1%>"> 
                                        <i class="ti-angle-right"></i> </a></li>
                                		
                                		<%                             		                                		
                                	}
                                
                                %>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
	</div>


	<%@ include file="../serve/footer.jsp"%>
</body>

</html>