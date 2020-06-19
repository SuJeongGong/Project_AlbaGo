<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../serve/header.jsp" %>
	
	
	
	
	
          <div class="col-lg-12 ftco-animate">
           
              <div class="comment-form-wrap pt-12">
                <form action="#" class="p-5 bg-light">
                  	
                	<h3 class="mb-1 h4 font-weight-bold">모집 내용</h3><hr/>                      	
                    <div class="row">
                    	<h5>제목</h5><input type="text" class="form-control" id="title" name = "" placeholder="공고 제목을 입력해 주세요 (예: 백화점 스포츠의류매장 판매알바 모집)">
                    </div>   
                    <div class="row"><h5>업직종</h5>&nbsp;&nbsp;
                    		<div class="form">
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
                    <div class="row"> <h5>모집인원</h5><input type="text" class="form-control" id="title" name = "" placeholder="모집인원이 명확하지 않은경우 0을 입력해주세요">명
                    </div>   
                    
                    
                    
                    <br/><br/>
                	<h3 class="mb-1 h4 font-weight-bold">근무 조건</h3><hr/>
                    <div class="row"><h5>근무 기간</h5>&nbsp;&nbsp;
                    	<input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_5"  value="0" class="ip">&nbsp;
                              <label for="Chk_Duty_Term_5">1주일 이하</label>&nbsp;
                        <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_10"  value="1" class="ip">&nbsp;
                             <label for="Chk_Duty_Term_10">1개월</label>&nbsp;
                        <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_20"   value="2" class="ip">&nbsp;
                             <label for="Chk_Duty_Term_20">3개월~6개월</label>&nbsp;
                        <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_30" value="3" class="ip">&nbsp;
                             <label  for="Chk_Duty_Term_30">6개월~1년</label>&nbsp;
                        <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_40" value="4" class="ip">&nbsp;
                        	<label for="Chk_Duty_Term_40">1년이상</label>&nbsp;
                        <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_45" value="5" class="ip">&nbsp;
                        	<label for="Chk_Duty_Term_45">기간협의</label>
                        	
                    </div>   	
                    <div class="row"><h5>근무 요일</h5>&nbsp;&nbsp;
                    	<input type="checkbox" name="Chk_week" id="Chk_week_1" value="1">&nbsp;
                    		<label for="Chk_week_1">월</label>&nbsp;
                                            <input type="checkbox" name="Chk_week" id="Chk_week_2" value="2">&nbsp;
                                            	<label for="Chk_week_2">화</label>&nbsp;
                                            <input type="checkbox" name="Chk_week" id="Chk_week_3" value="3">&nbsp;
                                            	<label for="Chk_week_3">수</label>&nbsp;
                                            <input type="checkbox" name="Chk_week" id="Chk_week_4" value="4">&nbsp;
                                            	<label for="Chk_week_4">목</label>&nbsp;
                                            <input type="checkbox" name="Chk_week" id="Chk_week_5" value="5">&nbsp;
                                            	<label for="Chk_week_5">금</label>&nbsp;
                                            <input type="checkbox" name="Chk_week" id="Chk_week_6" value="6">&nbsp;
                                            	<label for="Chk_week_6">토</label>&nbsp;
                                            <input type="checkbox" name="Chk_week" id="Chk_week_7" value="7">&nbsp;
                                            	<label for="Chk_week_7">일</label>
                    
                    
                    </div>   	
                    <div class="row">
                    	<h5>근무 시간</h5><input type="text" class="form-control" id="title" name = "">
                    </div>   	
                    <div class="row">
                    	<h5>급여 </h5><input type="text" class="form-control" id="title" name = "">원                    
                    </div>   	
                     	
                     	
                     	
                    <br/><br/> 	
                    <h3 class="mb-1 h4 font-weight-bold">지원 조건</h3><hr/>       
                    <div class="row">
                    <h5>성별</h5>&nbsp;&nbsp;
                    	<input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_5"  value="0" class="ip">&nbsp;
                              <label for="Chk_Duty_Term_5">남자</label>&nbsp;
                        <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_10"  value="1" class="ip">&nbsp;
                             <label for="Chk_Duty_Term_10">여자</label>&nbsp;
                        <input type="radio" name="Chk_Duty_Term" id="Chk_Duty_Term_20"   value="2" class="ip">&nbsp;
                             <label for="Chk_Duty_Term_20">무관</label>&nbsp;
                    </div>   	
                    <div class="row"><h5>연령</h5>&nbsp;&nbsp;
						<input type="text" id=" " value="" title="세" maxlength="3" size="3" placeholder="">&nbsp;세 이상 ~ &nbsp;
		               	<input type="text" id=" " value="" title="세" maxlength="3" size="3" placeholder="">&nbsp;세
                    </div>   	
                    <div class="row"><h5>학력조건</h5>&nbsp;&nbsp;
                    						<div class="form">
                                                <select class="form-control">
                                                    <option>무관</option>
                                                    <option>초등학교 졸업</option>
                                                    <option>중학교 졸업</option>
                                                    <option>고등학교 졸업</option>
                                                    <option>대학(2,3년제) 졸업</option>
                                                    <option>대학(4년제) 졸업</option>
                                                    <option>대학원 졸업이상</option>
                                                </select>
                                            </div>
                    </div>   	
                    
                    <br/>
                    <div class="row">
                
	                    <input type="submit" value="등록하기" class="btn py-1 px-1 btn-primary col-lg-6 ">
	                    <input type="submit" value="취소" class="btn py-1 px-1 btn-primary col-lg-6">         
                    </div>
                </form>
              </div>
            </div>
	
	<%@ include file="../serve/footer.jsp" %>	

</body>
</html>