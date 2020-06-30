<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.BoardComment"%>
<%@page import="com.spring.ex.dto.BoardCommunity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("div[name='hide']").hide();
})



function insertComment(community) {
	var comment = 	$("#comment").val();
	console.log(comment);
	$.ajax({
		url : "./comment/write",
		method : "GET",
		data : {
			community : community,
			comment: comment
		},
		success :function(res){
			if(res>=1){
				//alert("결과 저장 완료");
				$("#res").load(window.location.href + " #res");
			
			}else{
				alert("실패");
			}
		}
	});
}

function updateResults(result) {
	var volunteer_ids = [];
	$("input[name='volunteer_id']:checked").each(function(){
		if(this.checked){
			volunteer_ids.push($(this).val());
			console.log($(this).val());
		}
	})
	

}

</script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../serve/header.jsp" %>
	
	
	 <%
	BoardCommunity community = (BoardCommunity)request.getAttribute("community_content");//한줄 받는거 
		int community_id =community.getCommunity_id();
		String title = community.getTitle();
		String id =community.getIndividual_id();
		String date = community.getDate();
		String content = community.getContents();
		int views = community.getViews();
		int commentcount = community.getCount();
     %>

    

	
	
	
   <!--================Blog Area =================-->
   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 posts-list">
               <div class="single-post">
                  <div class="blog_details">
                      <h2>
                        <%=title %></h2>
                     
                    
                     <ul class="blog-info-link mt-3 mb-4">
                        <li><i class="fa fa-user"></i><%=id %></li>
                        <li><i class="fa fa-comments"></i><%= request.getAttribute("counts") %></li>
                        <li><i class="fa fa-views"></i>조회수 <%=views %></li>
                            <li><i class="fa fa-clock-o"></i><%=date.split(":")[0] %>:<%=date.split(":")[1] %></li>
                     </ul>
                     <p class="excert">
                        <%=content %>
                     </p>
                     			<%
                                 String session_id = request.getSession().getAttribute("id").toString();
                                 
                                 System.out.println(session_id + "세션에서 가져온");
                                   System.out.println(community.getIndividual_id() +"디비에서 가져온");
                                   if(session_id.equals(community.getIndividual_id())) { 
                                      %>  <a class="btn btn-info edit w-10" href="<%=request.getContextPath()%>/community/update?community_id=<%=community.getCommunity_id()%>">수정하기</a> 
                                         <a class="btn btn-outline-danger w-10" href="<%=request.getContextPath()%>/community/delete?community_id=<%=community.getCommunity_id()%>">삭제하기</a> <%
                                   } %>			
                  </div>
               </div>
               <br/>
               <br/>
               <hr>
               <h4>댓글</h4>
               <br/>
                    
			 
               <div id ="res" >
                    <%
   
		
			
			   ArrayList<BoardComment> comments = (ArrayList)request.getAttribute("comments");//글에 적여있는 댓글 여러개 가져오기 
			   System.out.println(comments + "댓글 확인");
				if(comments!=null){
			   for(int i =0; i<comments.size();i++){
				   BoardComment  comment= comments.get(i);//한줄 
				   
			   
			   
			   
				int comment_id = comment.getComment_id();
		      	int cm_community_id = comment.getCommunity_id();
				String cm_id =comment.getIndividual_id();
				String cm_date = comment.getDate();
				String cm_contents = comment.getContents();
			
			%>
			
                 
                  <div class="comment-list" >
                     <div class="single-comment justify-content-between d-flex" >
                        <div class="user justify-content-between d-flex">

                           <div class="desc" style="width: 1000px;">
                              <div class="d-flex justify-content-between">
                                 <div class="d-flex align-items-center">
                                 	<ul class="blog-info-link mt-3 mb-4">
                                    <li><i class="fa fa-user"></i><%=cm_id %></li>
                                    <li><i class="fa fa-clock-o"></i><%=cm_date.split(":")[0] %>:<%=date.split(":")[1] %></li>
                                    </ul>
                                 </div>    
                              </div>
                              <p class="comment" ><%=cm_contents %></p>
                              <div id ="commentUpdate<%=i%>" name= "hide">
                              	<textarea class="form-control" name="commentsUpdate" id ="commentUpdateContent<%=i%>" cols="30" rows="3" ><%=cm_contents %></textarea>
                              	<button class="btn btn-info edit w-10"  onclick="update(<%=comment.getComment_id()%>,)"> 수정 저장</button> 
                              </div>
                              					<script type="text/javascript">
				
					function commentUpdate(i){	
						$("#commentUpdate"+i).show();
					}
					
					function update(comment_id) {
						var content = 	$("#commentUpdateContent<%=i%>").val();
						console.log("content"+content);
						updateComment(content,comment_id)
					}
					

					</script>
                              <div style="text-align: right;">
                              <%
                                 String session_id2 = request.getSession().getAttribute("id").toString();
                                 
                                 System.out.println(session_id2 + "세션에서 가져온");
                                   System.out.println(comment.getIndividual_id() +"디비에서 가져온");
                                   if(session_id2.equals(comment.getIndividual_id())) {                       	   
                                      %>  <button class="btn btn-info edit w-10"  onclick="commentUpdate(<%=i%>)">댓글수정</button> 
                                         <a class="btn btn-outline-danger w-10"  href="<%=request.getContextPath()%>/community/comment/delete?comment_id=<%=comment.getComment_id()%>">댓글삭제</a> <%
                                   } %>
       					        </div>		
                           </div>
                        </div>
                     </div>
                  </div>
             

				
			<%

			   }
		}
				
     %>
              </div>
               
               <div class="comment-form">
                  <h4>댓글달기</h4>
                  <form class="form-contact comment_form" action="#" id="commentForm"  >
                     <div class="row">
                        <div class="col-12">
                           <div class="form-group">
                              <textarea class="form-control" name="comment" id="comment" cols="30" rows="3"
                                 placeholder="댓글 내용을 입력하세요"></textarea>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <button type="button" class="button button-contactForm btn_1 boxed-btn" onclick ="insertComment(<%=community_id %>)">댓글달기</button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--================ Blog Area end =================-->

	<script type="text/javascript">
	function updateComment(content,comment_id) {
		console.log(content);
		console.log(comment_id);
		$.ajax({
			url : "./comment/update",
			method : "GET",
			data : {
				content : content,
				comment_id: comment_id
			},
			success :function(res){
				if(res>=1){
					//alert("결과 저장 완료");
					$("#res").load(window.location.href + " #res");
				
				}else{
					alert("실패");
				}
			}
		});
	}
	
	</script>
	
	
	
	<%@ include file="../serve/footer.jsp" %>

</body>
</html>