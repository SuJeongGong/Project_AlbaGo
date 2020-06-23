<%@page import="com.spring.ex.dto.Career"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.ex.dto.Resume"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>이력서 상세보기</title>
</head>

<body>
                    <%
	                    	Resume resume=(Resume)request.getAttribute("resume");
                    		String title = resume.getTitle();
                    		String time = resume.getTime();
                    		String term = resume.getTerm();
                    		String day = resume.getDay();
                    		String date = resume.getDate();
                    		String place = resume.getPlace();
                    		String category = resume.getCategory();
                    		String salary_type = resume.getSalary_type();
                    		int salary_amount = resume.getSalary_amount();
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
                    <h5 class="font-weight-bold">희망 근무 요일</h5>&nbsp;&nbsp;<%=resume.getDate()%>
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 근무 시간&nbsp;&nbsp;&nbsp;&nbsp;</h5> <%=resume.getTime()%>시간
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 급여&nbsp;&nbsp;&nbsp;</h5><%=resume.getSalary_type()%>&nbsp;&nbsp;<%=resume.getSalary_amount()%>
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 지역&nbsp;&nbsp;&nbsp;&nbsp;</h5><%=resume.getPlace()%>
                </div>

                <br /><br />
                <div class="row">
                <h3 class="mb-1 h4 font-weight-bold">경력사항</h3>
                <input type="button"  style="float: right; class="btn py-1 px-1 btn-primary " onclick="javascript:addRow()" value="한줄 추가">
                <input type="button" style="float: right; class="btn py-1 px-1 btn-primary "   onclick="javascript:deleteRow()" value="한줄 제거">
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
                            <td><input type="text"class='form-control'  value="<%=career.getName() %>" name="career_name" /></td>
                            <td><input type="text" class='form-control'  value="<%=career.getTask() %>"  name="career_task" /></td>
                            <td><input type="text" class='form-control'  value="<%=career.getStart_date() %>"  name="career_start_date" /></td>
                            <td><input type="text"class='form-control'  value="<%=career.getEnd_date() %>" name="career_end_date" /></td>
                        </tr>
						
						<%
					}
%>
                    </tbody>
                </table>


                <br />
                <div class="row">
                    <input type="submit" value="등록하기" class="btn py-1 px-1 btn-primary col-lg-4">
                    <input type="reset" value="처음부터" class="btn py-1 px-1 btn-primary col-lg-4">
                    <input type="button" value="마이페이지" class="btn py-1 px-1 btn-primary col-lg-4">
                </div>
            </form>
        </div>
    </div>

    <%@ include file="../serve/footer.jsp" %>
</body>
</html>