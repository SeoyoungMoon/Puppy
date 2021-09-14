<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>


    <!-- 비밀번호로 본인인증하고 내 정보를 수정하는 페이지 -->
    <section>
        <article class="myInfoModify">
            <div class="myinfomodify-title">
                <h2>내 정보 수정</h2>
                <div class="myinfomodify-logo">
                    <img src="../img/simbol.png" alt="simbol">
                </div>
            </div>

            <div class="myinfomodifyform">
               
                <form action="" method="POST">
                    <h5><label for="">아이디</label></h5>

                    <input type="text" name="id" id="" placeholder="아이디를 입력해주세요~">
                    
                    <h5><label for="">비밀번호</label></h5>
                    <input type="password" name="pw" id="" placeholder="비밀번호를 입력해주세요~">
                    <span></span>
                    <h5><label for="">비밀번호 확인</label></h5>
                    <input type="password" name="pw_check" id="" placeholder="비밀번호를 입력해주세요~">
                    <span></span>
                    <h5><label for="">이름</label></h5>
                    <input type="text" name="name" id="" placeholder="이름을 입력해주세요~">

                    <h5><label for="">이메일</label></h5>
                    <input type="text" name="email" id="" placeholder="이메일을 입력해주세요~">
                    <span></span>

                    <h5><label for="phone">휴대전화</label></h5>
                    <div class="myinfomodifyform-phone clearfix">
                        <input type="text" name="phone" id="phone" placeholder="- 제외하고 입력해주세요!">
                        <button>인증번호받기</button>
                        <input type="text" name="phone_check" id="phone_check" placeholder="인증번호를 입력해주세요!">
                        <button class="check">인증번호확인</button>
                    </div>

                    <h5><label for="address">주소</label></h5>
                    <div class="myinfomodifyform-address">
                        <input type="text" name="addNum" id="addNum" placeholder="우편번호 찾기">
                        <button>우편번호찾기</button>
                        <div>
                            <input type="text" name="address1" id="address" placeholder="기본 주소" readonly>
                            <input type="text" name="address2" placeholder="상세 주소">
                        </div>
                    </div>

                    
                    <div class="myinfomodify-bottom clearfix">
                        <div class="myinfomodify-bottom1">
                            <button type="submit" class="myinfomodifyBtn1">변경하기</button>
                        </div>
                        <div class="myinfomodify-bottom2">
                            <button type="submit" class="myinfomodifyBtn2">취소하기</button>
                        </div>
                    </div>
                    

                </form>
            </div>
        </article>
    </section>
    <%@ include file="../include/footer.jsp" %>
