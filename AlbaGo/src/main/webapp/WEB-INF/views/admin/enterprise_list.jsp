<%@page import="com.spring.ex.dto.Enterprise"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>기업검색</title>
</head>



<body>
	<%
		String conPath = request.getContextPath();
	%>
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
                        <h1 class="h3 mb-2 text-gray-800">기업 검색</h1>
                        <hr />

                        <div class="row">
                            <div class="col-md-12">
                                <form action="<%=conPath%>/admin/enterprise_list/id" method="get" name="keyword" id="keyword">
                                    <div class="input-group">
                                        <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                      
                                            <select id="category" name="category">
                                                <option value="enterprise_id" id="enterprise_id">기업아이디</option>
                                                <option value="name" id="name">기업이름</option>
                                                <option value="phone" id="phone">기업전화번호</option>
                                                <option value="manager_name" id="manager_name">담당자이름</option>
                                                <option value="manager_phone" id="manager_phone">담당자번호</option>
                                            </select>
                                       
                                         <input type="text" class="form-control form-control-sm" name="search" > <!-- 검색내용입력 -->
                                        <span class="input-group-btn">
                                            <button  class="btn btn-info" type="submit" >검색</button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-12">
                                <table class="table table-list-search">
                                    <thead>
                                        <tr>
                                            <th>기업아이디</th>
                                            <th>비밀번호</th>
                                            <th>기업이름</th>
                                            <th>기업전화번호</th>
                                            <th>담당자이름</th>
                                            <th>담당자번호</th>
                                            <th>카테고리</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <%
											ArrayList<Enterprise> enterprises = (ArrayList)request.getAttribute("enterprises");
											for (int i = 0; i < enterprises.size(); i++) {
												Enterprise list = enterprises.get(i);
												String enterprise_id=list.getEnterprise_id();
												String password=list.getPassword();
												String name=list.getName();
												String business_number=list.getBusiness_number();
												String manager_name=list.getManager_name();
												String manager_phone=list.getManager_phone();
												String category=list.getCategory();
											%>
                                        <tr>
                                            <td><a href="<%=conPath%>/admin/enterprise_detail?enterprise_id=<%=enterprise_id %>"><%=enterprise_id%></a></td>
                                          	<td><%=password %></td>
                                            <td><%=name %></td>
                                            <td><%=business_number %></td>
                                            <td><%=manager_name %></td>
                                            <td><%=manager_phone %></td>
                                            <td><%= category%></td>
                                        </tr>
										<%} %>
                                    </tbody>
                                </table>
                            </div>

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