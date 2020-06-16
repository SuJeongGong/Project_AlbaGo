<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">


<head>
    <meta charset="UTF-8">
    <title>공고보기</title>
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="./serve/Sidebar.jsp" %>


<div class="container show-grid">
    <div class="row">
    <div class="col"><br>
        <h1>공고지원자 관리</h1>
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#qwe">게재중인 공고</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#close">마감된 공고</a>
              </li>
      
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#all">전체 공고</a>
              </li>
            </ul>
    </div></div>


           <!--공고지원자관리 밑에 탭 3개-->
    <div class="tab-content">
                <div class="tab-pane fade show active" id="qwe"> <br>
                    <p>•최근 1년 이내에 등록한 알바공고 내역 및 지원현황 확인이 가능합니다. (지원자 리스트는 공고마감일로부터 90일 이내만 확인 가능)<br>
                    •무료등록은 관리자의 심사를 거쳐 게재(24시간)되며, 게재 전까지 대기중 공고에서 확인이 가능합니다.<br>
                    •모집종료일을 상시모집으로 선택하신 경우 등록일을 포함하여 21일이 지나면 자동으로 마감처리됩니다. (즉시등록은 14일, 무료등록은 5일 후 마감)<br>
                    •공고등록 제한규정에 해당될 경우 사전 동의 없이 공고를 삭제/수정 할 수 있습니다. </p><br>
                    <table class="table table-bordered" > 
                            <thead>
                                    <tr><th>
                                    <a href="blank.html" target="_parent">전체</a>
                                    </th></tr>
                            </thead>

                            <tbody>
                                <tr> 
                                    <td>작성일 데이트 피커 같이 해주세요,,     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <!--&nbsp; 이거 공백임 ㅠ-->
                                        <button type="button" class="btn btn-light active btn-sm" id="title">공고제목</button>
                                        <button type="button" class="btn btn-light active btn-sm" id="company_name">기업명</button>
                                        <button type="button" class="btn btn-light active btn-sm"id="title_id">공고번호</button>
                                        <button type="button" class="btn btn-light dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">담당자명 
                                            <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0)">담당자명</a></li>
                                            <li><a href="javascript:void(0)">담당자 전화번호</a></li>
                                            <li><a href="javascript:void(0)">담당자 이메일</a></li>
                                            </ul>
                                        </button>

                                        <input type="text" class="texTyp " title="검색어 입력" id="dev_SearchKeyword" name="dev_SearchKeyword" value="" autocomplete="off" placeholder="검색해주세요"></input>
                                        <button type="submit" class="cBtn " id="btn_search">검색</button>
                                    </td>
                                </tr>
                            </tbody>
                    </table>

                </div>
                <div class="tab-pane fade" id="close"><br>
                    <p>•최근 1년 이내에 등록한 알바공고 내역 및 지원현황 확인이 가능합니다. (지원자 리스트는 공고마감일로부터 90일 이내만 확인 가능)<br>
                    •무료등록은 관리자의 심사를 거쳐 게재(24시간)되며, 게재 전까지 대기중 공고에서 확인이 가능합니다.<br>
                    •모집종료일을 상시모집으로 선택하신 경우 등록일을 포함하여 21일이 지나면 자동으로 마감처리됩니다. (즉시등록은 14일, 무료등록은 5일 후 마감)<br>
                    •공고등록 제한규정에 해당될 경우 사전 동의 없이 공고를 삭제/수정 할 수 있습니다. </p><br>
                <table class="table table-bordered"> 
                    <thead>
                            <tr><th>
                            <a href="blank.html" target="_parent">전체</a>
                            </th></tr>
                    </thead>

                    <tbody>
                        <tr> 
                            <td>작성일 데이트 피커 같이 해주세요,,     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <!--&nbsp; 이거 공백임 ㅠ-->
                                <button type="button" class="btn btn-light active btn-sm" id="title">공고제목</button>
                                <button type="button" class="btn btn-light active btn-sm" id="company_name">기업명</button>
                                <button type="button" class="btn btn-light active btn-sm"id="title_id">공고번호</button>
                                <button type="button" class="btn btn-light dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">담당자명 
                                    <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0)">담당자명</a></li>
                                    <li><a href="javascript:void(0)">담당자 전화번호</a></li>
                                    <li><a href="javascript:void(0)">담당자 이메일</a></li>
                                    </ul>
                                </button>

                                <input type="text" class="texTyp " title="검색어 입력" id="dev_SearchKeyword" name="dev_SearchKeyword" value="" autocomplete="off" placeholder="검색해주세요"></input>
                                <button type="submit" class="cBtn " id="btn_search">검색</button>
                            </td>
                        </tr>
                    </tbody>
                </table>   
                
                </div>

                <div class="tab-pane fade" id="all"> <br>
                    <p>•최근 1년 이내에 등록한 알바공고 내역 및 지원현황 확인이 가능합니다. (지원자 리스트는 공고마감일로부터 90일 이내만 확인 가능)<br>
                    •무료등록은 관리자의 심사를 거쳐 게재(24시간)되며, 게재 전까지 대기중 공고에서 확인이 가능합니다.<br>
                    •모집종료일을 상시모집으로 선택하신 경우 등록일을 포함하여 21일이 지나면 자동으로 마감처리됩니다. (즉시등록은 14일, 무료등록은 5일 후 마감)<br>
                    •공고등록 제한규정에 해당될 경우 사전 동의 없이 공고를 삭제/수정 할 수 있습니다. </p><br>
                <table class="table table-bordered"> 
                    <thead>
                            <tr><th>
                            <a href="blank.html" target="_parent">전체</a>
                            </th></tr>
                    </thead>

                    <tbody>
                        <tr> 
                            <td>작성일 데이트 피커 같이 해주세요,,    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <!--&nbsp; 이거 공백임 ㅠ-->
                                <button type="button" class="btn btn-light active btn-sm" id="title">공고제목</button>
                                <button type="button" class="btn btn-light active btn-sm" id="company_name">기업명</button>
                                <button type="button" class="btn btn-light active btn-sm"id="title_id">공고번호</button>
                                <button type="button" class="btn btn-light dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">담당자명 
                                    <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0)">담당자명</a></li>
                                    <li><a href="javascript:void(0)">담당자 전화번호</a></li>
                                    <li><a href="javascript:void(0)">담당자 이메일</a></li>
                                    </ul>
                                </button>

                                <input type="text" class="texTyp " title="검색어 입력" id="dev_SearchKeyword" name="dev_SearchKeyword" value="" autocomplete="off" placeholder="검색해주세요"></input>
                                <button type="submit" class="cBtn " id="btn_search">검색</button>
                            </td>
                        </tr>
                    </tbody>
                </table>     
                   
                </div>
   </div>
 
      <div class="row">
        <div class="col">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#all_list">모든공고</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#b">지원자 있는 공고 인재</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#c">유료서비스 이용 공고</a>
              </li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade show active" id="all_list">
               <table class="table  table-bordered ">
  
                        <thead>
                            <tr>
                                <th>  <input type="checkbox" name="Chk_choice" id="chk"> </th>
                                <th>공고 번호 작성일</th>
                                <th>알바공고</th>
                                <th>모집현황</th>
                                <th>지원자관리</th>
                                <th>유료서비스</th>
                                <th>관리</th>

                        
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                                <td>2020-05-30</td>
                                <td>맥도날드</td>
                                <td>데이터3</td>
                                <td>무료</td>
                                <td>데이터5</td>
                                <td>
	                              <a href="공고작성.html"><button type="button" >수정</button></a>
                                 <br>
                                 <button>마감</button>
                                </td>

                          
                        
                            </tr>
                            <tr>
                                 <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                                <td>2020-05-30</td>
                                <td>데이터2</td>
                                <td>데이터3</td>
                                <td>데이터4</td>
                                <td>데이터5</td>  
                                <td>
	                              <a href="공고작성.html"><button type="button" >수정</button></a>
                                 <br>
                                 <button>마감</button>
                                </td>
                            </tr>
                            <tr>
                                 <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                                <td>2020-05-30</td>
                                <td>데이터2</td>
                                <td>데이터3</td>
                                <td>데이터4</td>
                                <td>데이터5</td>
                                <td>
	                              <a href="공고작성.html"><button type="button" >수정</button></a>
                                 <br>
                                 <button>마감</button>
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>

              </div>
              <div class="tab-pane fade" id="b">
               <table class="table  table-bordered "> 
  
                       <thead>
                            <tr>
                                <th>  <input type="checkbox" name="Chk_choice" id="chk"> </th>
                                <th>공고 번호 작성일</th>
                                <th>알바공고</th>
                                <th>모집현황</th>
                                <th>지원자관리</th>
                                <th>유료서비스</th>

                        
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                                <td>2020-05-30</td>
                                <td>데이터2</td>
                                <td>데이터3</td>
                                <td>데이터4</td>
                                <td>데이터5</td>
                        
                            </tr>
                            <tr>
                                 <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                                <td>2020-05-30</td>
                                <td>데이터2</td>
                                <td>데이터3</td>
                                <td>데이터4</td>
                                <td>데이터5</td>
                            </tr>
                            <tr>
                                 <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                                <td>2020-05-30</td>
                                <td>데이터2</td>
                                <td>데이터3</td>
                                <td>데이터4</td>
                                <td>데이터5</td>
                            </tr>
                        
                        </tbody>
                    </table>

              </div>
              <div class="tab-pane fade" id="c">
              <table class="table  table-bordered "> 
  
                       <thead>
                            <tr>
                                <th>  <input type="checkbox" name="Chk_choice" id="chk"> </th>
                                <th>공고 번호 작성일</th>
                                <th>알바공고</th>
                                <th>모집현황</th>
                                <th>지원자관리</th>
                                <th>유료서비스</th>
                                <th>관리</th>

                        
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                                <td>2020-05-30</td>
                                <td>데이터2</td>
                                <td>데이터3</td>
                                <td>데이터4</td>
                                <td>데이터5</td>
                                
                        
                            </tr>
                            <tr>
                                 <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                                <td>2020-05-30</td>
                                <td>데이터2</td>
                                <td>데이터3</td>
                                <td>데이터4</td>
                                <td>데이터5</td>
                            </tr>
                            <tr>
                                 <td><input type="checkbox" name="Chk_choice" id="chk"> </td>
                                <td>2020-05-30</td>
                                <td>데이터2</td>
                                <td>데이터3</td>
                                <td>데이터4</td>
                                <td>데이터5</td>
                            </tr>
                        
                        </tbody>
                    </table>

              </div>
            </div>
        </div>
      </div>
	<a href="공고작성.html"><button type="button" class="btn btn-primary" >공고등록</button></a>
	

            
       </div>
              
</div>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>



</html>
