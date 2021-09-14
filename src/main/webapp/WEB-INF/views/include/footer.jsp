<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
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

<footer>
        
        <div class="footer-container clearfix">
            <div class="footer-logo">
                <a href="#"><img src="./img/logowhite.png" alt="강아지유치원"></a>
            </div>
            
            <div class="address">
                <h5 class="f-title">ADDRESS</h5>
                <p class="explain">
                <span class="f-size">서울특별시 마포구 신촌로 17 강아지유치원</span><br><br>
                (주) 잡아(JAVA)조<br>
                대표이사 : 배찬열<br>
                사업자번호 : 318-85-46770<br>
                전화 : 02-9999-9999   팩스 : 02-9999-9999
                </p>
            </div>
            
            <div class="about">
                <h5 class="f-title">ABOUT US</h5>
                <p class="explain">
                    저희 멍멍이 유치원은 반려견과의<br> 
                    교감교육을 중시요시합니다. 반려견의<br>
                    잘못된 행동에는 모두 이유가 있습니다.<br>
                    무작정 혼내기 보다는 마음을 읽는<br>
                    훈련을 통해 반려견들의<br>
                    변화된 모습을 지켜보세요.
                </p>
            </div>

        </div>
        <div id="copyrights">
                    Copyrights &copy; 2021 JAVADOG. All Rights Reserved.
        </div>
                  
   </footer>
    
</body>
</html>