<%@page import="com.spring.ex.dto.Career"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Resume"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>지원한 이력서 상세보기</title>
</head>

<body>
                    <%
	                    	Resume resume=(Resume)request.getAttribute("resume");
                    		ArrayList<Career> careers = resume.getCareer();
                    
                    %>
    <%@ include file="../serve/header.jsp" %>
    <div class="col-lg-12 ftco-animate">
        <div class="comment-form-wrap pt-12">
            <form action="<%=request.getContextPath() %>/individual/profile/write/save"name ="profile"class="p-5 bg-light">
                <h3 class="mb-1 h4 font-weight-bold">이력서 보기</h3>
                <hr />
                <div class="form-group row">
                    <h5 class="font-weight-bold">이력서 제목&nbsp;&nbsp;&nbsp;</h5> <%=resume.getTitle() %>
                </div>
                <br /><br />

                <h3 class="mb-1 h4 font-weight-bold">희망 근무 조건</h3>
                <hr />
                <div class="row form-group ">
                    <h5 class="font-weight-bold ">희망 업직종</h5>&nbsp;&nbsp;<%=resume.getCategory() %>
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 근무 기간</h5>&nbsp;&nbsp;<%=resume.getTerm() %>

                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 근무 요일</h5>&nbsp;&nbsp;<%=resume.getDate().split(" ")[0]%>
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 근무 시간&nbsp;&nbsp;&nbsp;&nbsp;</h5> <%=resume.getTime()%>시간
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 급여&nbsp;&nbsp;&nbsp;</h5><%=resume.getSalary_type()%>&nbsp;&nbsp;<%=resume.getSalary_amount()%>원
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 지역&nbsp;&nbsp;&nbsp;&nbsp;</h5><%=resume.getPlace()%>
                </div>

                <br /><br />
                <div class="row">
                <h3 class="mb-1 h4 font-weight-bold">경력사항</h3>
                </div><hr />
                <table class="table table-bordered" width="100%" name="career">
                    <thead>
                        <th>기업이름</th>
                        <th>맡은업무</th>
                        <th>시작날짜</th>
                        <th>마지막날짜</th>
                    </thead>
                    <tbody id="career">
<%
					for(int i=0;i<careers.size();i++){
						Career career = careers.get(i);
						%>
						  <tr>
                            <td> <%=career.getName() %></td>
                            <td><%=career.getTask() %></td>
                            <td><%=career.getStart_date().split(" ")[0] %></td>
                            <td><%=career.getEnd_date().split(" ")[0] %></td>
                        </tr>
						
						<%
					}
%>
                    </tbody>
                </table>


                <br />

            </form>
        </div>
    </div>

    <%@ include file="../serve/footer.jsp" %>
</body>
</html>