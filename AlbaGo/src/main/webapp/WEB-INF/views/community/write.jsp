
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getSession().getAttribute("id").toString();
%>
	<%@ include file="../serve/header.jsp" %>
          <div class="col-lg-12 ftco-animate">      
              <div class="comment-form-wrap pt-12">
                <form action="<%=request.getContextPath() %>/community/write/save" name ="community" class="p-5 bg-light">
                  <div class="form-group">
                	<h3 class="mb-1 h4 font-weight-bold">커뮤니티 글작성</h3>
                    <label for="title">제목 </label>
                    <input type="text" name="title" class="form-control" id="title">
                    <input type="text" name="individaul_id" class="form-control" id="individaul_id" value="<%=id %>" >
                    <label for="message">내용</label>
                    <textarea name="contents" id="message" cols="30" rows="10" class="form-control"></textarea>
                    <br/>
                    <div class="row">
                
	                    <input type="submit" value="등록하기" class="btn py-1 px-1 btn-primary col-lg-6 ">
	                    <input type="submit" value="취소" class="btn py-1 px-1 btn-primary col-lg-6">
                    
                    </div>
              </div>
                </form>
              </div>
            </div>
	
	
	
	
	
	<%@ include file="../serve/footer.jsp" %>

</body>
</html>