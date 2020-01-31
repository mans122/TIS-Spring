<%@ page language="java" contentType="text/html; charset=UTF-8"   
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/header.jsp" %>

<style>
	.commentlist blog-details-comments{		bottom:100px;	}
	.single-comment p{		margin:3px ;			}
	.commentlist{		width:100%;		margin-bottom:120px;	}
</style>

<main>

	
	<div class="commentlist blog-details-comments">
	<h5 class="small-title">목록</h5>
	<button id="btnWrite" class="btn btn-primary">글 쓰기</button>
		    
		    <div class="row">
		    <c:forEach items="${showList}" var="show">
			<div class="col-lg-6 col-sm-12">
			
				<div class="single-comment">
		        <div class="single-comment-thumb">
		            <a href='/board/showDetail?s_no=<c:out value="${show.s_no}"/>'><img src="/resources/images/blog/commenter/commenter-thumb-1.png" alt="commenter thumb 1"></a>
		        </div>
		        <div class="single-comment-content">
		            <h6><a href='/board/showDetail?s_no=<c:out value="${show.s_no}"/>'><c:out value="${show.s_name}"/></a></h6>
		            <p>일시: <fmt:formatDate pattern="yyyy-MM-dd" value="${show.s_s_date}"/> ~ <fmt:formatDate pattern="yyyy-MM-dd" value="${show.s_e_date}"/></p>
		            <p>장소: 장소</p>
		            <p>출연: <c:out value="${show.s_actor}"/></p>
		            <p>감독: <c:out value="${show.s_director}"/></p>
		            <!-- <a href="#" class="commenter-reply">Reply</a> -->
		        </div>
		    </div>
		    
			</div>
		    </c:forEach>
		    </div>
		
		</div>
	
		
		
		
	
</main>

<%@include file="../includes/footer.jsp" %>


<script>
$(document).ready(function(e){
	$("#btnWrite").on("click",function(){
		self.location="/board/showWrite";
	});
});
</script>


