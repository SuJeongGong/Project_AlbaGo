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
	
	
	
	
	
	<div class="col-lg-12 ftco-animate">
           
              <div class="comment-form-wrap pt-12">
                <form action="#" class="p-5 bg-light">
                  <div class="form-group">
                	<div class="row col-lg-12">
                    	<h3 class="mb-1 h4 font-weight-bold col-lg-8">인재글 작성</h3>
	                    <a  class="btn py-1 px-1 btn-primary col-lg-2" href="">개인정보 수정</a>
	                    <a  class="btn py-1 px-1 btn-primary col-lg-2" href="">이력서 수정</a>
                    </div>
                    <label for="title">제목 </label>
                    <input type="text" class="form-control" id="title">
                    <label for="message">내용</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                    <br/>
                    <div class="row col-lg-12">
                    	<h4 class="col-lg-2">이력서 선택</h4>
                    	<select name="" class="col-lg-6">
	                       	<option value="0">이력서 제목1</option>
	                       	<option value="1">이력서 제목2</option>
	                        <option value="2">이력서 제목3</option>
	                        <option value="3">이력서 제목4</option>
	                        <option value="4">이력서 제목5</option>
	                        <option value="5">이력서 제목6</option>
	                     </select>
	                    <input type="submit" value="등록하기" class="btn py-1 px-1 btn-primary col-lg-2 ">
	                    <input type="submit" value="취소" class="btn py-1 px-1 btn-primary col-lg-2">
                    
                    </div>

              </div>
                </form>
              </div>
            </div>
 
	
	
	
	
	
	<%@ include file="../serve/footer.jsp" %>

</body>
</html>