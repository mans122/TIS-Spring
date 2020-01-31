<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>

<style>
	main{padding:0 25%;	}
	#registerBox{position:relative;	margin-top:100px;	margin-bottom:150px;}
	#registerBox h4{margin-top:50px;}
	.from-group{margin-top:50px;}
	.registerRow{margin-top:50px;}
	.registerRow .col-sm-12{margin-top:20px;	}
	#btnRegisterBox{width:100px;height:100px;margin:auto;}
	#btnRegister{margin-top:50px;}
	
</style>
<main>
	
	<!-- 회원가입 -->
	<div id="registerBox">
		<h2>회원가입</h2>
		<form action="#" class="form-group">
			<h4>필수 입력 항목</h4>
			<div class="row registerRow">
				<div class="col-lg-3 col-sm-12">
					<h5>아이디</h5>
				</div>
				<div class="col-lg-6 col-sm-12">
					<input type="text" class="form-control">
				</div>
				<div class="col-lg-3 col-sm-12">
					<button class="btn btn-primary">중복확인</button>
				</div>
			</div>
				
			<div class="row registerRow">	
				<div class="col-lg-3 col-sm-12">
					<h5>비밀번호</h5>
				</div>
				<div class="col-lg-6 col-sm-12">
					<input type="password" class="form-control">
				</div>
			</div>
			<div class="row registerRow">	
				<div class="col-lg-3 col-sm-12">
					<h5>비밀번호 확인</h5>
				</div>
				<div class="col-lg-6 col-sm-12">
					<input type="password" class="form-control">
				</div>
			</div>
			<h4>선택 입력 항목</h4>
			<div class="row registerRow">	
				<div class="col-lg-3 col-sm-12">
					<h5>연락처</h5>
				</div>
				<div class="col-lg-6 col-sm-12">
					<input type="text" class="form-control">
				</div>
			</div>
			
			<div class="row registerRow">
				<div class="col-lg-3 col-sm-12">
					<h5>주소</h5>
				</div>
				<div class="col-lg-6 col-sm-12">
					<input type="text" class="form-control">
				</div>
				<div class="col-lg-3 col-sm-12">
					<button class="btn btn-primary">주소검색</button>
				</div>
			</div>
			
			<div id="btnRegisterBox">
				<button id="btnRegister" type="submit" class="btn btn-primary">회원 가입</button>	
			</div>
		</form>
	</div>
	<!--//회원가입 -->
</main>



<%@include file="../includes/footer.jsp" %>





















