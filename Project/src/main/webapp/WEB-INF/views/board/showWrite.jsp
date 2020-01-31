<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/header.jsp" %>
<style>
	#writeBox{		margin-top:100px;		margin-bottom:100px;	}
	#writeTable{		line-height:6;	}
	.btnFind{		margin-left:15px;	}
	#wirteBtnBox{		width:180px;		margin:auto;	}
	#bntOK{		margin-left:20px;	}
</style>

<main>
	<div id="writeBox">
		<h5 class="small-title">글쓰기</h5>
		<form role="form" class="form-group" method="post" action="/board/showWrite" >
			<table id="writeTable">
				<tr>
					<th>제목</th>
					<td><input type="text" class="form-control" name="s_name"></td>
				</tr>
				<tr>
					<th>장르</th>
					<td><input type="text" class="form-control" name="s_genre"></td>
				</tr>
				<tr>
					<th>공연기간</th>
					<td class="form-inline">
						<input type="text" class="form-control" name="s_s_date" placeholder="시작일"> 
						<input type="text" class="form-control" name="s_e_date" placeholder="종료일">
					</td>
				</tr>
				<tr>
					<th>장소</th>
					<td class="form-inline">
					
						<div class="contact-us-map-area bg-white section-lg" style="width: 80%;">
							<input type="text" class="form-control" name="a_address" id="sample5_address" readonly>
							<button type="button" class="btn btn-primary form-control btnFind"
								onclick="sample5_execDaumPostcode()">주소 검색</button><br>
							<div class="container">
								<div class="google-map-wrap">
									<div id="map"
										style="width: 100%; height: 500px; margin-top: 10px; display: none"></div>
								</div>
							</div>
						</div> <script
							src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
						<script
							src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc64ec220bc72579845c45b3bd8e0fe0&libraries=services"></script>
						<script>
             var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                 mapOption = {
                     center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
                     level: 3 // 지도의 확대 레벨
                 };
         
             //지도를 미리 생성
             var map = new daum.maps.Map(mapContainer, mapOption);
             //주소-좌표 변환 객체를 생성
             var geocoder = new daum.maps.services.Geocoder();
             //마커를 미리 생성
             var marker = new daum.maps.Marker({
                 position: new daum.maps.LatLng(37.537187, 127.005476),
                 map: map
             });
         
         
             function sample5_execDaumPostcode() {
                 new daum.Postcode({
                     oncomplete: function(data) {
                         var addr = data.address; // 최종 주소 변수
         
                         // 주소 정보를 해당 필드에 넣는다.
                         document.getElementById("sample5_address").value = addr;
                         // 주소로 상세 정보를 검색
                         geocoder.addressSearch(data.address, function(results, status) {
                             // 정상적으로 검색이 완료됐으면
                             if (status === daum.maps.services.Status.OK) {
         
                                 var result = results[0]; //첫번째 결과의 값을 활용
         
                                 // 해당 주소에 대한 좌표를 받아서
                                 var coords = new daum.maps.LatLng(result.y, result.x);
                                 // 지도를 보여준다.
                                 mapContainer.style.display = "block";
                                 map.relayout();
                                 // 지도 중심을 변경한다.
                                 map.setCenter(coords);
                                 // 마커를 결과값으로 받은 위치로 옮긴다.
                                 marker.setPosition(coords)
                             }
                         });
                     }
                 }).open();
             }
         </script></td>
				</tr>
				<tr>
					<th>관람 등급</th>
					<td>
						<div class="form-group">
							<!-- <select class="form-control" name="s_class" id="sel1"> -->
							<input type="text" name="s_class" id="sel1">
								<!-- <option>선택해주세요</option>
								<option>전체 이용가</option>
								<option>7세 이용가</option>
								<option>12세 이용가</option>
								<option>15세 이용가</option>
								<option>18세 이용가</option>
							</select> -->
						</div>
					</td>
				</tr>
				<tr>
					<th>썸네일</th>
					<td class="form-inline">
					<input type="text"  class="form-control">
						<button type="button" class="btn btn-primary form-control btnFind">찾아 보기</button></td>
				</tr>
				<tr>
					<th>출연 배우</th>
					<td class="form-inline"><input type="text"
						class="form-control">
						<button type="button" class="btn btn-primary form-control btnFind">찾아 보기</button></td>
				</tr>
				<tr>
					<th>감독</th>
					<td >
						<input type="text" name="s_director" class="form-control">
					</td>
				</tr>
				<tr>
					<th>줄거리</th>
					<td><textarea class="form-control" name="s_content" rows="5" cols="50"></textarea>
					</td>
				</tr>
			</table>
			<div id="wirteBtnBox">
				<button type="reset" class="btn btn-primary">다시작성</button>
				<button id="bntOK" type="submit" class="btn btn-primary">등록</button>
			</div>
		</form>
	</div>
</main>
<%@include file="../includes/footer.jsp"%>