<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>

<style>
	main{
		padding:0 25%;
	}
	
	#jjimBox{
		margin-top:100px;
		margin-bottom:150px;
	}
	.jjimRow{
		margin-top:30px;
	} 
	p{
		margin-bottom:3px;
	}
	.jjimDate{
		margin-top:100px;
	}
	.jjimInfo{
		top:-15px;
	}
	.badge{
		font-size:16px;
		margin-left:15px;
	}
	
	
	
</style>
<main>
	<div id="jjimBox">
		<h4>찜 목록</h4>
		<h5 class="jjimDate">2020.01.03 <span class="badge  badge-pill badge-primary">상영중</span></h5>
		<div class="row jjimRow">
		
			<div class="col-lg-5 col-sm-6 col-6">
				<div>
					<img src="/resources/images/blog/commenter/commenter-thumb-1.png" alt="commenter thumb 1">
				</div>
			</div>
			<div class="col-lg-7 col-sm-6 col-6 jjimInfo">
				<div>
					<h5>공연정보</h5>
					<p><a href="blog-list.html">찜목록1</a></p>
		            <p>일시: 0000.00.00~0000.00.00</p>
		            <p>장소: 장충체육관</p>
		            <p>출연: 정한별,정한별,정한별</p>
		            <p>감독: 정한별</p>
				</div>
			</div>
		</div>
		<h5 class="jjimDate">2020.01.03 <span class="badge  badge-pill badge-danger">완료</span></h5>
		<div class="row jjimRow">
		
			<div class="col-lg-5 col-sm-6 col-6">
				<div>
					<img src="/resources/images/blog/commenter/commenter-thumb-1.png" alt="commenter thumb 1">
				</div>
			</div>
			<div class="col-lg-7 col-sm-6 col-6 jjimInfo">
				<div>
					<h5>공연정보</h5>
					<p><a href="blog-list.html">찜목록2</a></p>
		            <p>일시: 0000.00.00~0000.00.00</p>
		            <p>장소: 장충체육관</p>
		            <p>출연: 정한별,정한별,정한별</p>
		            <p>감독: 정한별</p>
				</div>
			</div>
		</div>
	</div>
</main>



<%@include file="../includes/footer.jsp" %>