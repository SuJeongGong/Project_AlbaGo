<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Recruit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고 관리</title>
</head>
<body>

	<%@ include file="../serve/header.jsp" %>
 <!-- content wrapper -->

                <!-- main 본문  -->
<div class="container">
	      <div class="row">
	          <h1 >공고 관리</h1>
	      </div>
	      <div class="row">
	          <ul>
	          	<li>공고는 5개까지 작성 가능합니다</li>
	          	<li>공고등록 제한규정에 해당될 경우 사전 동의 없이 공고를 삭제/수정 할 수 있습니다.</li>
	          </ul>
          
		</div>
      <div class="row">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    	<tr>
                                    	   <a  href="<%=request.getContextPath()%>/enterprise/recruit/write" class="btn btn-outline-primary" style="float: right;" >공고등록</a>
                                    	   &ensp;&ensp;
                                    	   <button type="submit" class="btn btn-outline-primary" style="float: right;">선택삭제</button>
                                        </tr>
                                        <tr>
                                            <th>
                                                <input type="checkbox" class="selectAllMembers" />
                                            </th>
                                            <th>volunteer_id</th>
                                            <th>공고번호</th>
                                            <th>제목</th>
                                            <th>카테고리</th>
                                            <th>장소</th>
                                            <th>기간</th>
                                            <th>시간</th>
                                            <th>요일</th>
                                            <th>급여</th>
                                            <th>작성일</th>
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                    	ArrayList<Recruit> recruits = (ArrayList)request.getAttribute("Recruits");
                                    	for(int i=0; i<recruits.size();i++){
                                    		Recruit recruit = recruits.get(i);
                                    		
                                    		int recruit_id = recruit.getRecruit_id();
                                    		String title = recruit.getTitle();
                                    		String place = recruit.getPlace();
                                    		String salary = recruit.getSalary_type()+String.valueOf(recruit.getSalary_amount());
                                    		String category = recruit.getCategory();
                                    		String term =recruit.getTerm();
                                    		String time =recruit.getTerm();
                                    		String day =recruit.getDay();
                                    		String date=recruit.getDate();
                                    		
                                    		%>


  										<tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" onclick='OnOffMemberAllClickBtn()'>
                                            </td>
                                            <td><%=recruit_id %></td>
                                            <td><%=title %></td>
                                            <td><%=category %></td>
                                            <td><%=place %></td>
                                            <td><%=term %></td>
                                            <td><%=time %></td>
                                            <td><%=day %></td>
                                            <td><%=salary %></td>
                                            <td><%=date %></td>
                                            <td><button type="submit" class="btn btn-outline-danger">삭제</button></td>

                                        </tr>


                                    		
                                    		<%
                                    	}
                                    
                                    
                                    %>
                  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        </div>
                        
                        
	<%@ include file="../serve/footer.jsp" %>
<script>
                            var selectAll = document.querySelector(".selectAllMembers");
                            selectAll.addEventListener('click', function () {
                                var objs = document.querySelectorAll(".memberChk");
                                for (var i = 0; i < objs.length; i++) {
                                    objs[i].checked = selectAll.checked;
                                };
                            }, false);

                            var objs = document.querySelectorAll(".memberChk");
                            for (var i = 0; i < objs.length; i++) {
                                objs[i].addEventListener('click', function () {
                                    var selectAll = document.querySelector(".selectAllMembers");
                                    for (var j = 0; j < objs.length; j++) {
                                        if (objs[j].checked === false) {
                                            selectAll.checked = false;
                                            return;
                                        };
                                    };
                                    selectAll.checked = true;
                                }, false);
                            } 
                        </script>
</body>
</html>