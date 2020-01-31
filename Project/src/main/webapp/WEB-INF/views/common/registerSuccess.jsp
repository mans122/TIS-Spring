<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>

<style>
	h2{
		margin-top:50px;		 
	}
	
	#registerSuccessBox{
		padding:0 25%;
		margin-top:50px;
		margin-bottom:150px;
		margin-left:100px;
	}
	.successRow{
		margin-top:150px;
	}
	.col-sm-12{
		margin-top:20px;
	}
	
	
	
	
	

</style>
<main>
	<h2>회원가입</h2>
	<!-- 회원가입 -->
	<div id="registerSuccessBox">
		
		<div>
			<h4>회원가입이 완료되었습니다.</h4>
			
		</div>
		<div class="row successRow">
			<div class="col-lg-4 col-sm-12">
				<h5>아이디</h5>
			</div>
			<div class="col-lg-8 col-sm-12">
				<h4>OneStar</h4>
			</div>
		</div>
		
		<div class="row successRow">
			<div class="col-lg-6 col-sm-12">
				<button class="btn btn-primary">로그인</button>
			</div>
			<div class="col-lg-6 col-sm-12">
				<button class="btn btn-primary">홈페이지</button>
			</div>
		</div>
	</div>
	<!--//회원가입 -->
</main>



<%@include file="../includes/footer.jsp" %>





















