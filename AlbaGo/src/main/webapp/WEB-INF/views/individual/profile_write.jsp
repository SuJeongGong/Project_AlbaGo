<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>이력서 작성</title>
</head>

<body>
    <%@ include file="../serve/header.jsp" %>
    <div class="col-lg-12 ftco-animate">
        <div class="comment-form-wrap pt-12">
            <form action="<%=request.getContextPath() %>/individual/profile/write/save" name ="profile"class="p-5 bg-light">
                <h3 class="mb-1 h4 font-weight-bold">이력서 작성</h3>
                <hr />
                <div class="form-group row">
                    <h5 class="font-weight-bold">이력서 제목&nbsp;&nbsp;&nbsp;</h5><input type="text"
                        class="col-sm-10 form-control " id="title" maxlength="20" size="20" name="title"
                        placeholder="회원님께서 구분 가능하게 이력서의 이름을 지어주세요. / 공고 게시판에 올라가는 제목은 아닙니다.">
                </div>
                <br /><br />

                <h3 class="mb-1 h4 font-weight-bold">희망 근무 조건</h3>
                <hr />
                <div class="row form-group ">
                    <h5 class="font-weight-bold ">희망 업직종</h5>&nbsp;&nbsp;
                    <select class="form-control col-lg-2" name="category">
                        <option value="외식/음료">외식/음료</option>
                        <option value="유통/판매">유통/판매</option>
                        <option value="문화/여가/생활">문화/여가/생활</option>
                        <option value="서비스">서비스</option>
                        <option value="사무직">사무직</option>
                        <option value="고객상담/리서치">고객상담/리서치</option>
                        <option value="생산/건설/노무">생산/건설/노무</option>
                        <option value="교육/강사">교육/강사</option>
                        <option value="디자인">디자인</option>
                        <option value="미디어">미디어</option>
                        <option value="운전/배달">운전/배달</option>
                        <option value="병원/간호/연구">병원/간호/연구</option>
                        <option value="IT/컴퓨터">IT/컴퓨터</option>
                    </select>
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 근무 기간</h5>&nbsp;&nbsp;
                    <input type="radio" name="term" id="term_5" value="하루" class="ip">&nbsp;
                    <label for="term_5">하루</label>&nbsp;
                    <input type="radio" name="term" id="term_5" value="1주일 이하" class="ip">&nbsp;
                    <label for="term_5">1주일 이하</label>&nbsp;
                    <input type="radio" name="term" id="term_10" value="1개월" class="ip">&nbsp;
                    <label for="term_10">1개월</label>&nbsp;
                    <input type="radio" name="term" id="term_20" value="3개월~6개월" class="ip">&nbsp;
                    <label for="term_20">3개월~6개월</label>&nbsp;
                    <input type="radio" name="term" id="term_30" value="6개월~1년" class="ip">&nbsp;
                    <label for="term_30">6개월~1년</label>&nbsp;
                    <input type="radio" name="term" id="term_40" value="1년이상" class="ip">&nbsp;
                    <label for="term_40">1년이상</label>&nbsp;
                    <input type="radio" name="term" id="term_45" value="기간협의" class="ip">&nbsp;
                    <label for="term_45">기간협의</label>

                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 근무 요일</h5>&nbsp;&nbsp;
                    <input type="checkbox" name="day" id="day_1" value="월">&nbsp;
                    <label for="day_1">월</label>&nbsp;
                    <input type="checkbox" name="day" id="day_2" value="화">&nbsp;
                    <label for="day_2">화</label>&nbsp;
                    <input type="checkbox" name="day" id="day_3" value="수">&nbsp;
                    <label for="day_3">수</label>&nbsp;
                    <input type="checkbox" name="day" id="day_4" value="목">&nbsp;
                    <label for="day_4">목</label>&nbsp;
                    <input type="checkbox" name="day" id="day_5" value="금">&nbsp;
                    <label for="day_5">금</label>&nbsp;
                    <input type="checkbox" name="day" id="day_6" value="토">&nbsp;
                    <label for="day_6">토</label>&nbsp;
                    <input type="checkbox" name="day" id="day_7" value="일">&nbsp;
                    <label for="day_7">일</label>
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 근무 시간&nbsp;&nbsp;&nbsp;&nbsp;</h5><input type="text"
                        class="col-sm-1 form-control" id="title" name="time">시간
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 급여&nbsp;&nbsp;&nbsp;</h5>
                    <select name="salary_type" class="col-lg-1">
                        <option value="시급">시급</option>
                        <option value="일급">일급</option>
                        <option value="주급">주급</option>
                        <option value="월급">월급</option>
                    </select><input type="text" class="col-sm-2 form-control" maxlength="20" size="20"
                        id="salary_amount" name="salary_amount">원
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">희망 지역&nbsp;&nbsp;&nbsp;&nbsp;</h5>
                    <select class="form-control col-lg-2" name="place">
                        <option value="서울">서울</option>
                        <option value="경기">경기</option>
                        <option value="인천">인천</option>
                        <option value="부산">부산</option>
                        <option value="대구">대구</option>
                        <option value="대전">대전</option>
                        <option value="경남">경남</option>
                        <option value="전남">전남</option>
                        <option value="충남">충남</option>
                        <option value="광주">광주</option>
                        <option value="울산">울산</option>
                        <option value="경북">경북</option>
                        <option value="전북">전북</option>
                        <option value="충북">충북</option>
                        <option value="강원">강원</option>
                        <option value="제주">제주</option>
                        <option value="전국">전국</option>
                    </select>
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
                        <tr>
                            <td><input type="text"class='form-control'  name="career_name0" /></td>
                            <td><input type="text" class='form-control' name="career_task0" /></td>
                            <td><input type="text" class='form-control' name="career_start_date0" /></td>
                            <td><input type="text"class='form-control'  name="career_end_date0" /></td>
                        </tr>
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
    <script>
	 var count= 1;
        function addRow() {//테이블 동적으로 추가하기
            career = document.getElementById('career');  //행을 추가할 테이블
            row = career.insertRow(career.rows.length);  //추가할 행

            cell1 = row.insertCell(0);  //실제 행 추가 여기서의 숫자는 컬럼 수
            cell2 = row.insertCell(1);
            cell3 = row.insertCell(2);
            cell4 = row.insertCell(3);

            cell1.innerHTML = "<td><input type ='text'class='form-control' name ='career_name"+count+"' /></td>";//추가한 행에 원하는  요소추가
            cell2.innerHTML = "<td><input type ='text'class='form-control'  name ='career_task"+count+"' /></td>";
            cell3.innerHTML = "<td><input type ='text'class='form-control'  name ='career_start_date"+count+"' /></td>";
            cell4.innerHTML = "<td><input type ='text'class='form-control'  name ='career_end_date"+count+"' /></td>";
        count = count + 1;
        //alert(count);
        }

        function deleteRow() {
            var career = document.getElementById('career');
            if (career.rows.length < 1) return;
            career.deleteRow( career.rows.length-1 ); // 하단부터 삭제
          }

    </script>
</body>
</html>