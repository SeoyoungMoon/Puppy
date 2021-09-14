<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>



    <!-- 내 정보 수정에서 비밀번호 확인페이지 -->
    <section>
        <article class ="myInfoModify1">
            <div class="myinfomodify-title">
                <h2>내 정보 수정</h2>
                <div class="myinfomodify-logo">
                    <img src="../img/simbol.png" alt="simbol">
                </div>
                <h4>회원님의 안전한 정보 보호를 위해 다시 한번 비밀번호를 입력해주세요.</h4>
            </div>
           
            
            <div class="myInfoModify1-passwordOk">
                <form action="" method="POST">
                    <input class="myInfoModify1-password" placeholder="비밀번호를 입력하세요."><br>
                    <button class="myInfoModify1-ok">확인</button>
                </form>
            </div>
        </article>
    </section>
    <%@ include file="../include/footer.jsp" %>
