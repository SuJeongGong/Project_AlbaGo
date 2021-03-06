<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Recruit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고 관리</title>
<%

ArrayList<Recruit> recruits = (ArrayList)request.getAttribute("Recruits");
%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function deleteRecruit(recruit_id) {
	console.log(recruit_id);
	$.ajax({
		url : "./deleteRecruit",
		method : "GET",
		data : {
			recruit_id : recruit_id
		},
		success :function(res){
			console.log(res);
			if(res>=1){
				alert("결과 저장 완료");

				 $("#res").load(window.location.href + " #res");
			}else{
				alert("사용실패")
			}
		}
	});
}
function deleteRecruits() {
	var recruit_ids = [];
	$("input[name='recruit_id']:checked").each(function(){
		if(this.checked){
			recruit_ids.push($(this).val());
			console.log($(this).val());
		}
	})
	
	$.ajax({
		url : "./deleteRecruits",
		method : "GET",
		data : {
			recruit_ids: recruit_ids
		},
		success :function(res){
			console.log(res);
			if(res>=1){
				alert("결과 저장 완료");

				 $("#res").load(window.location.href + " #res");
			}else{
				alert("사용실패")
			}
		}
	});
}

</script>
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
                                <table class="table" id="res">
                                    <thead>
                                    	<tr>
                                    	   <button type="submit" onclick="deleteRecruits()"  class="btn btn-outline-danger" style="float: right;">선택삭제</button>
                                    	   &ensp;&ensp;
                                    	   <a  href="<%=request.getContextPath()%>/enterprise/recruit/write" class="btn btn-outline-primary" style="float: right;" >공고등록</a>
                                        </tr>
                                        <tr>
                                            <th>
                                                <input type="checkbox" class="selectAllMembers" />
                                            </th>
                                            <th>제목</th>
                                            <th>카테고리</th>
                                            <th>작성일</th>
                                            <th>상세보기</th>
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                    	for(int i=0; i<recruits.size();i++){
                                    		Recruit recruit = recruits.get(i);
                                    		
                                    		int recruit_id = recruit.getRecruit_id();
                                    		String title = recruit.getTitle();
                                    		String category = recruit.getCategory();
                                    		String date=recruit.getDate().split(" ")[0];
                                    		
                                    		%>


  										<tr>
                                            <td>
                                                <input type="checkbox" name = "recruit_id"class="memberChk" onclick='OnOffMemberAllClickBtn()' value="<%=recruit_id %>">
                                            </td>
                                            <td><%=title %></td>
                                            <td><%=category %></td>
                                            <td><%=date %></td>
                                            <td><a href="<%=request.getContextPath() %>/enterprise/recruit/content?recruit_id=<%=recruit_id %>"  class="btn btn-outline-primary">상세보기</a></td>
                                            <td><button onclick="deleteRecruit(<%=recruit_id %>)"  class="btn btn-outline-danger">삭제</button></td>

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