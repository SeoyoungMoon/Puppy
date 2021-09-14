<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="./include/header.jsp" %>



    <section>
        <article class="main-container">
            <div class="title">
                <h2>어떤 서비스를 받아야 할 지 고민이신가요?</h2>
                <p>상담 신청해 주시면 영업일 기준 1~2일 이내로 전화 드립니다.</p>
            </div>
        </article>
        <article class="main-container">
            <div class="wrap mainBody">
                <div class="left">
                    <ul>
                        <li class="noti-info clearfix">
                            <div class="img_block">
                                <img src="./img/phone.png" alt="call">
                            </div>
                            <div class="info_block">
                                <h4>댕댕이 서울숲 캠퍼스</h4>
                                <p>1566-4508</p>
                            </div>
                        </li>
                        <li class="noti-info clearfix">
                            <div class="img_block">
                                <img src="./img/clock.png" alt="call">
                            </div>
                            <div class="info_block">
                                <h4>예약 및 상담 시간</h4>
                                <p>11:00 ~ 20:00</p>
                            </div>
                        </li>
                        <li class="noti-info clearfix">
                            <div class="img_block">
                                <img src="./img/plus.png" alt="call">
                            </div>
                            <div class="info_block">
                                <h4>플러스 친구</h4>
                                <p>1566-4508</p>
                            </div>
                        </li>
                        <li class="noti-info clearfix">
                            <div class="img_block">
                                <img src="./img/notice.png" alt="call">
                            </div>
                            <div class="info_block">
                                <h4>안내 사항</h4>
                                <p>댕댕이 이용 시 주의사항</p>
                            </div>
                        </li>
                    </ul>
                    
                    <ul class="list-group">
                        <li class="list-group-item">1년 이내 5가지 접종(종합, 코로나, 켄넬코프, 신종 인플루엔자, 광견병) 받지 않은 반려견은<br>
                            입실이 제한됩니다.<br>
                            * 접종기록은 접종병원명이 꼭 필요하므로 증빙 자료는 미리 준비해주세요.</li>
                        <li class="list-group-item">1살 미만의 반려견인 경우 항체 검사가 필수 입니다.<br>
                            (단, 1살 이상 시 재접종 기록 확인)</li>
                        <li class="list-group-item">생리,건강문제 또는 공격성이 강해 타 고객의 이용에 피해가 <br>
                            되는 반려견 일 경우 입실이 제한됩니다.</li>
                        <li class="list-group-item">펫택시 이용 시, 별도의 예약이 필요합니다.<br>
                            (* 픽업 서비스 페이지 참고)</li>
                    </ul>
                            
                    
                </div>
                <div class="right">
                    <form action="#" method="post" class="reserve_form">
                        <label for="">희망서비스</label>
                        <div class="reserve_input">
                            <select name="" id="">
                                <option value="#">호텔 & 데이케어</option>
                                <option value="#">유치원</option>
                                <option value="#">그루밍</option>
                                <option value="#">스튜디오</option>
                                <option value="#">메디컬센터</option>
                                <option value="#">스페셜케어</option>
                            </select>
                        </div>
                        <label for="">체크인</label>
                        <div class="reserve_input">
                            <input type="text" id="" name="checkIn">
                        </div>
                        <label for="">체크아웃</label>
                        <div class="reserve_input">
                            <input type="text" id="" name="checkOut">
                        </div>
                        <label for="">반려견종</label>
                        <div class="reserve_input">
                            <input type="text" id="" name="kinds">
                        </div>
                        <label for="">반려견나이</label>
                        <div class="reserve_input">
                            <input type="text" id="" name="dogAge">
                        </div>
                        <label for="">기타</label>
                        <div class="reserve_input">
                            <textarea name="etc" id=""
                                placeholder="효과적인 서비스 추천을 위해 반려견 이름, 중성화 여부, 문제행동 등 자세한 사항을 작성해 주세요."></textarea>
                        </div>
                        <div class="reserve_input">
                            <button class="reserve_btn" type="submit" onclick="confirm('상담신청 하시겠습니까?')" >상담 신청</button>
                        </div>

                    </form>
                </div>
            </div>
        </article>
    </section>

<%@ include file="./include/footer.jsp" %>
