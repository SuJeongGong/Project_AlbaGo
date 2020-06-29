  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>상품추가</title>
</head>

	<%
		String conPath = request.getContextPath();
	%>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<script>
$(document).ready(function(){
		  $('#divid').show();//ㄱㅣ간입력창
		  $('input[name=term]').val("");//기간입력창
		  $('label[name=type]').hide();//아이템 타입 입력창
		  $('input[name=amount]').hide();//양 입력창
		  $('input[name=amount]').val("0");//양 이렵창
		  $('input[name="type"][value="ad"]').hide();
		  $('input:radio[name="type"][value="ad"]').prop('checked', true);
	
});
function checkterm(){   
	if($('input:radio[id=term_need]').is(':checked')){//광고라면
		  $('#divid').show();//ㄱㅣ간입력창
		  $('input[name=term]').val("");//기간입력창
		  $('label[name=type]').hide();//아이템 타입 입력창
		  $('input[name=amount]').hide();//양 입력창
		  $('input[name=amount]').val("0");//양 이렵창
		  $('input[name="type"][value="ad"]').hide();
		  $('input:radio[name="type"][value="ad"]').prop('checked', true);
		  
	    
	   }
	else{//아니라면
		  $('#divid').hide();
		  $('input[name=term]').val("무제한");
		  $('label[name=type]').show();
		  $('input[name=amount]').show();
		  $('input[name=amount]').val("");
		  $('input[name="type"][value="ad"]').hide();
		  $('input:radio[name="type"][value="up"]').prop('checked', true);
		  $('input:radio[name="type"][value="ad"]').prop('checked', false);
	         } 
 }
</script>
<body>

	<div id="wrapper">
		<!-- 사이드 바 -->
		<%@ include file="../serve/manager_sidebar.jsp"%>

		<!-- content wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- main -->
			<div id="content">
				<!-- Topbar -->
				<%@ include file="../serve/manager_topbar.jsp"%>
				<!-- main 본문  -->
				<div class="container-fluid">
					<!-- 요기다 작성  -->

					<div class="container mb-5 mt-5" style="height: 200px; width: 700px;">
						  <div style="float: center">
		                     <label class="radio-inline"> 
		                     <input type="radio"  id="term_need" name="check" checked="checked" onchange="checkterm()"> 광고
		                     </label> <label class="radio-inline"> 
		                     <input type="radio"   id="term_unnecessary" name="check"onchange="checkterm()"> UP / resume / board
		                     </label>
		 				 </div>
               
                        
						<form action="<%=request.getContextPath()%>/admin/add_product_term/result" name="product">
						
						<div class="pricing card-deck flex-column flex-md-row mb-3">
							<div class="card card-pricing text-center px-3 mb-4">
								<span class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">
								
								<input type="text" placeholder="ex)아이템" size="6" value="" name="name"></input></span>
								<div class="bg-transparent card-header pt-4 border-0">
								<h1 class="h4 font-weight-normal text-primary text-center mb-0" data-pricing-value="15" >
								<input type="text" placeholder="ex)100,000" size="9" name="price"/>원
										<span class="h6 text-muted ml-2">
											<input type="text" placeholder="ex) / +5개" size="6" name="amount"/></span>
									</h1>
								</div>
								<div class="card-body pt-0">
								<div id="divid">
									<ul class="list-unstyled mb-4">
										<input type="text" cols=121 rows=5 class="form-control" style="border-radius: 0px" placeholder="기간을 알려주세요" name="term" >
									</ul>
									          
								</div> <label class="radio-inline" name = "type"> 
		                     <input type="radio" id = "up" value="up"  name="type"> UP
		                     </label> 
		                     <label class="radio-inline" name = "type"> 
		                     <input type="radio"  value="resume" name="type"> Resume
		                     </label>
		                     <label class="radio-inline" name = "type"> 
		                     <input type="radio"    value="board" name="type" > Board
		                     </label>
		                     <input type="radio"  id = "ad" value="ad" name="type" >
									<ul class="list-unstyled mb-4">
										<input type="text" cols=121 rows=5 class="form-control" style="border-radius: 0px" placeholder="게시글 정보를 알려주세요" name="explan">
									</ul>

								
								<button class="btn btn-info edit" aria-label="Settings" value="submit"> <i class="fa fa-pencil-square-o" aria-hidden="true">추가</i></button>
							
							</div>
						</div>
					</div>
					</form>
				</div>


			</div>
			
			<!-- 끝 main 본문  -->
		</div>
		<!-- 끝 main -->
		<!-- footer -->
		<%@ include file="../serve/manager_footer.jsp"%>
	</div>
	<!-- 끝 content wrapper -->
</div>
	<!-- 끝  wrapper -->
</body>

</html>