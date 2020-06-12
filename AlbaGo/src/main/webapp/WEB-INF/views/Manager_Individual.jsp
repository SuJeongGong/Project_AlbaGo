<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>my page</title>
<!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>
<div id="wrapper">
   <!-- 사이드 바 -->
   <%@ include file="./Sidebar.jsp" %>
   
   <!-- content wrapper -->
   <div id="content-wrapper" class="d-flex flex-column">
      <!-- main -->
         <div id ="content">
            <!-- Topbar -->
         <%@ include file="./Topbar.jsp" %>
         
         <!-- main 본문  -->
         <div class="container-fluid">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
                  <h1 class="h3 mb-0 text-gray-800">개인 회원 정보</h1>
                </div>
          <!-- main 본문을 한 줄로 묶기 -->
          <div class="row">
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">회원 정보  
                          
                        </h6>
                        
                      </div>
                      <div class="card-body">
                        <div class="text-xs">
                          안전한 정보보호를 위해 연락처 일부만 확인가능하며,<br/> 수정화면에서 정확한 연락처 확인이 가능합니다.<br/><br/>
                        </div>
                        
                        <table>
                          <tr>
                            <td>이름</td>
                            <td>공수정</td>
                          </tr>
                          <tr>
                            <td>이메일</td>
                            <td>avsd@naver.com</td>
                          </tr>
                          <tr>
                            <td>연락처</td>
                            <td>010-****-6425</td>
                          </tr>
                          <tr>
                            <td>주소</td>
                            <td>서울특별시 동대문구 ******</td>
                          </tr>
                        </table>
                      </div>
                    </div>
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">이력서 관리
                          
                        </h6>
                      </div>
                      <div class="card-body">
                        
                        
                        <table class="table table-striped custab">
                          <thead>
                            <!-- 제목 -->
                            <tr>
                              <th>번호</th>
                              <th style="width:30%">이력서 제목</th>
                              <th class="text-center">최종 수정일</th>
                              <th class="text-center">관리</th>
                              <th class="text-center">공개여부</th>
                              <th class="text-center">맞춤알바</th>
                            </tr>
                          </thead>
      
                            <!-- 첫번째 -->
                            <tr>
                              <td>1</td>
                              <td>News</td>
                              <td class="text-center">-</td>
                              <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span
                                    class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#"
                                  class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
                              <td class="text-center">-</td>
                              <td class="text-center">-</td>
                            </tr>
      
                            <!-- 두번째 -->
                            <tr>
                              <td>2</td>
                              <td>Products</td>
                              <td class="text-center">-</td>
                              <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span
                                    class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#"
                                  class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
                              <td class="text-center">-</td>
                              <td class="text-center">-</td>
                            </tr>
      
                            <!-- 세번째 -->
                            <tr>
                              <td>3</td>
                              <td>Blogs</td>
                              <td class="text-center">-</td>
                              <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span
                                    class="glyphicon glyphicon-edit"></span> 수정</a> <a href="#"
                                  class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 삭제</a></td>
                              <td class="text-center">-</td>
                              <td class="text-center">-</td>
                            </tr>
                        </table>
                      </div>
                    </div>
                  </div>
    
                  <div class="row">
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">지원한 알바
                        </h6>
                      </div>
                      <div class="card-body">
                      
                        
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                          <thead>

                              <!-- 제목 -->
                              <tr>
                                  <th style="width:10%">지원일</th>
                                  <th style="width:25%">지원내역</th>
                                  <th style="width:10%">지원방법</th>
                                  <th style="width:10%">열람여부</th>
                                  <th style="width:10%">게재상태</th>
                                  <th style="width:10%">지원상태</th>
                              </tr>
                          </thead>
                          <tbody>

                              <!-- 1번째 -->
                              <tr>
                                  <td>2008-12-19</td>
                                  <td><a href="#">버거킹</a></td>
                                  <td>온라인지원</td>
                                  <td>미열람</td>
                                  <td>마감</td>
                                  <td><button type="submit"
                                          class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                              </tr>

                              <!-- 두번째 -->
                              <tr>
                                  <td>2008-12-19</td>
                                  <td><a href="#">버거킹</a></td>
                                  <td>온라인지원</td>
                                  <td>미열람</td>
                                  <td>마감</td>
                                  <td><button type="submit"
                                          class="btn btn-sm btn-primary btn-cancel">지원취소</button></td>
                              </tr>

                              

                          </tbody>
                      </table>
                      </div>
                    </div>
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">스크랩 알바
                        </h6>
                      </div>
                      <div class="card-body">
                        
                        <table class="table table-striped">
                          
                  </div>

                  <!-- 테이블 -->
                  <thead>

                      <!-- 제목 -->
                      <tr class="row-name">
                          <th class="check"><label><input type="checkbox" value=""></label></th>
                          <th class="text-center">스크랩일</th>
                          <th class="text-center" style="width:25%">기업명/모집제목</th>
                          <th class="text-center">지역</th>
                          <th class="text-center">급여</th>
                          <th class="text-center">게재상태</th>
                          <th style="width:10%">지원여부</th>
                          <th class="text-center">마감일</th>
                          <th class="text-center">메모</th>
                      </tr>
                  </thead>

                  <!-- 내용 -->
                  <tbody>

                      <!-- 첫번쨰 -->
                      <tr class="row-content">
                          <td class="check"><label><input type="checkbox" value=""></label></td>
                          <td class="text-center"> 2020-05-19 </td>
                          <td> <span class="label label-default"><a href="#">배민 커넥트 화정점</a></span>
                          </td>
                          <td class="text-center">경기 고양시</td>
                          <td class="text-center">시급<br />10,000원</td>
                          <td class="text-center">게재중<br />(상시모집)</td>
                          <td>
                              <a class="btn btn-info edit" href="path/to/settings"
                                  aria-label="Settings">
                                  <i class="fa fa-pencil-square-o" aria-hidden="true">지원</i>
                              </a>
                              <a class="btn btn-danger btn-xs" href="path/to/settings"
                                  aria-label="Settings">
                                  <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                              </a>
                          </td>
                          <td class="text-center">상시모집</td>
                          <td class="text-center">입력</td>
                      </tr>

                      <!-- 두번째 -->
                      <tr class="row-content">
                          <td class="check"><label><input type="checkbox" value=""></label></td>
                          <td class="text-center"> 2020-05-19 </td>
                          <td> <span class="label label-default"><a href="#">버거킹</a></span></td>
                          <td class="text-center">경기 고양시</td>
                          <td class="text-center">시급<br />10,000원</td>
                          <td class="text-center">게재중<br />(상시모집)</td>
                          <td>
                              <a class="btn btn-info edit" href="path/to/settings"
                                  aria-label="Settings">
                                  <i class="fa fa-pencil-square-o" aria-hidden="true">지원</i>
                              </a>
                              <a class="btn btn-danger btn-xs" href="path/to/settings"
                                  aria-label="Settings">
                                  <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                              </a>
                          </td>
                          <td class="text-center">상시모집</td>
                          <td class="text-center">입력</td>
                      </tr>

                      <!-- 세번째 -->
                      <tr class="row-content">
                          <td class="check"><label><input type="checkbox" value=""></label></td>
                          <td class="text-center"> 2020-05-19 </td>
                          <td> <span class="label label-default"><a href="#">버거킹</a></span></td>
                          <td class="text-center">경기 고양시</td>
                          <td class="text-center">시급<br />10,000원</td>
                          <td class="text-center">게재중<br />(상시모집)</td>
                          <td>
                              <a class="btn btn-info edit" href="path/to/settings"
                                  aria-label="Settings">
                                  <i class="fa fa-pencil-square-o" aria-hidden="true">지원</i>
                              </a>
                              <a class="btn btn-danger btn-xs" href="path/to/settings"
                                  aria-label="Settings">
                                  <i class="fa fa-pencil-square-o" aria-hidden="true">삭제</i>
                              </a>
                          </td>
                          <td class="text-center">상시모집</td>
                          <td class="text-center">입력</td>
                      </tr>
                  </tbody>
                  </table>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">인재 게시판 작성글
                          <a href="#" class="btn btn-primary btn-icon-split"><span class="text">자세히</span></a>
                        </h6>
                      </div>
                      <div class="card-body">                        
                        <table class="table table-striped">
                          <thead>
                            <tr>
                              <th>이름</th>
                              <th>이력서제목</th>
                              <th>경력,자격증</th>
                              <th>희망지역</th>
                              <th>조회수</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>
                                임OO<small>(남/24세)</small>
                              </td>
                              <td>밝은 미소와 긍정적 마인드를 가진 인재입니다.</td>
                              <td>경력 : 신입</td>
                              <td>경기 고양시</td>
                              <td>12</td>
                            </tr>
                            <tr>
                              <td>
                                임OO<small>(남/24세)</small>
                              </td>
                              <td>강인한 체력으로 무장한 믿음직한 인재입니다.</td>
                              <td>경력 : 신입</td>
                              <td>경기 고양시</td>
                              <td>12</td>
                            </tr>
                            <tr>
                              <td>
                                임OO<small>(남/24세)</small>
                              </td>
                              <td>강인한 체력으로 무장한 믿음직한 인재입니다.</td>
                              <td>경력 : 신입</td>
                              <td>경기 고양시</td>
                              <td>12</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                    <div class="card col-xl-12 shadow mb-4">
                      <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">커뮤니티 게시판 작성글 
                        </h6>
                      </div>
                      <div class="card-body">
              
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                          <thead>
                            <tr>
                              <th>작성일</th>
                              <th>제목</th>
                              <th>작성자</th>
                              <th>관리</th>
                              <th>조회수</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>20200530</td>
                              <td>후기</td>
                              <td>송원준</td>
                              <td><input type="submit" value="수정" class="btn py-1 px-1 btn-info">
                                  <input type="submit" value="삭제" class="btn py-1 px-1 btn-danger">
                                </td>
                              <td>61</td>
                            </tr>
        
                            <tr>
                              <td>20200530</td>
                              <td>후기</td>
                              <td>송원준</td>
                              <td><input type="submit" value="수정" class="btn py-1 px-1 btn-info">
                                  <input type="submit" value="삭제" class="btn py-1 px-1 btn-danger">
                                </td>
                              <td>61</td>
                            </tr>
                            <tr>
                              <td>20200530</td>
                              <td>후기</td>
                              <td>송원준</td>
                              <td><input type="submit" value="수정" class="btn py-1 px-1 btn-info">
                                  <input type="submit" value="삭제" class="btn py-1 px-1 btn-danger">
                                </td>
                              <td>61</td>
                            </tr>
                            <tr>
                              <td>20200530</td>
                              <td>후기</td>
                              <td>송원준</td>
                              <td><input type="submit" value="수정" class="btn py-1 px-1 btn-info">
                                  <input type="submit" value="삭제" class="btn py-1 px-1 btn-danger">
                                </td>
                              <td>61</td>
                            </tr>
                            
                            
                            
                           
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
          </div><!-- 끝 main 본문  -->
  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

 

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>



</div><!-- 끝 main 본문  -->
         </div><!-- 끝 main -->
         <!-- footer -->
      <%@ include file="./footer.jsp" %>
   </div><!-- 끝 content wrapper -->
</div><!-- 끝  wrapper -->
</body>
</html>