<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>공고등록</title>
</head>
<body>
<div id="wrapper">
	<!-- 사이드 바 -->
	<%@ include file="./serve/Sidebar.jsp" %>


    <div class="container">
      <div class="row">
        <div class="col"><br>
           <h1 style="color:black">공고 등록</h1>
            <hr>

    <div class="table clearfix  ">
        <table class="ct">
           <h2 style="color:black">모집 내용</h2>
        <colgroup>
            <col style="width: 210px">
            <col style="width: 770px;">
        </colgroup>
        <tbody>
            <tr>
                <th>공고 제목</th>
                
                <td>
                    <div class="tdIp ib">
                    <input
                    data-val="title" 
                    type="text" 
                    id=" " value="" 
                    title="공고제목" maxlength="40" 
                    size="80"
                    placeholder="공고 제목을 입력해 주세요 (최대 40자 / 예: 백화점 스포츠의류매장 판매알바 모집)">
                    </div>
                </td>       
            </tr>
            
             <tr >
                <th>필수입력고용형태</th>
                <td>
                    <div class="form" id="">
                            <input type="checkbox"  name="Chk_Empmnt_Type_Code" id="Chk_Empmnt_Type_Code_1" value="1" title="">
                            <label for="Chk_Empmnt_Type_Code_1">알바</label>
                            <input type="checkbox"  name="Chk_Empmnt_Type_Code" id="Chk_Empmnt_Type_Code_2" value="2" title="">
                            <label for="Chk_Empmnt_Type_Code_2" >정규직</label>
                            <input type="checkbox"  name="Chk_Empmnt_Type_Code" id="Chk_Empmnt_Type_Code_3" value="3" title="">
                            <label for="Chk_Empmnt_Type_Code_3" >계약직</label>
                            <input type="checkbox"  name="Chk_Empmnt_Type_Code" id="Chk_Empmnt_Type_Code_4" value="4" title="">
                            <label for="Chk_Empmnt_Type_Code_4" >파견직</label>
                            <input type="checkbox" name="Chk_Empmnt_Type_Code" id="Chk_Empmnt_Type_Code_5" value="5" title="">
                            <label for="Chk_Empmnt_Type_Code_5" >청년인턴직</label>
                            <input type="checkbox"  name="Chk_Empmnt_Type_Code" id="Chk_Empmnt_Type_Code_6" value="6" title="">
                            <label for="Chk_Empmnt_Type_Code_6">위촉직</label>
                            <input type="checkbox"  name="Chk_Empmnt_Type_Code" id="Chk_Empmnt_Type_Code_7" value="7" title="">
                            <label for="Chk_Empmnt_Type_Code_7" >연수생/교육생</label>
                    </div>
                </td>
            </tr>
            <tr>
                <th>업직종</th>
                <td>
                    <div class="tdIp ib">
                    <input 
                    data-val="title" 
                    type="text" 
                    id=" " value="" 
                    title="업직종" maxlength="40" 
                    size="80"
                    placeholder="원하시는 업직종 또는 브랜드명을 입력해 주세요(예.서빙,패스트푸드,맥도날드)">
                    </div>
                </td>       
            </tr>
             <tr>
                <th>모집 인원</th>
                <td>
                    <div class="tdIp ib">
                    <input
                    data-val="title" 
                    type="text" 
                    id="Subject" value="" 
                    title="모집인원" maxlength="3" 
                    size="7"
                    placeholder="숫자입력">명  &nbsp &nbsp &nbsp   
                    <span style=" color:maroon; font-size:90%; text-align:center">모집인원이 명확하지 않은경우 "0"명으로 해주세요</span>
                    </div>
                </td>       
            </tr>

        </div>
      </div>
    </div>
 </table>
<br><br>
      <div class="row">
        <div class="col"><br>
            <hr>

    <div class="table clearfix  ">
        <table class="ct">
           <h2 style="color:black">회사정보</h2>
        <colgroup>
            <col style="width: 170px">
            <col style="width: 100px;">
        </colgroup>
        <tbody>
            <tr>
                <th>회사명</th>
                <td>
                    <div class="tdIp ib">
                    <input 
                    
                    type="text" 
                    id=" " value="" 
                    title="회사명" maxlength="40" 
                    size="40"
                    placeholder="">
                    </div>
                </td>      
                <th>대표명</th>
                
                  <td>
                    <div class="tdIp ib">
                    <input
                    
                    type="text" 
                    id=" " value="" 
                    title="회사명" maxlength="40" 
                    size="40"
                    placeholder="">
                    </div>
                </td>    
            </tr>
             <tr>
                <th>설립년도</th>
                <td>
                    <div class="tdIp ib">
                    <input
                    
                    type="text" 
                    id=" " value="" 
                    title="회사명" maxlength="40" 
                    size="40"
                    placeholder="">
                    </div>
                </td>      
                <th>직원수</th>
                
                  <td>
                    <div class="tdIp ib">
                    <input  
                    
                    type="text" 
                    id=" " value="" 
                    title="직원수" maxlength="3" 
                    size="40"
                    placeholder="">
                    </div>
                </td>     
            </tr>
            <tr>
                <th>사업자등록번호</th>
                <td>
                    <div class="tdIp ib">
                    <input
                    
                    type="text" 
                    id=" " value="" 
                    title="사업자등록번호" maxlength="40" 
                    size="40"
                    placeholder="">
                    </div>
                </td>      
                <th>회사/점포주소</th>
                
                  <td>
                    <div class="tdIp ib">
                    <input  
                    
                    type="text" 
                    id=" " value="" 
                    title="회사/점포주소" maxlength="40" 
                    size="40"
                    placeholder="">
                    </div>
                </td>     
            </tr>
        </tbody>
        </table>
    </div>

    <br><br>
    <div class="table clearfix  ">
        <table class="ct">
           <h2 style="color:black">담당자 정보</h2>
        <colgroup>
            <col style="width: 200px">
            <col style="width: 100px;">
        </colgroup>
        <tbody>
            <tr>
                <th>담당자명</th>
                <td>
                    <div class="tdIp ib">
                    <input 
                    
                    type="text" 
                    id=" " value="" 
                    title="담당자명" maxlength="40" 
                    size="40"
                    placeholder="">
                    </div>
                </td>      
                <th>E-mail</th>
                
                  <td>
                    <div class="tdIp ib">
                    <input
                    
                    type="text" 
                    id=" " value="" 
                    title="email" maxlength="40" 
                    size="40"
                    placeholder="">
                    </div>
                </td>    
            </tr>
             <tr>
                <th>전화번호</th>
                <td>
                    <div class="tdIp ib">
                    <input 
                    
                    type="text" 
                    id=" " value="" 
                    title="전화번호" maxlength="40" 
                    size="40"
                    placeholder="">
                    </div>
                </td>      
                <th>팩스번호</th>
                
                  <td>
                    <div class="tdIp ib">
                    <input 
                    
                    type="text" 
                    id=" " value="" 
                    title="팩스번호" maxlength="3" 
                    size="40"
                    placeholder="">
                    </div>
                </td>     
            </tr>
           
        </tbody>
        </table>
    </div>

    <br><br>
    <div class="table clearfix  ">
        <table class="ct">
           <h2 style="color:black">근무 조건</h2>
        <colgroup>
            <col style="width: 210px">
            <col style="width: 770px;">
        </colgroup>
        <tbody>
            <tr>
                <th>근무기간</th>
                <td>
                    <div class="form ib">
                            <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_5" title="1주일이하" value="0" class="ip">&nbsp;<label for="Chk_Duty_Term_5" >1주일 이하</label>&nbsp;
                            <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_10" title="1개월" value="1" class="ip">&nbsp;<label for="Chk_Duty_Term_10">1개월</label> &nbsp;
                            <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_20" title="3개월~6개월" value="2" class="ip">&nbsp;<label for="Chk_Duty_Term_20" >3개월~6개월</label>&nbsp;
                            <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_30" title="6개월~1년" value="3" class="ip">&nbsp;<label for="Chk_Duty_Term_30">6개월~1년</label>&nbsp;
                            <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_40" title="1년이상" value="4" class="ip">&nbsp;<label for="Chk_Duty_Term_40" >1년이상</label>&nbsp;
                            <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_45" title="기간협의" value="5" class="ip">&nbsp;<label for="Chk_Duty_Term_45">기간협의</label>
                        </div>
                </td>      
                
            </tr>
            <tr>
                <th>근무기간</th>
                <td>
                       <div class="form">
                            <input type="checkbox"  name="Chk_week" id="Chk_week_1" value="1" title="">&nbsp;<label for="Chk_week_1" >월</label>&nbsp;
                            <input type="checkbox"  name="Chk_week" id="Chk_week_2" value="2" title="">&nbsp;<label for="Chk_week_2" >화</label>&nbsp;
                            <input type="checkbox"  name="Chk_week" id="Chk_week_3" value="3" title="">&nbsp;<label for="Chk_week_3" >수</label>&nbsp;
                            <input type="checkbox"  name="Chk_week" id="Chk_week_4" value="4" title="">&nbsp;<label for="Chk_week_4" >목</label>&nbsp;
                            <input type="checkbox"  name="Chk_week" id="Chk_week_5" value="5" title="">&nbsp;<label for="Chk_week_5" >금</label>&nbsp;
                            <input type="checkbox"  name="Chk_week" id="Chk_week_6" value="6" title="">&nbsp;<label for="Chk_week_6" >토</label>&nbsp;
                            <input type="checkbox"  name="Chk_week" id="Chk_week_7" value="7" title="">&nbsp;<label for="Chk_week_7" >일</label>
                    </div>
                </td>      
            </tr>
             <tr>
                <th>근무시간</th>
                <td>
                    <div class="form">
                        <input type="text"  id=" " value=""  title="근무시간" maxlength="40" size="10" placeholder="">&nbsp;시간
                        </div>
                </td>      
            </tr>
             <tr>
                <th>급여</th>
                <td>
                    <div class="form">
                        <input type="text"  id=" " value=""  title="급여" maxlength="30" size="10" placeholder="">&nbsp;원
                        </div>
                </td>      
            </tr>
           
        </tbody>
        </table>

         <br><br>
    <div class="table clearfix  ">
        <table class="ct">
           <h2 style="color:black">지원 조건</h2>
        <colgroup>
            <col style="width: 210px">
            <col style="width: 770px;">
        </colgroup>
        <tbody>
            <tr>
                <th>성별</th>
                <td>
                    <div class="form ib">
                            <input type="radio" name="Chk_gender" id="no_gender" title="성별무관" value="0">&nbsp;<label for="no_gender" >성별무관</label>&nbsp;
                            <input type="radio" name="Chk_gender" id="only_man" title="남자" value="1">&nbsp;<label for="only_man">남자</label> &nbsp;
                            <input type="radio" name="Chk_gender" id="only_woman" title="여자" value="2">&nbsp;<label for="only_woman" >여자</label>&nbsp;
                     </div>
                </td>      
                
            </tr>
            <tr>
                <th>연령</th>
                <td>
                       <div class="form">
                              <input type="text"  id=" " value=""  title="세" maxlength="3" size="3" placeholder="">&nbsp;세 이상 ~ &nbsp;
                              <input type="text"  id=" " value=""  title="세" maxlength="3" size="3" placeholder="">&nbsp;세
                     
                    </div>
                </td>      
            </tr>
             <tr>
                <th>학력조건</th>
                <td>
                    <div class="form" >
                            <select class="form-control">
                            <option>초등학교 졸업</option>
                            <option>중학교 졸업</option>
                            <option>고등학교 졸업</option>
                            <option>대학(2,3년제) 졸업</option>
                            <option>대학(4년제) 졸업</option>
                            <option>대학원 졸업이상</option>
                            </select>
                        </div>
                         </div>
                </td>      
            </tr>
      

                </div>
            </div>
        </div>
           
        </tbody>
        </table>
          <div class="container">
			<div class="row">
				<div class="col">
	 
    </div>
    <br>    <br>
    <button type="button" class="btn btn-light">&nbsp;&nbsp;취소&nbsp;</button>
    <button type="button" class="btn btn-primary" >등록완료</button>






<!-- Bootstrap core JavaScript-->
<script src="<c:url value=" /vendor/jquery/jquery.min.js" />"></script>
<script src="<c:url value=" /vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value=" /vendor/jquery-easing/jquery.easing.min.js" />"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value=" /js/sb-admin-2.min.js" />"></script>

<!-- Page level plugins -->
<script src="<c:url value=" /vendor/chart.js/Chart.min.js" />"></script>

<!-- Page level custom scripts -->
<script src="<c:url value=" /js/demo/chart-area-demo.js" />"></script>
<script src="<c:url value=" /js/demo/chart-pie-demo.js" />"></script>
</body>

</html>