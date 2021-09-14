<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>



    <section class="zzimList">
        <div class="myZzim">

            <h3>찜한 상품♥</h3>
            
            <div class="zzim-info clearfix" >
                <div class="zzim-left">
                    <p>전체(4)</p>
                </div>
                <div class="zzim-right">
                    <p>편집&nbsp;</p>
                </div>

            </div>

            <table>


                <tr>
                    <th>번호</th>
                    <th colspan="2">상품 정보</th>
                    <th>삭제</th>
                </tr>


                <tr>
                    <td>4</td>
                    <td id="left"><img src="../img/snack1.jpg" alt="zzimItem4"></td>
                    <td id="right">
                        <!--상품정보-->
                        <p>
                            <span>
                                한입뚝딱<br>
                                4,900원<br>
                                무료배송
                            </span>
                        </p>

                    </td>
                    <td id="delete">
                        &nbsp;&nbsp;&nbsp;
                        <img src="../img/delete.png" id="delBtn" alt="delete-btn">
                        &nbsp;
                    </td>
                </tr>


                <tr>
                    <td>3</td>
                    <td id="left"><img src="../img/snack2.jpg" alt="zzimItem4"></td>
                    <td id="right">
                        <!--상품정보-->
                        <p>
                            <span>
                                딸기 비스킷<br>
                                6,900원<br>
                                무료배송
                            </span>
                        </p>

                    </td>
                    <td id="delete">
                        &nbsp;&nbsp;&nbsp;
                        <img src="../img/delete.png" id="delBtn" alt="delete-btn">
                        &nbsp;
                    </td>
                </tr>


                <tr>
                    <td>2</td>
                    <td id="left"><img src="../img/snack3.jpg" alt="zzimItem4"></td>
                    <td id="right">
                        <!--상품정보-->
                        <p>
                            <span>
                                애견용 연어<br>
                                8,900원<br>
                                무료배송
                            </span>
                        </p>

                    </td>
                    <td id="delete">
                        &nbsp;&nbsp;&nbsp;
                        <img src="../img/delete.png" id="delBtn" alt="delete-btn">
                        &nbsp;
                    </td>
                </tr>


                <tr>
                    <td>1</td>
                    <td id="left"><img src="../img/snack4.jpg" alt="zzimItem4"></td>
                    <td id="right">
                        <!--상품정보-->
                        <p>
                            <span>
                                오리순살<br>
                                3,500원<br>
                                무료배송
                            </span>
                        </p>

                    </td>
                    <td id="delete">
                        &nbsp;&nbsp;&nbsp;
                        <img src="../img/delete.png" id="delBtn" alt="delete-btn">
                        &nbsp;
                    </td>
                </tr>


            </table>
        </div>


        <!-- <div class="pagination">

            <button type="button" onclick="location.href='#'">이전</button>
            <a href="#" class="active">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <button type="button" onclick="location.href='#'">다음</button>

        </div> -->


        <div id="paging">

        </div>
    </section>

<%@ include file="../include/footer.jsp" %>

    <script>
        var totalData = 1000;    // 총 데이터 수
        var dataPerPage = 20;    // 한 페이지에 나타낼 데이터 수
        var pageCount = 5;        // 한 화면에 나타낼 페이지 수
        
        function paging(totalData, dataPerPage, pageCount, currentPage){
            
            console.log("currentPage : " + currentPage);
            
            var totalPage = Math.ceil(totalData / dataPerPage);    // 총 페이지 수
            var pageGroup = Math.ceil(currentPage / pageCount);    // 페이지 그룹
            
            console.log("pageGroup : " + pageGroup);
            
            var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
            if(last > totalPage)
                last = totalPage;
            var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
            var next = last+1;
            var prev = first-1;
            
            console.log("last : " + last);
            console.log("first : " + first);
            console.log("next : " + next);
            console.log("prev : " + prev);
    
            var $pingingView = $("#paging");
            
            var html = "";
            
            if(prev > 0)
                html += "<a href=# id='prev'><</a> ";
            
            for(var i=first; i <= last; i++){
                html += "<a href='#' id=" + i + ">" + i + "</a> ";
            }
            
            if(last < totalPage)
                html += "<a href=# id='next'>></a>";
            
            $("#paging").html(html);    // 페이지 목록 생성
            $("#paging a").css({"color" : "black"});
            $("#paging a#" + currentPage).css({"text-decoration":"none", 
                                            "color":"red", 
                                            "font-weight":"bold"});    // 현재 페이지 표시
                                            
            $("#paging a").click(function(){
                
                var $item = $(this);
                var $id = $item.attr("id");
                var selectedPage = $item.text();
                
                if($id == "next")    selectedPage = next;
                if($id == "prev")    selectedPage = prev;
                
                paging(totalData, dataPerPage, pageCount, selectedPage);
            });
                                            
        }
        
        $("document").ready(function(){        
            paging(totalData, dataPerPage, pageCount, 1);
        });

    </script>

