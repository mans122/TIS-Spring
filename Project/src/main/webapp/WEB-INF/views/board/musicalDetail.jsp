<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/header.jsp" %>

<style>
	#box{
		margin-bottom:150px;
	}
	.single-comment{
		margin-top:0px;
	}
	.single-comment-thumb{
		flex:none;
	}
	.single-comment-thumb img{
		width:300px !important;	
		height:350px !important;
		border:red solid 1px;
	}
	.single-comment-content{
		margin-left:200px;
		font-size:20px;
	}.single-comment-content .fa{
			margin-bottom:20px;
			font-size:24px;	
			color:#E67E22;
		}
	.fa-share-alt,.fa-instagram{
		margin-left:10px !important;
	}
	
	.badge{
		font-size:16px;
		margin-left:15px;
	}
	main{
	padding:0 25%;
	}
	.musicalStory{
		margin-top:100px;
	}.musicalStory h4{
			color:#666666;
		}
		
	.related-blog-content{
		text-align:center;
	}
	#btnReply{
		margin-top:15px;
	}
	#replyList{
		margin-top:50px;
		border-bottom: 1px solid gray;
	}#replyList ul{
			list-style-type:none;
		}#replyList ul span{
				margin-left:10px;
		}#replyList ul li{
				margin-bottom:15px;	
			}#replyList ul li b{
					font-size:20px;
					color:aqua;
				}
			
	
</style>
<main>

	<div id="box">
		<!-- 뮤지컬정보 상세보기 -->
		<div class="commentlist blog-details-comments">
			<h3 class="small-title">
				배반의 장미<span class="badge  badge-pill badge-primary">상영중</span>
			</h3>
			<div class="single-comment">
				<div class="single-comment-thumb">
					<img src="/resources/images/blog/layout-1/blog-thumb-1.jpg"
						alt="commenter thumb 2">
				</div>
	
	
	
				<div class="single-comment-content">
					<a href="#"><i class="fa fa-facebook-official"></i></a> <a href="#"><i
						class="fa fa-share-alt"></i></a> <a href="#"><i
						class="fa fa-instagram"></i></a>
					<h4>공연정보</h4>
					<p>장르: 스릴러</p>
					<p>일시: 0000.00.00~0000.00.00</p>
					<p>장소: 장충체육관</p>
					<p>가격: 1억원</p>
					<p>사이트: www.naver.com</p>
					<button type="button" class="btn btn-primary">예매하기</button>
				</div>
			</div>
		</div>
		<!-- //뮤지컬정보 상세보기 -->
	
		<!-- 뮤지컬정보 줄거리 -->
		<div class="musicalStory">
			<h4>줄거리</h4>
			<div>태초에 다섯이 하나인 생물체가 있었다. 그러던 어느날 회의감을 느낀 2명은 도망을 치게 되는데.. 남겨진
				3명의 처절한 생존극 과연 그들은 살아 남을수 있을것인가?</div>
		</div>
		<!-- //뮤지컬정보 줄거리 -->
	
	
	
	
		<!--출연배우 목록 -->
		<div class="blog-details-related-post">
			<h4 class="small-title">출연 배우</h4>
			<div class="row justify-content-center">
	
				<div class="col-lg-2 col-sm-2 col-2">
					<div class="related-blog">
						<a href="blog-details.html" class="related-blog-thumb"> <img
							src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg"
							alt="blog related post thumb">
						</a>
						<div class="related-blog-content">
							<h6>
								<a href="blog-details.html">정한별</a>
							</h6>
	
						</div>
					</div>
				</div>
	
				<div class="col-lg-2 col-sm-2 col-2">
					<div class="related-blog">
						<a href="blog-details.html" class="related-blog-thumb"> <img
							src="/resources/images/blog/grid-blog/grid-blog-thumb-2.jpg"
							alt="blog related post thumb">
						</a>
						<div class="related-blog-content">
							<h6>
								<a href="blog-details.html">정한별</a>
							</h6>
	
						</div>
					</div>
				</div>
	
				<div class="col-lg-2 col-sm-2 col-2">
					<div class="related-blog">
						<a href="blog-details.html" class="related-blog-thumb"> <img
							src="/resources/images/blog/grid-blog/grid-blog-thumb-3.jpg"
							alt="blog related post thumb">
						</a>
						<div class="related-blog-content">
							<h6>
								<a href="blog-details.html">정한별</a>
							</h6>
	
						</div>
					</div>
				</div>
	
				<div class="col-lg-2 col-sm-2 col-2">
					<div class="related-blog">
						<a href="blog-details.html" class="related-blog-thumb"> <img
							src="/resources/images/blog/grid-blog/grid-blog-thumb-3.jpg"
							alt="blog related post thumb">
						</a>
						<div class="related-blog-content">
							<h6>
								<a href="blog-details.html">정한별</a>
							</h6>
	
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-sm-2 col-2">
					<div class="related-blog">
						<a href="blog-details.html" class="related-blog-thumb"> <img
							src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg"
							alt="blog related post thumb">
						</a>
						<div class="related-blog-content">
							<h6>
								<a href="blog-details.html">정한별</a>
							</h6>
	
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-sm-2 col-2">
					<div class="related-blog">
						<a href="blog-details.html" class="related-blog-thumb"> <img
							src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg"
							alt="blog related post thumb">
						</a>
						<div class="related-blog-content">
							<h6>
								<a href="blog-details.html">정한별</a>
							</h6>
	
						</div>
					</div>
				</div>
	
			</div>
		</div>
		<!--//출연배우 목록 -->
	
	
		<!-- //blog related post -->
		<!-- Contact Us Map Area -->
	
	
		<!-- kakao map -->
		<!-- <div class="contact-us-map-area bg-white section-padding-lg">
	            <div class="container">
	               <div class="google-map-wrap">
	                
	                  <div id="map" style="width:100%; height:500px;"></div>
	                  
	               </div>
	            </div>
	         </div>
	         <script type="text/javascript"
	                     src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc64ec220bc72579845c45b3bd8e0fe0"></script>
	         <script>
	            var container = document.getElementById('map');
	            var options = {
	               center : new kakao.maps.LatLng(33.450701, 126.570667),
	               level : 11
	            };
	
	            var map = new kakao.maps.Map(container, options);
	         </script> -->
		<!-- //kakao map -->
		<!-- 리뷰 작성 -->
		<div id="replyBox">
			<h5 class="small-title">리뷰</h5>
			<form action="#">
			<div class="row">
				<div class="col-sm-9 col-lg-9 col-9">
					<textarea placeholder="내용을 입력해주세요." class="form-control" rows="3" cols="50"></textarea>
					
				</div>
				<div class="col-sm-3 col-lg-3 col-3">
					<button id="btnReply" type="submit" class="btn btn-primary">등록</button>				
				</div>
			</div>
			</form>
		</div>
		<!-- //리뷰 작성 -->
		
		<!-- 리뷰 목록 -->
		<div id="replyList">
			<ul>
				<li><b>임그린티라떼는 초록색?</b> <span>2020.03.11 오전 2:43</span></li>
				<li><p>이작품 진짜다...</p></li>
			</ul>
		</div>
		<!-- //리뷰 목록 -->
	</div>

</main>

<%@include file="../includes/footer.jsp" %>
























