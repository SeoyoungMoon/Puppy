<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>


    <section>

        <article class="main-container">
            <div id="boast-products" class="wrap">
                <h2>멍스타그램</h2>
                <ul class="boasthover">
                	<c:forEach var="vo" items="${boastList}">

	                    <li>
	                        <img class="boastimg" src="../img/boast1.jpg" alt="리트리버">
	                        <div class="hover">
	                            <img class="hover-left" src="../img/heart.png" alt="좋아요">
	                            <span class="span-left">20</span>
	                            <img class="hover-right" src="../img/commnet.png" alt="댓글">
	                            <span class="span-right">20</span>
	                        </div>
	                        <a href="<c:url value='/boast/getlist?bbno=${vo.bbno}'/>" id="boast_detail">
	                            <h4 class="align p-title">${vo.title}</h4>
	                        </a>
	                        <p class="align p-price">콩이아빠</p>
	                        <div class="like">
	                            <span>2021.09.09</span>
	                            <span>&middot;&nbsp;조회수 : 5</span>
	                        </div>
	                    </li>
                	</c:forEach>
                    <!--  
                    <li>
                        <img class="boastimg" src="../img/boast2.jpg" alt="산타개">
                        <div class="hover">
                            <img class="hover-left" src="../img/heart.png" alt="좋아요">
                            <span class="span-left">20</span>
                            <img class="hover-right" src="../img/commnet.png" alt="댓글">
                            <span class="span-right">20</span>
                        </div>
                        <a href="<c:url value='/board/boastDetail'/>">
                            <h4 class="align p-title">산타옷입은 저희강아지 시츄산타네요</h4>
                        </a>
                        <p class="align p-price">시츄엄마</p>
                        <div class="like">
                            <span>2021.09.09</span>
                            <span>&middot;&nbsp;조회수 : 5</span>
                        </div>
                    </li>
                    <li>
                        <img class="boastimg" src="../img/boast3.jpg" alt="아기시바">
                        <div class="hover">
                            <img class="hover-left" src="../img/heart.png" alt="좋아요">
                            <span class="span-left">20</span>
                            <img class="hover-right" src="../img/commnet.png" alt="댓글">
                            <span class="span-right">20</span>
                        </div>
                        <a href="<c:url value='/board/boastDetail'/>">
                            <h4 class="align p-title">블랙탄시바를 입양했어요 이름은 킹콩이에요</h4>
                        </a>
                        <p class="align p-price">킹콩이</p>
                        <div class="like">
                            <span>2021.09.09</span>
                            <span>&middot;&nbsp;조회수 : 5</span>
                        </div>
                    </li>
                    <li>
                        <img class="boastimg" src="../img/boast4.jpg" alt="근육">
                        <div class="hover">
                            <img class="hover-left" src="../img/heart.png" alt="좋아요">
                            <span class="span-left">20</span>
                            <img class="hover-right" src="../img/commnet.png" alt="댓글">
                            <span class="span-right">20</span>
                        </div>
                        <a href="<c:url value='/board/boastDetail'/>">
                            <h4 class="align p-title">우리집 강아지 자바인데요 헬창이네요</h4>
                        </a>
                        <p class="align p-price">pt선생님</p>
                        <div class="like">
                            <span>2021.09.09</span>
                            <span>&middot;&nbsp;조회수 : 5</span>
                        </div>
                    </li>
                    <li>
                        <img class="boastimg" src="../img/boast5.jpg" alt="한복">
                        <div class="hover">
                            <img class="hover-left" src="../img/heart.png" alt="좋아요">
                            <span class="span-left">20</span>
                            <img class="hover-right" src="../img/commnet.png" alt="댓글">
                            <span class="span-right">20</span>
                        </div>
                        <a href="<c:url value='/board/boastDetail'/>">
                            <h4 class="align p-title">우리집 뽀리가 한복을 입었네요</h4>
                        </a>
                        <p class="align p-price">뽀리아빠</p>
                        <div class="like">
                            <span>2021.09.09</span>
                            <span>&middot;&nbsp;조회수 : 5</span>
                        </div>
                    </li>
                    <li>
                        <img class="boastimg" src="../img/boast6.jpg" alt="화장">
                        <div class="hover">
                            <img class="hover-left" src="../img/heart.png" alt="좋아요">
                            <span class="span-left">20</span>
                            <img class="hover-right" src="../img/commnet.png" alt="댓글">
                            <span class="span-right">20</span>
                        </div>
                        <a href="<c:url value='/board/boastDetail'/>">
                            <h4 class="align p-title">얼굴에 연지곤지찍으니 더이쁘고 귀엽네요</h4>
                        </a>
                        <p class="align p-price">댕댕이사랑</p>
                        <div class="like">
                            <span>2021.09.09</span>
                            <span>&middot;&nbsp;조회수 : 5</span>
                        </div>
                    </li>
                    -->
                    
                </ul>

                <div class="wrap clearfix">
                    <a href="<c:url value='/boast/boastboardWrite'/>" class="boast-write-btn">글쓰기</a>
                </div>


                <!-- 페이징 공간-->
                <form action="<c:url value='/board/boastboard' />" name="boastPage">
                <div class="boast-paging">
					<hr>
					<ul class="pagination pagination-sm" id="pagination">
						<c:if test="${pc.prev}">
						<li><a href="#" data-pageNum="${pc.beginPage-1}">이전</a></li>
                       </c:if>
                       
                       <c:forEach var="num" begin="${pc.beginPage}" end="${pc.endPage}">
                        <li class="${pc.paging.pageNum == num ? 'active' : ''}"><a href="#" data-pageNum="${num}">${num}</a></li>
                       </c:forEach>
                       
                        <c:if test="${pc.next}">
                        	<li><a href="#" data-pageNum="${pc.endPage+1}">다음</a></li>
                        </c:if>                      
                    </ul>
                    
                    <!-- 페이지 관련 버튼을 클릭시 숨겨서 보낼 값 -->
                    <ul>
                    <input type="hidden" name="pageNum" value="${pc.paging.pageNum}">
                    <input type="hidden" name="countPerPage" value="${pc.paging.countPerPage}">
                    <input type="hidden" name="keyword" value="${pc.paging.keyword}">
                    <input type="hidden" name="condition" value="${pc.paging.condition}">
						
					
					</ul>

                </div>
                </form>
                
                
                
                
                
            </div>



        </article>


    </section>
    
    <div class="boast-modal-wrap">
        <div class="boast-modal">
            <div class="boast-modal_close" id="boast-close">
                <a href="#"><img src="../img/close.png" alt="close"></a>
            </div>

            <!--사진칸 왼쪽-->
            <div class="boast-pic">
                    <img src="../img/boast1.jpg" alt="boast">
            </div>
            <!-- 내용 및 댓글-->
            <div class="boast-content">
                <div class="boast-writer">
                    <p>태어난지 100일째 저희 집 리트리버</p>
                </div>
                <div class="boast-text">
                    <div class="text"> <p>우리 콩이 너무 너무 이쁘죠?</p> </div>
                </div>
                <div class="likearea">
                    <img src="../img/heart2.png" alt="좋아요버튼">
                    <p>좋아요 <span>5</span>개</p>
                    <p class="bright">콩이아빠</p>
                    
                </div>
            <!--댓글창-->
                
                <div class="boast-comment">
                    <div class="commentwrap clearfix">
                        <div class="boast-img"><img src="../img/insta-profile.jpg" alt="프로필 사진"></div>
                        <div class="boast-id">동이아빠</div>
                        <div class="boast-dat">너무 귀여워요~</div>
                    </div>
                </div>
                <!--댓글달기-->
                <div class="boasr-commentadd clearfix">
                    <div class="boasr-comadd" >
                        <input type="text" name="ssn"  placeholder="댓글을 남겨보세요" >
                    </div>
                    
                    <div class="boasr-comadd">
                    	<form action="<c:url value="/board/boastDetail" />" method="post" id="insert_data">
                        <button>게시</button>
                    	</form>
                    </div>
                    
                </div>
            </div>


        </div>
    </div>
    

<%@ include file="../include/footer.jsp" %>

    <script>
    
    //검색에서 조회 눌렀을 때
    $('.boast-search').click(function() {
           location.href='<c:url value="/board/boastboard-search-result" />';
     });
    
    
    //게시물에 호버했을때
        window.onload = function(){
            
            
            const $boastimg = document.querySelectorAll('.boastimg');
            const $hover = document.querySelectorAll('.hover');
    
            console.log($boastimg);
            
            /*
            $boastimg[1].addEventListener('mouseover', function () {
                $hover[1].style.display = 'block';
                $hover[1].addEventListener('mouseout', function () {
                    $hover[1].style.display = 'none';
                });
            });
            */
            /*
            for (let i=0; i<$boastimg.length; i++) {
                console.log($boastimg[i]);
                $boastimg[i].addEventListener('mouseover', function () {
                    $hover[i].style.display = 'block';
                    $hover[i].addEventListener('mouseout', function () {
                        $hover[i].style.display = 'none';
                    });
                });
                
            }
            */
            
            const $ul = document.querySelector('.boasthover');

            $ul.addEventListener('mouseover', function(e){
				e.preventDefault();
                if(!e.target.matches('img[class="boastimg"]')){
                    return;
                }
                e.target.nextElementSibling.style.display='block';
                e.target.addEventListener('mouseout', function(e){
	                e.target.nextElementSibling.style.display = 'none';
	            });

            });
          
	          $('#boast_detail').click(function(e) {
	        	  e.preventDefault();
				$(".boast-modal-wrap").show();
				
				
				console.log($("#boast-close"));
				$("#boast-close").click(function() {
				
					$(".boast-modal-wrap").hide();
				});
				
	          });
           
            
        }
    
	 </script>

