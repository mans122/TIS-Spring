<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>

<style>
	main{
	padding:0 25%;
	}
	#infoBox{
		position:relative;
		margin-top:100px;
		margin-bottom:150px;
	}
	h4{
		margin-top:50px;
	}
	.from-group{
		margin-top:50px;
	}
	.infoRow{
		margin-top:50px;
	}
	#btnInfoBox{
		width:100px;
		height:100px;
		margin:auto;
	}#btnInfo{
			margin-top:50px;
			width:100px;
		}
	.col-sm-12{
		margin-top:20px;
	}
	
	
	
	
	

</style>
<main>
	
	<!-- 회원가입 -->
	<div id="infoBox">
		<h2>내정보</h2>
		<form action="#" class="form-group">
			<div class="row infoRow">
				<div class="col-lg-3 col-sm-12">
					<h5>아이디</h5>
				</div>
				<div class="col-lg-6 col-sm-12">
					<input type="text" class="form-control" value="OneStar">
				</div>
				
			</div>
				
			<div class="row infoRow">	
				<div class="col-lg-3 col-sm-12">
					<h5>비밀번호</h5>
				</div>
				<div class="col-lg-6 col-sm-12">
					<input type="password" class="form-control">
				</div>
			</div>
			<div class="row infoRow">	
				<div class="col-lg-3 col-sm-12">
					<h5>비밀번호 확인</h5>
				</div>
				<div class="col-lg-6 col-sm-12">
					<input type="password" class="form-control">
				</div>
			</div>
			<div class="row infoRow">	
				<div class="col-lg-3 col-sm-12">
					<h5>연락처</h5>
				</div>
				<div class="col-lg-6 col-sm-12">
					<input type="text" class="form-control">
				</div>
			</div>
			
			<div class="row infoRow">
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
			
			<div id="btnInfoBox">
				<button id="btnInfo" type="submit" class="btn btn-primary">수정</button>	
			</div>
		</form>
	</div>
	<!--//회원가입 -->
</main>



<%@include file="../includes/footer.jsp" %>





















