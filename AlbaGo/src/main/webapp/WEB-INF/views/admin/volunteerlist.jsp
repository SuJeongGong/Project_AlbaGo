<%@page import="com.spring.ex.dto.Volunteer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <title>지원자보기</title>

  <%
ArrayList<Volunteer> volunteers = (ArrayList) request.getAttribute("volunteers");
%>
  <script>
    function updateResult(id, result) {

      $.ajax({
        url: "./updateResult",
        method: "GET",
        data: {
          result: result,
          id: id
        },
        success: function (res) {
          if (res >= 1) {
            alert("결과 저장 완료");
            <% for (int i = 0; i < volunteers.size()  ; i++){ %>
				$("#res<%=i%>").load(window.location.href + " #res<%=i%>");
            <% } %>
          } else {
      		alert("실패");
   		  }
        }
      });
    }
    function updateResults(result) {
      var volunteer_ids = [];
      $("input[name='volunteer_id']:checked").each(function () {
        if (this.checked) {
          volunteer_ids.push($(this).val());
          console.log($(this).val());
        }
      })

      $.ajax({
        url: "./updateResults",
        method: "GET",
        data: {
          result: result,
          volunteer_ids: volunteer_ids
        },
        success: function (res) {
          if (res >= 1) {
            alert("결과 저장 완료");
    		<% for (int i = 0; i < volunteers.size()  ; i++){ %>
				$("#res<%=i%>").load(window.location.href + " #res<%=i%>");
            <% } %>
          } else {
      		alert("실패");
    	  }
        }
      });
    }



  </script>
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

</head>

<body>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script> 
  <div id="wrapper">
    <!-- 사이드 바 -->
    <%@ include file="../serve/manager_sidebar.jsp" %>

    <!-- content wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
      <!-- main -->
      <div id="content">
        <!-- Topbar -->
        <%@ include file="../serve/manager_topbar.jsp" %>

        <!-- main 본문  -->
        <div class="container-fluid">
          <!-- 요기다 작성  -->

          <div class="container">

            <hr />
            <h1 class="h3 mb-2 text-gray-800">지원자보기</h1>
            <hr />

            <div class="row">
              <div class="col-md-12">
                <div class="input-group">

                </div>
              </div>
              <div class="col-md-12">
                <table class="table table-list-search">
                  <thead>
                    <tr>
                      <button type="submit" onclick="updateResults('거절')" class="btn btn-outline-danger"
                        style="float: right;">선택거절</button>
                      <button type="submit" onclick="updateResults('승락')" class="btn btn-outline-primary"
                        style="float: right;">선택승락</button>
                    </tr>
                    <tr>
                      <th><input type="checkbox" class="selectAllMembers" onclick='OnOffMemberAllClickBtn()' /></th>
                      <th>지원번호</th>
                      <th>지원자 아이디</th>
                      <th>지원자 이름</th>
                      <th>이력서보기</th>
                      <th>메모</th>
                      <th>지원날짜</th>
                      <th>결과</th>
                      <th>결과선택</th>
                    </tr>
                  </thead>
                  <tbody>
                    <%
				
							for (int i = 0; i < volunteers.size(); i++) {
								Volunteer volunteer = volunteers.get(i);

								int recruit_id = volunteer.getBoard_recruit_id();
								String individual_id = volunteer.getIndividual_id();
								String individual_name = volunteer.getName();
								String resume_title = volunteer.getBoard_recruit_title();
								int resume_id = volunteer.getResume_id();
								String memo = volunteer.getMemo();
								String date = volunteer.getDate().split(" ")[0];
								String result = volunteer.getResult();
								if (result == null) {
									result = "미입력";
								}

								int volunteer_id = volunteer.getVolunteer_id();
						%>


                    <tr>
                      <td><input type="checkbox" class="memberChk" name="volunteer_id" value="<%=volunteer_id%>"></td>
                      <td><%=volunteer_id%></td>
                      <td><%=individual_id%></td>
                      <td><%=individual_name%></td>
                      <td><a href="<%=request.getContextPath()%>/enterprise/volunteer/resume?resume_id=<%=resume_id%>"
                          class="btn btn-outline-primary">보기</a></td>
                      <td><%=memo%></td>
                      <td><%=date%></td>
                      <td>
                        <div id="res<%=i%>"><%=result%></div>
                      </td>
                      <td><button onclick="updateResult(<%=volunteer_id%>,'승락')" id='accept'
                          class="btn btn-outline-primary">승락</button>
                        <button onclick="updateResult(<%=volunteer_id%>,'거절')" type="submit" id="reject"
                          class="btn btn-outline-danger">거절</button></td>

                    </tr>
                    <%
							}
						%>

                  </tbody>
                </table>
              </div>
				
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
				
              <div class="text-center" style="float: left;">
                <ul class="pagination">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                  </li>
                  <li class="page-item active" aria-current="page"><a class="page-link" href="#">1
                      <span class="sr-only">(current)</span></a></li>
                  <li class="page-item"><a class="page-link" href="#">2 </a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                  <li class="page-item"><a class="page-link" href="#">5</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>


        </div><!-- 끝 main 본문  -->
      </div><!-- 끝 main -->
      <!-- footer -->
      <%@ include file="../serve/manager_footer.jsp" %>
    </div><!-- 끝 content wrapper -->
  </div><!-- 끝  wrapper -->
</body>

</html>