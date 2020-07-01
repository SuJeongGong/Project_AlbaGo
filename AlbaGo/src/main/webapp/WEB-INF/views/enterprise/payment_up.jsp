<%@page import="com.spring.ex.dto.BoardRecruit"%>
<%@page import="com.spring.ex.dto.PaymentHistoryUp"%>
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
<title>UP 버튼 사용 내역</title>
<script type="text/javascript">
function upBoard(){
	var board_recruit_id =$("#board_recruit_id").val();
	console.log(board_recruit_id);
  	$.ajax({
		url : "./upBoard",
		method : "GET",
		data : {
			board_recruit_id : board_recruit_id
		},
		success :function(res){
			if(res>=1){
				alert("결과 저장 완료");
				 $("#res").load(window.location.href + " #res");
			}else{
				alert("실패");
			}
		}
	});
}

</script>

</head>

<body>

	<%@ include file="../serve/header.jsp"%>
	<!-- content wrapper -->

	<!-- main 본문  -->
	<div class="container">
		<br />
		<div class="row">
			<h1>UP 버튼 사용 / 내역 </h1>
		</div>
		<div class="row">
			<ul class="col-lg-7">
				<li>UP버튼을 사용한 내역을 확인 할 수 있습니다.</li>
				<li>최신순으로 정렬되어 있습니다.</li>
			</ul>
			<div class="col-lg-5" >
					<%
					if(request.getAttribute("board_recruits")!=null){
						
						
						%>
						
				<select name = "board_recruit_id" id ="board_recruit_id">
						
						<%
						ArrayList<BoardRecruit>board_recruits = (ArrayList) request.getAttribute("board_recruits");
						for(int i =0; i<board_recruits.size();i++){
							%>
							<option value ="<%=board_recruits.get(i).getBoard_recruit_id() %>"><%=board_recruits.get(i).getTitle() %></option>
							<%
						}%>
						
				</select>
						
				<button type = "button" onclick="upBoard()" class="boxed-btn4" style="height:85%;width:30%;">사용하기</button>
						
						<%}
					%>			
			</div>

		</div>
		<br />
		<div class="row">
			<div class="table-responsive">
				<table class="table" id="res">
					<thead>
						<tr>
							<th>사용한 공고글</th>
							<th>남은 up 갯수</th>
							<th>사용한 날짜</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<PaymentHistoryUp> paymentHistoriessUp = (ArrayList) request.getAttribute("payment_history_up");

							for (int i = 0; i < paymentHistoriessUp.size(); i++) {
								PaymentHistoryUp paymentHistoryUp = paymentHistoriessUp.get(i);
								String title = paymentHistoryUp.getBoard_recruit_title();
								String date = paymentHistoryUp.getDate();
								 date = date.split(":")[0]+":"+date.split(":")[1];
								int up_date = paymentHistoryUp.getUp_count();
						%>
						<tr>
							<td><%=title%></td>
							<td><%=up_date%></td>
							<td><%=date%></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>

			</div>
		</div>
	</div>


	<%@ include file="../serve/footer.jsp"%>
</body>

</html>