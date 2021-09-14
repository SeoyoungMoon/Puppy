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
    <style>

        /* 디자인 시작 시 기본적으로 선언하는 문법 */
        * {
            /* 기본 선언: 마진, 패딩 0, 요소 크기를 border를 기준으로.*/
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        body,
        html {
            width: 100%;
            min-width: 320px;
            font-family: "Nanum Gothic", sans-serif;
        }

        img {
            max-width: 100%;
            /*사이즈가 변해도 넓이를 유지*/
            height: auto;
            /* 사이즈가 변해도 비율을 유지 */
        }

        ul,
        ol,
        dl,
        li {
            /*리스트 스타일은 사용할 일이 많지 않아요.*/
            list-style: none;
        }
        
        .clearfix::after {
            content: '';
            display: block;
            clear: both;
        }
        a {text-decoration: none;}

        /* 해더 */
        .header { position:fixed; height: 290px; top:0; width:100%; background: rgba(255, 255, 255 ,0.8); border-bottom:1px solid #c6c6c6; box-shadow:0px 3px 7px rgba(0,0,0,0.1); z-index:99999; }
        .header_top { height:50px; color:#996633; font-size:12px; font-weight:600; line-height:30px; }
        .header_top a { color:#996633; }
        .header_top a:hover { color:#000; }
        .header_top_area { position:relative; width:70%; margin:0 auto; text-align:center; }

        .header_top_area .right { position:absolute; right:0; top: 10px; }
        .header_top_area .right a { display:inline-block; padding:0px 10px; }
        .header_top_area .left { position:absolute; left:0; top: 10px;}
        .header_top_area .left a { display: inline-block; width: 25px; margin-right: 3px;}

        .logo{width: 350px; margin:0 auto; padding:20px 0 40px; text-align:center; }
        .menu_area {  position:relative; width:1080px; margin: 0 auto; }
        .menu_area .menu { display:table; margin:0 auto; }
        .menu .menu-li { float:left; }
        .menu .menu-li .menu-li-a {  display:inline-block; padding-bottom:20px; margin:5px 26px 0px; color:#555; font-size:20px; font-weight:600; }
        .menu .menu-li .menu-li-a:hover { padding-bottom:10px; color: #996633;  border-bottom: 3px solid #996633;}

        .second{position:absolute; top:90%;  display:none; z-index: 10000;}
        .menu li:hover .second {display:block; background-color:rgba(255, 255, 255, 0.9);}

        .menu { display:inline-block; margin-top:10px; vertical-align:top; }
        .menu .second a { display:block;  font-size:14px; color:#555; font-weight:600; line-height:27px; width: 100px; height: 40px; margin: 5px 20px;}
        .menu .second a:hover { color: #996633; border-bottom: 3px solid #996633;}

        /* 바디 */
        
        section{
            margin-top: 290px;
            width: 100%;
        }
        .wrap {
            width: 1140px;
            margin: 0 auto;
        }
        .main-container {
            width: 100%;
        }
        .main-h2 {
            padding: 150px;
            font-size: 35px;
            color: #996633;
        }

        #main-menu {
            margin: 100px auto 150px;
            text-align: center;
        }
        #main-menu ul{
            width: 100%;
        }
        #main-menu li {
            display: inline-block;
            width: 145px;
            margin: 20px;
        }

        #main-menu li a{
          color: black;
        }
        #main-menu li a p {
            font-size: 15px;
            padding-top: 5px;
        }
        #main-menu li a:hover{
            color:#996633;
            text-decoration: underline;
        }

        #main-menu li img {
            margin-bottom: 30px;
        }
        #main-products {
            width: 100%;
            text-align: center;
            margin: 50px auto;
            background: rgb(240, 240, 240);
            padding-bottom: 80px;
        }
        #main-products li {
            display: inline-block;
            margin: 0 40px 50px 40px;
        }
        #main-products li a {
            color: #000;
        }
        #main-products li a:hover {
            color: #996633;
        }
        #main-products li img {
            padding-bottom: 10px;
        }
        #main-products li .align {
            text-align: left;
        }
        #main-products li .p-title {
            font-size: 20px;
            padding-bottom: 5px;

        }
        #main-products li .p-price {
            font-size: 18px;
            font-weight: bold;
            color: #636363;
        }
        #main-notice {
            margin: 100px auto;
            text-align: center;
        }
        #main-notice .main-h2 {
            padding-bottom: 50px;
        }
        #main-notice .no-p {
            font-size: 23px;
            padding-bottom: 100px;
            color: #555;
        }
        #main-notice ul {
            width: 100%;
            margin: 50px auto;
        }

        #main-notice li {
            display: inline-block;
            width: 350px;
            margin: 0 10px 20px;
        }
        #main-notice li p {
            display: block;
            font-size: 15px;
            margin-top: 10px;
            height: 80px;
            color: #000;
        }
        #main-notice li img {
            border: 1px #996633 solid;
            width: 300px;
        }
        
        
        /* 푸터 */
        footer {
            background-color: #5c5c5c;
            text-align: center;
            margin-top: 100px;
        }
        .footer-container {
            text-align: left;
            color: white;
            padding: 20px 50px;
            display: inline-block;
        }
        .footer-logo {
            margin: 50px 30px 0px;
            width: 120px;
            float: left;
        }

        .address {
            float: left;
            padding: 30px;
            margin-left: 60px;
        }
        .about {
            padding: 30px;
            float: left;
            margin-left: 50px;
        }
        .f-title {
            padding-bottom: 15px;
            color: rgb(161, 160, 160);
            font-size: 14px;
        }
        .explain {
            font-size: 12px;
        }
        #copyrights {
            width: 100%;
            text-align: center;
            background: #000;
            padding: 20px 0;
            color: #fff;
            font-size: 12px;
        }
        .f-size {
            font-size: 16px;
        }

    </style>
</head>
<body>
    <!-- 헤더 영역-->
    <header>
        <div class="header clearfix">
            <div class="header_top">
                <div class="header_top_area">
                    <div class="right">
                        <a href="/join" style="font-weight: normal;">회원가입</a>
                        <a href="/login" style="font-weight: normal;">로그인</a>
                        <a href="/sitemap" style="font-weight: normal;">사이트맵</a>
                    </div>
                    <div class="left">
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