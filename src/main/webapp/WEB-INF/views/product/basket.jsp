<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>


    <section>
        <!-- 장바구니헤더 및 이미지-->
        <article class="basket-wrap">

            <div class="basket-title">
                <h2>장바구니 <img src="../img/mp1.jpg" alt=""></h2>

            </div>


        </article>

        <article class="basket-wrap1">

            <div class="basket-ct">
                <table class="basket-table">
                    <tr>
                        <th class="first"><input type="checkbox"></th>
                        <th>상품 정보</th>
                        <th>수량</th>
                        <th>삭제</th>
                    </tr>

                    <tr>
                        <td class="first"><input type="checkbox"></td>
                        <td class="second clearfix">
                            <img src="../img/basket1.jpg" alt="basketItem4">
                            <!--상품정보-->
                            <p>
                                <span>
                                    순면 배변패드 <br><span style="font-size: small;">&nbsp;-옵션: 중형견용</span><br>20,700원
                                </span>
                            </p>

                        </td>
                        <td>

                            <div class="basket-cntBtn">
                                <div class="basket-cntBtn1">-</div>
                                <div class="basket-cntBtn2">1</div>
                                <div class="basket-cntBtn3">+</div>
                            </div>


                        </td>
                        <td>
                            
                            <button class="basket-delbutton">삭제</button>
                            
                        </td>
                    </tr>

                </table>


            </div>

            <div class="select-box">
                <input type="checkbox" style="margin-right: 20px;">
                <button>선택상품 삭제</button>
                <button>선택상품 찜</button> 
            </div>

        </article>


        <article class="basket-wrap2">


            

            <div class="basket-title1">
                <div class="basket-label" style="float: left; ">
                    <h2>상품금액</h2>
                    <h3>355,300원</h3>
                </div>
            
                <div class="basket-label" style="float: left; ">
                    <h2 class="sign">+</h2>
                </div>
                
                <div class="basket-label" style="float: left; ">
                    <h2 >배달비</h2> 
                    <h3>3,000원</h3>
                </div>

                <div class="basket-label" style="float: left; ">
                    <h2 class="sign">=</h2>
                </div>

                <div class="basket-label" style="float: left; ">

                    <h2>총상품금액</h2>
                    <h3>358,300원</h3>
                </div>
            </div>


        </article>

        <div class="basket-button">
            <br><br><br><br><br>
            <button class="btn1">쇼핑계속하기</button>
            <button class="btn2">주문하기</button>
            
        </div>
        
    </section>
    
    <%@ include file="../include/footer.jsp" %>
