<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>


    <section class="reserveList">

        <div class="myReserve">
            <h3>예약 내역</h3>

            <p>
                <b>※ 당일 예약은 취소가 불가한 점 양해 바랍니다.</b>
            </p>

            <table>
                <th>번호</th>
                <th>예약일</th>
                <th>이용서비스</th>
                <th>이용일</th>
                <th>이용금액</th>
                <th>취소가능기간</th>
                <th>상태</th>


                <tr>
                    <td>5</td>
                    <td>9/6</td>
                    <td>유치원</td>
                    <td>9/13</td>
                    <td>42,000원</td>
                    <td>9/12 23:59까지</td>
                    <td><button>취소</button></td>
                </tr>

                <tr>
                    <td>4</td>
                    <td>9/6</td>
                    <td>호텔</td>
                    <td>9/10</td>
                    <td>78,000원</td>
                    <td>9/9 23:59까지</td>
                    <td><button>취소</button></td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>9/6</td>
                    <td>유치원</td>
                    <td>9/7</td>
                    <td>42,000원</td>
                    <td>9/6 23:59까지</td>
                    <td><button>취소</button></td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>9/6</td>
                    <td>유치원</td>
                    <td>9/6</td>
                    <td>42,000원</td>
                    <td>9/5 23:59까지</td>
                    <td>취소불가</td>
                </tr>

                <tr>
                    <td>1</td>
                    <td>9/1</td>
                    <td>유치원</td>
                    <td>9/3</td>
                    <td>42,000원</td>
                    <td>-</td>
                    <td>이용완료</td>
                </tr>
            </table>

        </div>


        <div class="pagination">

            <button type="button" onclick="location.href='#'">이전</button>
            <a href="#" class="active">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <button type="button" onclick="location.href='#'">다음</button>
            
        </div>

    </section>
    
    <%@ include file="../include/footer.jsp" %>

