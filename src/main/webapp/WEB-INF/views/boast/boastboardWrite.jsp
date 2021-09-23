<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>

    <section>
        <article class="main-container">
            <div class="wrap">   
                <h3 class="writetitle">글쓰기</h3>
            </div>
        </article>
        <article class="main-container">
            <div class="wrap">
                <form action="<c:url value='/boast/registForm'/>" name="registForm" method="post" class="boastboardWrite clearfix">
                    <!-- ***자유게시판이랑 뽐내기게시판이 어차피 달라서 옵션 없어도 될거같음
                    <select class="form-control">
                        <option>자유게시판</option>
                        <option>뽐내기 게시판</option>
                    </select>
                     -->
                    <input class="form-control" name="title" placeholder="제목을 입력하세요">
                    <button type="button" class="photoBtn"> 사진첨부 </button>
                    <div class="imgbox"></div>
                    <textarea class="textArea" rows="15" style="margin-bottom: 10px;" name="content" placeholder="내용을 입력하세요"></textarea>                        
                    <button type="button" class="listBtn">목록</button>
                    <input type="submit" id="res_btn" class="registBtn" value="등록">
                </form>
            </div>
        </article>
    </section>
    
    <%@ include file="../include/footer.jsp" %>
    
    <script>
    $(document).ready(function() {
		
	    
	    
	    $('.listBtn').click(function() {
	        if(confirm('목록으로 돌아가시겠습니까?')) {
	           location.href='<c:url value="/boast/boastboard" />';
	        } else {
	           return;
	        }
	     });
	});
    
 
    </script>
