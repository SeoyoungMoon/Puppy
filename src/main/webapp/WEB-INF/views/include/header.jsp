<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body>
    <!-- 헤더 영역-->
    <header>
        <div class="header clearfix">
            <div class="header_top">
                <div class="header_top_area">
                    <div class="hright">
                        <a href="/join" style="font-weight: normal;">회원가입</a>
                        <a href="/login" style="font-weight: normal;">로그인</a>
                        <a href="/sitemap" style="font-weight: normal;">사이트맵</a>
                    </div>
                    <div class="hleft">
                        <a href="/" class="move"><img src="./img/simbol.png" alt="댕댕이 유치원"></a>
                        <a href="/" class="move"><img src="./img/facebook.png" alt="페이스북"></a>
                        <a href="/" class="move"><img src="./img/insta.png" alt="인스타"></a>
                        <a href="/" class="move"><img src="./img/tube.png" alt="유튜브"></a>
                    </div>
                </div>
            </div>
            <div class="logo">
                    <a href="/" target="_blank"><img src="./img/logo.png" alt="댕댕이 유치원"></a>
            </div>
            <nav>
                <div class="menu_area">
                    <ul class="menu">
                        <li class="menu-li">
                            <a href="/reserve" class="menu-li-a">예약하기</a>
                        </li>
                        <li class="menu-li">
                            <a href="/info" class="menu-li-a">이용안내</a>
                            <ul class="second">
                                <li>
                                    <a href="/info">이용안내</a>
                                </li>
                                <li>
                                    <a href="/info/pickup">픽업서비스</a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-li">
                            <a href="/service" class="menu-li-a">주요서비스</a>
                            <ul class="second">
                                <li><a href="/service/dayCare">호텔&데이케어</a></li>
                                <li><a href="/service/facility">유치원</a></li>
                                <li><a href="/service/beauty">애견미용</a></li>
                                <li><a href="/service/studio">스튜디오</a></li>
                                <li><a href="/service/medical">메디컬센터</a></li>
                                <li><a href="/service/specialCare">스페셜케어</a></li>
                            </ul>
                            
                        </li>
                        <li class="menu-li">
                            <a href="/purchase" class="menu-li-a">공동구매</a>
                            <ul class="second">
                                <li><a href="/purchase/items">강아지용품</a></li>
                                <li><a href="/purchase/medical">의료기기</a></li>
                                <li><a href="/purchase/snack">간식,식품</a></li>
                            </ul>
                        </li>
                        <li class="menu-li">
                            <a href="/community" class="menu-li-a">커뮤니티</a>                            
                            <ul class="second">
                                <li><a href="/community/freeboard">자유게시판</a></li>
                                <li><a href="/community/showboard">뽐내기게시판</a></li>
                                <li><a href="/community/showboard">QnA</a></li>
                            </ul>
                        </li>
                        <li class="menu-li">
                            <a href="/professional" class="menu-li-a">전문진소개</a>
                        </li>
                    </ul>
                    
                </div>
            </nav>
            
            
        </div>
    </header>
    

     <script>

    const $logo = document.querySelector('.logo');
    const $header = document.querySelector('.header');
    // const $move = document.querySelector('.header_top_area>.left>a')


    var prevScrollTop = 0;
    var nowScrollTop = 0;

    function wheelDelta(){
        return prevScrollTop - nowScrollTop > 0 ? 'up' : 'down';
    };

    $(window).on('scroll', function(){
    nowScrollTop = $(this).scrollTop();
    if(wheelDelta() == 'down'){
        $logo.style.display ='none';
        $header.style.height ='102px';
        $('.move').css('width','30px');
    }
    if(nowScrollTop == 0){
        $logo.style.display ='block';
        $header.style.height ='290px';
        $('.move').css('width','25px');
    }
    prevScrollTop = nowScrollTop;
    });



   </script>