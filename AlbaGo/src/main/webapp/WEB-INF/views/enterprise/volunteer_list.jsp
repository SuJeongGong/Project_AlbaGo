<%@page import="com.spring.ex.dto.Volunteer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Recruit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원자 관리</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function updateResult(id,result) {
	$.ajax({
		url : "./updateResult",
		method : "GET",
		data : {
			result : result,
			id:id
		},
		completer : function(res) {
			console.log("sdgsehwsbdsd");
			var text = res;
			$(".result").html(text);
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
	
	$.ajax({
		url : "./updateResults",
		method : "GET",
		data : {
			result : result,
			volunteer_ids: volunteer_ids
		},
		completer : function(res) {
			console.log("sdgsehwsbdsd");
			var text = res;
			$(".result").html(text);
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
	          <h1 >지원자 관리</h1>
	      </div>
	      <div class="row">
	          <ul>
	          	<li>공고글에 지원한 지원자들을 확인하고 결과를 저장할 수 있습니다.</li>
	          	<li>결과는 언제든 수정 가능합니다</li>
	          </ul>
          
		</div>
      <div class="row">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    	<tr>
                                    	   <button type="submit" onclick="updateResults('거절')" class="btn btn-outline-primary" style="float: right;">선택거절</button>
                                    	   <button type="submit" onclick="updateResults('승락')"  class="btn btn-outline-primary" style="float: right;">선택승락</button>
                                        </tr>
                                        <tr>
                                            <th>
                                                <input type="checkbox" class="selectAllMembers"  onclick='OnOffMemberAllClickBtn()'/>
                                            </th>
                                            <th>지원번호</th>
                                            <th>공고글번호</th>
                                            <th>공고글 제목</th>
                                            <th>지원자 아이디</th>
                                            <th>이력서</th>
                                            <th>메모</th>
                                            <th>지원날짜 </th>
                                            <th>결과</th>
                                            <th>결과선택</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                    	ArrayList<Volunteer> volunteers = (ArrayList)request.getAttribute("volunteers");
                                    	for(int i=0; i<volunteers.size();i++){
                                    		Volunteer volunteer = volunteers.get(i);
                                    		
                                    		int recruit_id = volunteer.getRecruit_id();
                                    		String title = volunteer.getRecruit_title();
                                    		String individual_id = volunteer.getIndividual_id();
                                    		String resume_title = volunteer.getResume_title();
                                    		String memo = volunteer.getMemo();
                                    		String date =volunteer.getDate();                                    		
                                    		String result =volunteer.getResult();                                    		
                                    		int volunteer_id = volunteer.getVolunteer_id();
                                    		%>


  										<tr>
                                            <td>
                                                <input type="checkbox" class="memberChk" name = "volunteer_id" value="<%=volunteer_id%>">
                                            </td>
                                            <td><%=volunteer_id %></td>
                                            <td><%=recruit_id %></td>
                                            <td><%=title %></td>
                                            <td><%=individual_id %></td>
                                            <td><%=resume_title %></td>
                                            <td><%=memo %></td>
                                            <td><%=date %></td>
                                         	<td class = "result"><%=result %></td>
                                            <td class = "result" ><button onclick="updateResult(<%=volunteer_id %>,'승락')" id="accept"class="btn btn-outline-danger" >승락</button><button  onclick="updateResult(<%=volunteer_id %>,'거절')"  type="submit" id ="reject" class="btn btn-outline-danger">거절</button></td>

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