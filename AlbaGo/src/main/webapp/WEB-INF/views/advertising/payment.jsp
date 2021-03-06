<%@page import="com.spring.ex.dto.BoardRecruit"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>광고 자세히 보기</title>
</head>
<body>
	<%@ include file="../serve/header.jsp"%>
	<%
		Product product = (Product) request.getAttribute("product");//여기 ""안에 m.addAttribute() 안에 적어준 이름이랑 같게 해야해

		ArrayList<BoardRecruit> board_recuits = (ArrayList<BoardRecruit>) request.getAttribute("board_recuit");
	%>

	<div class="job_details_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="jobs_conetent">
										<h4>
											<%=product.getName()%>
										</h4>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<h4>
								가격 :
								<%=product.getPrice()%></h4>
						</div>
						<div class="single_wrap">
							<h4>
								기간 :
								<%=product.getTerm()%></h4>
						
				
							<h4>설명:
							<%=product.getExplan()%></h4>
					
						<form name = "advertising" action="<%=request.getContextPath()%>/advertising/payment/result">
						
						<div class="row">
						&emsp;	<h4>적용할 공고글</h4> &emsp;
							<select name = "board_recruit_id">
							<%
							if(board_recuits!=null){
							
							for(int i =0; i <board_recuits.size();i++){
								BoardRecruit board_recuit = board_recuits.get(i);
								%>
						
								<option value="<%=board_recuit.getBoard_recruit_id()%>"><%=board_recuit.getTitle() %></option>
										<%											
									}	
									}
									
									%>
							</select>
							<input type="hidden" value="<%=product.getProduct_id() %>"  name ="product_id"/>&nbsp;
							<input type="text" height="100" class="col-sm-3 form-control" placeholder="광고문구" name ="title"/>&nbsp;&nbsp;
							<input type="text" height="100"  class="col-sm-3 form-control" placeholder="시작날짜  2020-01-01"name ="start_date"/>
						
						</div>
						</div>
						<div class="row">
								<div class="col-md-6"> 
									<button type="submit" class="btn btn-outline-primary">결제하기</button> 
								</div> 
								<div class="col-md-6">
										<a  class="btn btn-outline-primary" href="<%=request.getContextPath() %>/product/list">목록으로</a>
	
							</div>	
							
						</form>
							</div>
							</div>	
							</div>
					</div>
				</div>
			</div>
	






	<%@ include file="../serve/footer.jsp"%>

</body>
</html>