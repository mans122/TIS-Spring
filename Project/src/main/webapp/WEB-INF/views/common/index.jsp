<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE main PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
  	<link rel="stylesheet" href="/resources/fullcalendar/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="/resources/fullcalendar/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='/resources/fullcalendar/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='/resources/fullcalendar/vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/vendor/css/?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="/resources/fullcalendar/css/main.css">
    <style>
    .nice-select{float:right !important; display:inline-block !important;}
    </style>
<%@include file="../includes/header.jsp" %>
        <!-- Start Page Content -->
        <main class="page-content">
        
        <!-- 이달의 인기  -->
             <div class="blog-details-related-post">
                <h5 class="small-title" style="display:inline-block; width:30%; left:0px;">이달의 인기</h5>
                <select id="selectBox">
               		<option>종합</option>
					<option>공연</option>
					<option>연극</option>
					<option>뮤지컬</option>
				</select>
				<!-- 이달의 인기 연극 -->
                <div id="topshowlist" class="row justify-content-center" style="display:none;">
                   <c:forEach items="${topshowlist}" var="topshowlist">
						<div class="col-lg-3 col-sm-6 col-12">
	                        <div class="related-blog">
	                            <a href="#" class="related-blog-thumb">
	                                <img src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg" alt="blog related post thumb">
	                            </a>
	                            <div class="related-blog-content">
	                                <h6>
	                                    <a href="/board/show?bno=${topshowlist.s_no }"><c:out value="${topshowlist.s_name}"/></a>
	                                </h6>
	                            </div>
	                        </div>
	                    </div>
                   </c:forEach>
                </div>
                <!-- //이달의 인기 연극 -->
                
                <!-- 이달의 인기 공연 -->
                <div id="topconcertlist" class="row justify-content-center" style="display:none;">
                   <c:forEach items="${topconcertlist}" var="topconcertlist">
						<div class="col-lg-3 col-sm-6 col-12">
	                        <div class="related-blog">
	                            <a href="#" class="related-blog-thumb">
	                                <img src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg" alt="blog related post thumb">
	                            </a>
	                            <div class="related-blog-content">
	                                <h6>
	                                    <a href="/board/show?bno=${topconcertlist.c_no }"><c:out value="${topconcertlist.c_name}"/></a>
	                                </h6>
	                            </div>
	                        </div>
	                    </div>
                   </c:forEach>
                </div>
                <!-- //이달의 인기 공연 -->
                
                <!-- 이달의 인기 콘서트  -->
                <div id="topmusicallist" class="row justify-content-center" style="display:none;">
                   <c:forEach items="${topmusicallist}" var="topmusicallist">
						<div class="col-lg-3 col-sm-6 col-12">
	                        <div class="related-blog">
	                            <a href="#" class="related-blog-thumb">
	                                <img src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg" alt="blog related post thumb">
	                            </a>
	                            <div class="related-blog-content">
	                                <h6>
	                                    <a href="/board/show?bno=${topmusicallist.m_no }"><c:out value="${topmusicallist.m_name}"/></a>
	                                </h6>
	                            </div>
	                        </div>
	                    </div>
                   </c:forEach>
                </div>
	            <!-- //이 달의 인기 뮤지컬 -->
            </div>
            <!-- //이 달의 인기 -->
        
            <!-- 이달의 인기 연극  -->
             <%-- <div class="blog-details-related-post">
                <h5 class="small-title">이 달의 인기 연극</h5>
                <div class="row justify-content-center">
                   <c:forEach items="${topshowlist}" var="topshowlist">
						<div class="col-lg-3 col-sm-6 col-12">
	                        <div class="related-blog">
	                            <a href="#" class="related-blog-thumb">
	                                <img src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg" alt="blog related post thumb">
	                            </a>
	                            <div class="related-blog-content">
	                                <h6>
	                                    <a href="/board/show?bno=${topshowlist.s_no }"><c:out value="${topshowlist.s_name}"/></a>
	                                </h6>
	                                <div class="related-blog-meta">
	                                    <!-- <span>
	                                        <a href="blog-list.html">August 01, 2017</a>
	                                    </span>
	                                    <span>
	                                        <a href="blog-list.html">Business</a>
	                                    </span> -->
	                                </div>
	                            </div>
	                        </div>
	                    </div>
                   </c:forEach>
                </div>
            </div> --%>
            <!-- //이 달의 인기 연극 -->
                       
			<!-- 이달의 인기 콘서트  -->
            <%-- <div class="blog-details-related-post">
                <h5 class="small-title">이 달의 인기 콘서트</h5>
                <div class="row justify-content-center">
                   <c:forEach items="${topconcertlist}" var="topconcertlist">
						<div class="col-lg-3 col-sm-6 col-12">
	                        <div class="related-blog">
	                            <a href="#" class="related-blog-thumb">
	                                <img src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg" alt="blog related post thumb">
	                            </a>
	                            <div class="related-blog-content">
	                                <h6>
	                                    <a href="/board/show?bno=${topconcertlist.c_no }"><c:out value="${topconcertlist.c_name}"/></a>
	                                </h6>
	                                <div class="related-blog-meta">
	                                    <!-- <span>
	                                        <a href="blog-list.html">August 01, 2017</a>
	                                    </span>
	                                    <span>
	                                        <a href="blog-list.html">Business</a>
	                                    </span> -->
	                                </div>
	                            </div>
	                        </div>
	                    </div>
                   </c:forEach>
                </div>
            </div> --%>
            <!-- //이 달의 인기 콘서트 -->
            
            <!-- 이달의 인기 콘서트  -->
           <%--  <div class="blog-details-related-post">
                <h5 class="small-title">이 달의 인기 뮤지컬</h5>
                <div class="row justify-content-center">
                   <c:forEach items="${topmusicallist}" var="topmusicallist">
						<div class="col-lg-3 col-sm-6 col-12">
	                        <div class="related-blog">
	                            <a href="#" class="related-blog-thumb">
	                                <img src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg" alt="blog related post thumb">
	                            </a>
	                            <div class="related-blog-content">
	                                <h6>
	                                    <a href="/board/show?bno=${topmusicallist.m_no }"><c:out value="${topmusicallist.m_name}"/></a>
	                                </h6>
	                                <div class="related-blog-meta">
	                                    <!-- <span>
	                                        <a href="blog-list.html">August 01, 2017</a>
	                                    </span>
	                                    <span>
	                                        <a href="blog-list.html">Business</a>
	                                    </span> -->
	                                </div>
	                            </div>
	                        </div>
	                    </div>
                   </c:forEach>
                </div>
            </div> --%>
            <!-- //이 달의 인기 콘서트 -->

			<!-- kakao map -->
			<div class="contact-us-map-area bg-white section-padding-lg">
				<h5 class="small-title">전국 위치</h5>
				<div class="container">
					<div class="google-map-wrap">
						<div id="map" style="width: 100%; height: 500px;"></div>
			
					</div>
				</div>
			</div>
			<script type="text/javascript"	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc64ec220bc72579845c45b3bd8e0fe0&libraries=services"></script>
			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    			mapOption = {
        			center: new kakao.maps.LatLng(37.450701, 126.870667), // 지도의 중심좌표
        			level: 12 // 지도의 확대 레벨
    			};  
			
			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);
			
			// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
			var mapTypeControl = new kakao.maps.MapTypeControl();
			
			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
			
			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			// 주소로 좌표를 검색합니다
			var positions = [{address:'제주특별자치도 제주시 첨단로 242', title:'test1',link:'https://www.naver.com'},
							{address:'서울 관악구 난곡로 30', title:'test2',link:'https://www.daum.net'},
							{address:'서울 강남구 압구정로 113', title:'test3',link:'https://www.google.com'},
							{address:'서울 관악구 난곡로 53', title:'test4',link:'https://www.nexon.com'}
			];
			positions.forEach(function(adr, index){
				geocoder.addressSearch(adr.address, function(result, status) {
					if (status === kakao.maps.services.Status.OK) {
				        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new kakao.maps.Marker({
				            map: map,
				            position: coords,
							title : adr.title,				            
				            clickable: true
				        }); 
						kakao.maps.event.addListener(marker, 'click', function() {
							alert(adr.link);
						});
				    }
				});
			});
			</script>
			<!-- kakao map -->

			


			
            
              <!-- 신작  -->
             <div class="blog-details-related-post">
                <h5 class="small-title">신작</h5>
                <div class="row justify-content-center">
                   <c:forEach items="${topconcertlist}" var="topconcertlist">
						<div class="col-lg-3 col-sm-6 col-12">
	                        <div class="related-blog">
	                            <a href="#" class="related-blog-thumb">
	                                <img src="/resources/images/blog/grid-blog/grid-blog-thumb-1.jpg" alt="blog related post thumb">
	                            </a>
	                            <div class="related-blog-content">
	                                <h6>
	                                    <a href="/board/show?bno=${topconcertlist.c_no }"><c:out value="${topconcertlist.c_name}"/></a>
	                                </h6>
	                                <div class="related-blog-meta">
	                                    <!-- <span>
	                                        <a href="blog-list.html">August 01, 2017</a>
	                                    </span>
	                                    <span>
	                                        <a href="blog-list.html">Business</a>
	                                    </span> -->
	                                </div>
	                            </div>
	                        </div>
	                    </div>
                   </c:forEach>
                </div>
            </div>
            <!-- //신작 -->


			<!-- 캘린더  -->
			  <div class="container">

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">카테고리1</a></li>
                <li><a tabindex="-1" href="#">카테고리2</a></li>
                <li><a tabindex="-1" href="#">카테고리3</a></li>
                <li><a tabindex="-1" href="#">카테고리4</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">구분</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="카테고리1">카테고리1</option>
                                    <option value="카테고리2">카테고리2</option>
                                    <option value="카테고리3">카테고리3</option>
                                    <option value="카테고리4">카테고리4</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">구분별</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="카테고리1">카테고리1</option>
                            <option value="카테고리2">카테고리2</option>
                            <option value="카테고리3">카테고리3</option>
                            <option value="카테고리4">카테고리4</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">등록자별</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="정연"
                                checked>정연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="다현"
                                checked>다현</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="사나"
                                checked>사나</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="나연"
                                checked>나연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="지효"
                                checked>지효</label>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
    </div>
    <!-- /.container -->

    <script src="/resources/fullcalendar/vendor/js/jquery.min.js"></script>
    <script src="/resources/fullcalendar/vendor/js/bootstrap.min.js"></script>
    <script src="/resources/fullcalendar/vendor/js/moment.min.js"></script>
    <script src="/resources/fullcalendar/vendor/js/fullcalendar.min.js"></script>
    <script src="/resources/fullcalendar/vendor/js/ko.js"></script>
    <script src="/resources/fullcalendar/vendor/js/select2.min.js"></script>
    <script src="/resources/fullcalendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/resources/fullcalendar/js/main.js"></script>
    <script src="/resources/fullcalendar/js/addEvent.js"></script>
    <script src="/resources/fullcalendar/js/editEvent.js"></script>
    <script src="/resources/fullcalendar/js/etcSetting.js"></script>
			

			<!-- //캘린더 -->
        </main>
        <!--// Start Page Content -->
<%@include file="../includes/footer.jsp" %>

<script>
$(document).ready(function(){
	$('#selectBox').change(function(e){
		if($(this).val()=='공연'){
			$("#topconcertlist").css("display","block");
			$("#topshowlist").css("display","none");
			$("#topmusicallist").css("display","none");
		}else if($(this).val()=='연극'){
			$("#topconcertlist").css("display","none");
			$("#topshowlist").css("display","block");
			$("#topmusicallist").css("display","none");
		}else if($(this).val()=='뮤지컬'){
			$("#topconcertlist").css("display","none");
			$("#topshowlist").css("display","none");
			$("#topmusicallist").css("display","block");			
		}
	});
});
</script>
