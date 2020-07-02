<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>공고 작성</title>
</head>

<body>
    <%@ include file="../serve/header.jsp" %>
    <div class="col-lg-12 ftco-animate">
        <div class="comment-form-wrap pt-12">
            <form action="<%=request.getContextPath() %>/enterprise/recruit/write/save" class="p-5 bg-light" name = "recruit">
                <h3 class="mb-1 h4 font-weight-bold">모집 내용</h3>
                <hr />
                <div class="form-group row">
                    <h5 class="font-weight-bold">제목&nbsp;&nbsp;&nbsp;</h5><input type="text"
                        class="col-sm-10 form-control " id="title" maxlength="20" size="20" name="title"
                        placeholder="회원님께서 구분 가능하게 공고의 이름을 지어주세요/ 공고 게시판에 올라가는 제목은 아닙니다">
                </div>
                <div class="row form-group ">
                    <h5 class="font-weight-bold ">업직종</h5>&nbsp;&nbsp;
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
                <div class=" row form-group">
                    <h5 class="font-weight-bold ">모집인원</h5><input type="text" class="form-control col-sm-1"
                        maxlength="3" name="people_count">명 <p>모집인원이 명확하지 않은경우 0을
                        입력해주세요.</p>
                </div>


                <br /><br />

                <h3 class="mb-1 h4 font-weight-bold">근무 조건</h3>
                <hr />
                <div class="form-group row">
                    <h5 class="font-weight-bold">근무 기간</h5>&nbsp;&nbsp;
                    <input type="radio" name="term" id="term_5" value="하루" class="ip">&nbsp;
                    <label for="term_5">하루</label>&nbsp;
                    <input type="radio" name="term" id="term_6" value="일주일" class="ip">&nbsp;
                    <label for="term_6">일주일</label>&nbsp;
                    <input type="radio" name="term" id="term_10" value="1개월" class="ip">&nbsp;
                    <label for="term_10">1개월</label>&nbsp;
                    <input type="radio" name="term" id="term_20" value="3개월~6개월" class="ip">&nbsp;
                    <label for="term_20">3개월~6개월</label>&nbsp;
                    <input type="radio" name="term" id="term_30" value="6개월~12개월" class="ip">&nbsp;
                    <label for="term_30">6개월~12개월</label>&nbsp;
                    <input type="radio" name="term" id="term_40" value="1년이상" class="ip">&nbsp;
                    <label for="term_40">1년이상</label>

                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">근무 요일</h5>&nbsp;&nbsp;
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
                    <h5 class="font-weight-bold">근무 시간&nbsp;&nbsp;&nbsp;&nbsp;</h5><input type="text"
                        class="col-sm-1 form-control" id="title" name="time">시간
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">급여&nbsp;&nbsp;&nbsp;</h5>
                    <select name="salary_type" class="col-lg-1">
                        <option value="시급">시급</option>
                        <option value="일급">일급</option>
                        <option value="주급">주급</option>
                        <option value="월급">월급</option>
                    </select><input type="text" class="col-sm-2 form-control" maxlength="20" size="20"
                        id="salary_amount" name="salary_amount">원
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">근무 지역&nbsp;&nbsp;&nbsp;&nbsp;</h5>
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
                <h3 class="mb-1 h4 font-weight-bold">지원 조건</h3>
                <hr />
                <div class="form-group row">
                    <h5 class="font-weight-bold">성별</h5>&nbsp;&nbsp;
                    <input type="radio" name="gender" id="man" value="남자" class="ip">&nbsp;
                    <label for="man">남자</label>&nbsp;
                    <input type="radio" name="gender" id="women" value="여자" class="ip">&nbsp;
                    <label for="women">여자</label>&nbsp;
                    <input type="radio" name="gender" id="all_gender" value="무관" class="ip">&nbsp;
                    <label for="all_gender">무관</label>&nbsp;
                </div>
                <div class="form-group row">
                    <h5 class="font-weight-bold">연령</h5>&nbsp;&nbsp;
                    <input type="text" id="age" name="age" maxlength="20" class="col-sm-1 form-control">&nbsp;세
                    이상 ~ &nbsp;
                    <input type="text" id="age" name="age" maxlength="20" class="col-sm-1 form-control">&nbsp;세
                </div>
                <div class="row  form-group">
                    <h5 class="font-weight-bold">학력조건</h5>&nbsp;&nbsp;
                        <select class="col-sm-10 form-control col-lg-2" name="education">
                            <option value="all_education">무관</option>
                            <option value="초등학교 졸업">초등학교 졸업</option>
                            <option value="중학교 졸업">중학교 졸업</option>
                            <option value="고등학교 졸업">고등학교 졸업</option>
                            <option value="대학(2,3년제) 졸업">대학(2,3년제) 졸업</option>
                            <option value="대학(4년제) 졸업">대학(4년제) 졸업</option>
                            <option value="대학원 졸업 이상">대학원 졸업이상</option>
                        </select>
                </div>
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