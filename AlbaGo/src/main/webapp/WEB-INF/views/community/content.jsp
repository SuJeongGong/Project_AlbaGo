<%@page import="com.spring.ex.dto.BoardCommunity"%>
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
	BoardCommunity community = (BoardCommunity)request.getAttribute("community_content");//한줄 받는거 
		int community_id =community.getCommunity_id();
		String title = community.getTitle();
		String id =community.getIndividual_id();
		String date = community.getDate();
		String content = community.getContents();
		int views = community.getViews();
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
                        <li><i class="fa fa-comments"></i> 댓글 갯수</li>
                        <li><i class="fa fa-views"></i>조회수 <%=views %></li>
                            <li><i class="fa fa-comments"></i><%=date.split(":")[0] %>:<%=date.split(":")[1] %></li>
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
                                         <a class="btn btn-outline-danger w-10" href="<%=request.getContextPath()%>/community/delete?community_id=<%=community.getCommunity_id()%>>">삭제하기</a> <%
                                   } %>			
                  </div>
               </div>
               
               
               <div class="comments-area">
                  <h4>댓글</h4>
                  <div class="comment-list">
                     <div class="single-comment justify-content-between d-flex">
                        <div class="user justify-content-between d-flex">
                           <div class="thumb">
                              <img src="img/comment/comment_3.png" alt="">
                           </div>
                           <div class="desc">
                              <p class="comment">
                                	댓글내용
                              </p>
                              <div class="d-flex justify-content-between">
                                 <div class="d-flex align-items-center">
                                    <h5>
                                       	아이디
                                    </h5>
                                    <p class="date">2020-05-30 18:34</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               
               <div class="comment-form">
                  <h4>댓글달기</h4>
                  <form class="form-contact comment_form" action="#" id="commentForm">
                     <div class="row">
                        <div class="col-12">
                           <div class="form-group">
                              <textarea class="form-control" name="comment" id="comment" cols="30" rows="3"
                                 placeholder="댓글 내용을 입력하세요"></textarea>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <button type="submit" class="button button-contactForm btn_1 boxed-btn">댓글달기</button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--================ Blog Area end =================-->
 
	
	
	
	
	
	<%@ include file="../serve/footer.jsp" %>

</body>
</html>