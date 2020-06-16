<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>이력서 작성</title>
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../serve/sidebar.jsp" %>



<div class="container show-grid">
 <%@ include file="../serve/topbar.jsp" %>
    <div class="row">
    <div class="col"><br>
        <h1>인재스크랩</h1>



 
      <div class="row">
        <div class="col">
          
                        <div class="container-fluid">

                            <!-- Page Heading -->
                            <!-- 페이지 해더 -->
                            <hr />
                            <h6 class="mb-4">최근 6개월 이내에 스크랩한 인재정보 입니다.</h6>
                            <h6 class="mb-4">상태 항목을 통해 해당 공고의 종료 및 진행중 여부를 확인하실 수 있습니다.</h6>
                           
                            <hr />


                            <!-- DataTales Example -->
                            <div class="card shadow mb-4">

                                <!-- 파란색 글자 스크랩 인재 -->
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">인재 스크랩</h6>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped">

                                            <!-- 스크랩일순 등록일순 마감일순 -->
                                            <div class="dropdown">
                                                <a class="btn-top" style="margin-right: 15px;" href="#"
                                                    class="btn btn-primary btn-success pull-right"><i
                                                        class="fa fa-pencil-square-o" aria-hidden="true"></i> 스크랩일순</a>
                                                <a class="btn-top" style="margin-right: 15px;" href="#"
                                                    class="btn btn-primary btn-success pull-right"><i
                                                        class="fa fa-pencil-square-o" aria-hidden="true"></i> 등록일순</a>
                                                <a class="btn-top" style="margin-right: 15px;" href="#"
                                                    class="btn btn-primary btn-success pull-right"> <span
                                                        class="glyphicon glyphicon-plus"></span>
                                                    &nbsp 마감일순</a>
                                                <a class="btn-top" style="margin-left: 15px;" href="#"
                                                    class="btn btn-primary btn-success pull-left"> <span
                                                        class="glyphicon glyphicon-plus"></span>
                                                    &nbsp 스크랩취소</a>
                                            </div>
                                    </div>

                                    <!-- 테이블 -->
                                    <thead>

                                        <!-- 제목 -->
                                        <tr class="row-name">
                                            <th class="check"><label><input type="checkbox" value=""></label></th>
                                            <th class="text-center">스크랩일</th>
                                            <th class="text-center" style="width:25%">인재/스크랩제목</th>
                                            <th class="text-center">지역</th>
                                             <th style="width:10%">지원삭제</th>
                                      </tr>
                                    </thead>

                                    <!-- 내용 -->
                                    <tbody>

                                        <!-- 첫번쨰 -->
                                        <tr class="row-content">
                                            <td class="check"><label><input type="checkbox" value=""></label></td>
                                            <td class="text-center"> 2020-05-19 </td>
                                        <td> <span class="label label-default"><a href="#">뽑아주세요</a></span>
                                            </td>
                                            <td class="text-center">경기 고양시</td>
                                            <td>
                                                <a class="btn btn-danger btn-xs" href="path/to/settings"
                                                    aria-label="Settings">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                                                </a>
                                            </td>
                                         </tr>

                                        <!-- 두번째 -->
                                      <tr class="row-content">
                                            <td class="check"><label><input type="checkbox" value=""></label></td>
                                            <td class="text-center"> 2020-05-19 </td>
                                        <td> <span class="label label-default"><a href="#">뽑아주세요</a></span>
                                            </td>
                                            <td class="text-center">경기 고양시</td>
                                            <td>
                                                <a class="btn btn-danger btn-xs" href="path/to/settings"
                                                    aria-label="Settings">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                                                </a>
                                            </td>
                                         </tr>


                                        <!-- 세번째 -->
                                        <tr class="row-content">
                                            <td class="check"><label><input type="checkbox" value=""></label></td>
                                            <td class="text-center"> 2020-05-19 </td>
                                        <td> <span class="label label-default"><a href="#">뽑아주세요</a></span>
                                            </td>
                                            <td class="text-center">경기 고양시</td>
                                            <td>
                                                <a class="btn btn-danger btn-xs" href="path/to/settings"
                                                    aria-label="Settings">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                                                </a>
                                            </td>
                                         </tr>


                                        <!-- 네번째 -->
                                        <tr class="row-content">
                                            <td class="check"><label><input type="checkbox" value=""></label></td>
                                            <td class="text-center"> 2020-05-19 </td>
                                        <td> <span class="label label-default"><a href="#">뽑아주세요</a></span>
                                            </td>
                                            <td class="text-center">경기 고양시</td>
                                            <td>
                                                <a class="btn btn-danger btn-xs" href="path/to/settings"
                                                    aria-label="Settings">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                                                </a>
                                            </td>
                                         </tr>


                                        <!-- 다섯번째 -->
                                        <tr class="row-content">
                                            <td class="check"><label><input type="checkbox" value=""></label></td>
                                            <td class="text-center"> 2020-05-19 </td>
                                        <td> <span class="label label-default"><a href="#">뽑아주세요</a></span>
                                            </td>
                                            <td class="text-center">경기 고양시</td>
                                            <td>
                                                <a class="btn btn-danger btn-xs" href="path/to/settings"
                                                    aria-label="Settings">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                                                </a>
                                            </td>
                                         </tr>

                                    </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>



                    </div><!-- 끝 실제 내용 삽입 -->
               </div><!-- 끝 main 본문  -->
         </div><!-- 끝 main -->
         <!-- footer -->
      <%@ include file="../serve/footer.jsp" %>
   </div><!-- 끝 content wrapper -->
</div><!-- 끝  wrapper -->
</body>

</html>