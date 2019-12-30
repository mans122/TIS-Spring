<%@ page language="java" contentType="text/html; charset=UTF-8"   
 pageEncoding="UTF-8"%>
<%@include file="../includes/lincolnheader.jsp" %>

<div class="row" style="margin-top: 0;">
    <!-- Carousel 시작 -->
    <div id="demo" class="carousel slide" data-ride="carousel" id="myCarousel">

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
        <!--  -->

        <!-- Indicators -->
        <ul class="carousel-indicators" id="olIndicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
            <li data-target="#demo" data-slide-to="3"></li>
            <li data-target="#demo" data-slide-to="4"></li>
        </ul>

        <!-- The slideshow -->
        <div class="carousel-inner"">
                <div class=" carousel-item active">
            <img src="/resources/img/1.jpg" alt="aviator" id="s-img-1">
            <img src="/resources/img/1_.jpg" alt="aviator" id="s-img-2">
        </div>
        <div class="carousel-item">
            <img src="/resources/img/2.jpg" alt="nautilus" id="s-img-1" usemap="#image-map">
            <img src="/resources/img/2_.jpg" alt="nautilus" id="s-img-2">
            <map name="image-map"><area target="_blank" alt="nautilus" title="nautilus"
                    href="https://www.lincoln-korea.com/vehicles/nautilus/" coords="619,249,824,292"
                    shape="rect"></map>
            <div class="carousel-caption" style="line-height: 40px;" id="caption2">
                <a href="https://www.lincoln-korea.com/vehicles/nautilus/"
                    class="btn btn-mute btn-outline-secondary">자세히 보기 &gt;</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/resources/img/3.jpg" alt="mkc" id="s-img-1">
            <img src="/resources/img/3_.jpg" alt="mkc" id="s-img-2">
            <div class="carousel-caption" style="line-height: 40px;" id="caption3">
                <h4><span>NEW LINCOLN MKC</span></h4>
                <p>URBAN SUV, 시선을 사로잡다!</p>
                <a href="https://www.lincoln-korea.com/vehicles/mkc.html/"
                    class="btn btn-mute btn-outline-secondary">자세히 보기 &gt;</a>
            </div>

        </div>
        <div class="carousel-item">
            <img src="/resources/img/4.jpg" alt="continental" id="s-img-1">
            <img src="/resources/img/4_.jpg" alt="continental" id="s-img-2">
        </div>
        <div class="carousel-item">
            <img src="/resources/img/5.jpg" alt="mkz" id="s-img-1">
            <img src="/resources/img/5_.jpg" alt="mkz" id="s-img-2">
        </div>
    </div>
</div>
</div>
<!--  -->

<!--  -->

<!-- 박스레이아웃 -->
<div class="row img" style="position: relative;">
<div id="allmodel"></div>
<!-- LeftBox ------------------------------------>
<div class="col-md-6 box-h">
    <img src="/resources/img/homepage-2-1-brand-gallery-712x576.jpg" alt="전체 모델 보기" width="100%" id="s-img-1">
    <img src="/resources/img/homepage-brand-gallery-1.jpg" alt="전체 모델 보기" width="100%" id="s-img-2">
    <div class="carousel-caption" style="line-height: 40px;">
        <h4><span>See All Lincoln</span></h4>
        <p>당신만을 위한 링컨의 모델을 확인해보세요</p>
        <a href="#" class="btn btn-mute btn-outline-secondary">전체 모델 보기 &gt;</a>
    </div>
</div>
<!-- -->

<!-- RightBox ---------------------------------------->
<div class="col-md-6" id="box-right">
    <!-- 상단 박스 -->
    <div class="row" style="margin: 0;">
        <!-- left -->
        <div class="col-md-6 box-h">
            <img src="/resources/img/homepage-2-2-brand-gallery-356x524.jpg" alt="인텔리전트" width="100%" id="s-img-1">
            <img src="/resources/img/homepage-brand-gallery-2.jpg" alt="인텔리전트" width="100%" id="s-img-2">
            <div class="carousel-caption" style="line-height: 40px;">
                <h4>Technology</h4>
                <p>링컨 인텔리전트 AWD</p>
                <a href="#" class="btn btn-mute btn-outline-secondary">자세히 보기 &gt;</a>
            </div>
        </div>
        <!--  -->

        <!-- right -->
        <div class="col-md-6 box-h">
            <img src="/resources/img/homepage-2-3-brand-gallery-356x524.jpg" alt="프리미엄서비스" width="100%" id="s-img-1">
            <img src="/resources/img/homepage-brand-gallery-3.jpg" alt="프리미엄서비스" width="100%" id="s-img-2">
            <div class="carousel-caption" style="line-height: 40px;">
                <h4>Pick up & Delivery</h4>
                <p>직접 찾아가는프리미엄서비스</p>
                <a href="#" class="btn btn-mute btn-outline-secondary">자세히 보기</a>
            </div>
        </div>
        <!--  -->
    </div>

    <!-- bottom box -->
    <div class="row box-h" style="margin: 0;">
        <img id="s-img-1" src="/resources/img/homepage-2-4-brand-gallery-712x247.jpg" alt="프로모션" width="100%">
        <img id="s-img-2" src="/resources/img/homepage-brand-gallery-4.jpg" alt="프로모션" width="100%">
        <div class="carousel-caption" style="line-height: 40px;" id="box-bottom-1">
            <h4>Sales Promotion</h4>
            <p>진행 중인 세일즈 프로모션</p>
            <a href="#" class="btn btn-mute btn-outline-secondary">자세히 보기 &gt;</a>
        </div>
    </div>
    <!--  -->
</div>
<!-- RigthBox 끝 -->
</div>
<!-- 박스레이아웃 끝 -->

<!-- 박스2 시작 ------------------------------------->
<div class="row img" style="position: relative; margin-top: 10px;">
<div id="store" style="visibility: hidden; position: absolute; top: -80px;"></div>
<div class="col-md-4">
    <img src="/resources/img/overview-continental-kba-7-1-480x500.jpg" alt="전시장및서비스센터찾기">
    <div class="carousel-caption" style="line-height: 40px;">
        <h3>전시장 및 서비스 센터 찾기</h3>
        <!-- 모달 바로가기 버튼 추가 -->
        <a href="#" class="btn btn-mute btn-outline-secondary" data-toggle="modal" data-target="#myModal">바로
            가기</a>

        <!-- Modal -------------------------------------------------------------->
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content" style="height: 800px;">

                    <!-- Modal Header -->
                    <div class="modal-header" style="height: 55px;">
                        <div class="row" style="height: 55px; margin: 0;">
                            <div class="col-md-11" style="background: rgba(0, 0, 0, 0);">
                                <h3 style="line-height: 50px;">전시장 찾기</h3>
                            </div>
                            <div class="col-md-1" style="padding: 0;">
                                <button type="button" class="close" data-dismiss="modal"
                                    style="width: 50px; height: 50px; margin: 0; padding: 0;">&times;</button>
                            </div>
                        </div>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body" style="height: 600px;">
                        <div id="kakaomap" style="width: 100%; height:500px"></div>
                        <script type="text/javascript"
                            src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=ba41ce6149f9a8820bb69e5c83ea82f6"></script>
                        <script>
                            $("#myModal").on("shown.bs.modal", function () {
                                var mapContainer = document.getElementById('kakaomap'), // 지도를 표시할 div 
                                    mapOption = {
                                        center: new kakao.maps.LatLng(37.501566, 127.026300), // 지도의 중심좌표
                                        level: 3 // 지도의 확대 레벨
                                    };
                                var map = new kakao.maps.Map(mapContainer, mapOption);
                                // // 마커가 표시될 위치입니다 
                                var markerPosition = new kakao.maps.LatLng(37.501566, 127.026300);
                                // // 마커를 생성합니다
                                var marker = new kakao.maps.Marker({
                                    position: markerPosition
                                });
                                // 마커가 지도 위에 표시되도록 설정합니다
                                marker.setMap(map);
                            });
                        </script>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>
        <!-- Modal 끝 -->
    </div>
</div>


<div class="col-md-4">
    <img src="/resources/img/overview-continental-kba-7-2-480x500.jpg" alt="브로셔다운로드">
    <div class="carousel-caption" style="line-height: 40px;">
        <h3>브로셔 다운로드</h3>
        <a href="#" class="btn btn-mute btn-outline-secondary" data-toggle="modal" data-target="#brosher"
            style="z-index: 0;">바로
            가기</a>
        <!-- Modal  ----------------------------------------------------------->
        <div class="modal modal-center" id="brosher">
            <div class="modal-dialog modal-fullsize modal-center">
                <div class="modal-content modal-brosher modal-center">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <div class="row" style="height: 55px; margin: 0;">
                            <div class="col-md-11" style="background: rgba(0, 0, 0, 0);">
                            </div>
                            <div class="col-md-1" style="padding: 0;">
                                <button type="button" class="close" data-dismiss="modal"
                                    style="width: 50px; height: 50px; margin: 0; padding: 0;">&times;</button>
                            </div>
                        </div>
                        <!-- <div style="height: 55px; width: 100%; display: block;">
                                    <button type="button" class="close" data-dismiss="modal" style="position: absolute; right: 0;margin: auto; width: auto; height: auto;">&times;</button>
                                </div> -->

                        <div>
                            <img src="/resources/img/1492058790366.jpg" alt="이미지" class="modal-main-img"
                                style="transform: none; margin: 0;">
                        </div>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body" style="width: 100%;margin: 0; margin-top: 30px;">
                        <h2>브로셔 다운로드</h2>
                        <div>
                            <!-- container fluid -->
                            <div class="container-fluid" style="margin-top: 100px;">
                                <div class="row" style="transform: scale(0.8);">
                                    <div class="col-md-3 mo-img">
                                        <a
                                            href="https://www.lincoln-korea.com/content/dam/lincoln/sk/nameplate/brochure/19MY-Nautilus.pdf">
                                            <img src="/resources/img/nautilus-updated.jpg" alt="nautilus">
                                            <p>mkz</p>
                                        </a>
                                    </div>
                                    <div class="col-md-3 mo-img">
                                        <a
                                            href="https://www.lincoln-korea.com/content/dam/lincoln/sk/nameplate/brochure/19MY%20MKZ%20.pdf">
                                            <img src="/resources/img/mkz.jpg" alt="MKZ">
                                            <p>mkz</p>
                                        </a>
                                    </div>
                                    <div class="col-md-3 mo-img">
                                        <a
                                            href="https://www.lincoln.com/services/assets/Brochure?make=Lincoln&model=MKC&year=2019">
                                            <img src="/resources/img/mkc.jpg" alt="MKC">
                                            <p>mkz</p>
                                        </a>
                                    </div>

                                    <div class="col-md-3 mo-img">
                                        <a
                                            href="https://www.lincoln-korea.com/content/dam/lincoln/sk/nameplate/brochure/19MY-Continental.pdf">
                                            <img src="/resources/img/continental-model.jpg" alt="continental">
                                            <p>mkz</p>
                                        </a>
                                    </div>
                                </div>
                                <div class="row" style="text-align: center;">
                                    <p style="margin: 0 auto; line-height: 1em; font-size: 1em;">원하는 모델을 선택 하신 후
                                        다운로드 버튼을 누르세요.</p>

                                </div>
                            </div>
                            <!--  -->
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>
        <!-- modal 끝 -->
    </div>
</div>


<div class="col-md-4"><img src="/resources/img/overview-continental-kba-7-3-480x500.jpg" alt="시승신청">
    <div class="carousel-caption" style="line-height: 40px;">
        <h3>시승신청</h3>
        <a href="#" class="btn btn-mute btn-outline-secondary" data-toggle="modal" data-target="#request">바로
            가기</a>
        <!-- Modal  ----------------------------------------------------------->
        <div class="modal modal-center" id="request">
            <div class="modal-dialog modal-fullsize modal-center">
                <div class="modal-content modal-brosher modal-center">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <div class="row" style="height: 55px; margin: 0;">
                            <div class="col-md-11" style="background: rgba(0, 0, 0, 0);">
                            </div>
                            <div class="col-md-1" style="padding: 0;">
                                <button type="button" class="close" data-dismiss="modal"
                                    style="width: 50px; height: 50px; margin: 0; padding: 0;">&times;</button>
                            </div>
                        </div>
                        <!-- <div style="height: 55px; width: 100%; display: block;">
                                        <button type="button" class="close" data-dismiss="modal" style="position: absolute; right: 0;margin: auto; width: auto; height: auto;">&times;</button>
                        </div> -->

                        <div>
                            <img src="/resources/img/1484734227305.jpg" alt="이미지" class="modal-main-img"
                                style="transform: none; margin: 0;">
                        </div>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="row" style="margin-bottom: 30px;">
                            <div style="margin: 0 auto;">
                                <h3>시승신청</h3>
                            </div>
                        </div>
                        <form action="booking.jsp" class="booking" method="post">
                            <div class="row">
                                <!-- form booking -->

                                <!-- com-sm-6 -->
                                <div class="col-md-6">
                                    <div>
                                        <p>어떤 자동차에 관심이 있나요? *</p>
                                    </div>
                                    <div>
                                        <select name="car" class="form-control">
                                            <option value="CONTINENTAL">LINCOLN CONTINENTAL</option>
                                            <option value="MKZ">LINCOLN MKZ</option>
                                            <option value="NAUTILUS">LINCOLN NAUTILUS</option>
                                            <option value="MKC">LINCOLN MKC</option>
                                        </select>
                                    </div>
                                    <div>
                                        <p>이름</p>
                                    </div>
                                    <div><input type="text" name="name" class="form-control form-group"></div>
                                    <div>
                                        <p>이메일</p>
                                    </div>
                                    <div><input type="email" name="email" class="form-control form-group"></div>
                                </div>

                                <!-- com-sm-6 -->
                                <div class="col-md-6">
                                    <div>
                                        <p>신차를 언제 구입할 계획이십니까? *</p>
                                    </div>
                                    <div>
                                        <select name="plan" class="form-control form-group">
                                            <option value="noselect"">선택하세요</option>
                                                        <option value=" 0~30일">0~30일</option>
                                            <option value="1~3개월">1~3개월</option>
                                            <option value="4~6개월">4~6개월</option>
                                            <option value="1년이내">1년이내</option>
                                            <option value="계획없음">계획없음</option>
                                        </select>
                                    </div>
                                    <div>
                                        <p>추가요청사항</p>
                                    </div>
                                    <div><input type="text" name="addtion" class="form-control"></div>
                                    <div>
                                        <p>전시장을 선택하세요</p>
                                    </div>
                                    <div>
                                        <select name="dealer" class="form-control form-group">
                                            <option value="noselct">선택하세요</option>
                                            <option value="강서전시장">강서전시장</option>
                                            <option value="대치전시장">대치전시장</option>
                                            <option value="동대문전시장">동대문전시장</option>
                                            <option value="마포전시장">마포전시장</option>
                                            <option value="미아전시장">미아전시장</option>
                                        </select>
                                    </div>

                                    <div>
                                        <input type="submit" value="신청하기" class="btn"
                                            style="background: #B45F1A; color: white;">
                                    </div>

                                </div>
                            </div>
                        </form>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>
        <!-- modal 끝 -->
    </div>
</div>
</div>
<!-- 박스2 끝  -->

<!-- 게시판 ---------------------------------------------------->
<div class="row" style="position: relative; padding: 0 30px; margin-bottom: 30px;">
<div id="board" style="visibility: hidden; position: absolute; top: -80px;"></div>
<h3 class="text-center" style="margin-top: 20px; margin-bottom: 20px;">문 의 사 항</h3>
<iframe id="iframe1" src="http://mans122.dothome.co.kr/g5/bbs/board.php?bo_table=board01" width="100%"
    onload="autoResize(this)" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</div>
<!-- 게시판 끝 -->

<!-- disclosures -->
<div class="row" id="dcrow"
style="width: 100; margin: 0 !important; padding: 0 0 0 10px;border-top: 1px solid #ccc;border-bottom: 1px solid #ccc;">
<!-- <button class="btn btn-dark" data-toggle="collapse" data-target="#disclosures" style="margin: 0 auto; height: 55px;">disclosures</button> -->
<a href="#" id="dc" data-toggle="collapse" data-target="#disclosures"
    style="width: 100%; margin: 0;padding: 0; line-height: 55px; font-size: 1rem; font-weight: 500;"><span>DISCLOSURES</span></a>
<div id="disclosures" class="collapse"">
※ 본 사이트의 차량 이미지, 사양 등에 대한 정보는 고객의 이해를 돕기 위한 참고용 자료로 실제 판매 모델과 다를 수 있습니다. 정확한 정보는 가까운 전시장의 영업직원에게 문의 바랍니다.
</div>
</div>
<!--  -->
<!-- Bottom Menu 시작 ----------------------------->
<!-- <div class=" bottom-menu" id="bottom-menu"> -->
    <div class="row" id="bottom-menu">
        <div class="col-md-3">
            <h4>Vehicles</h4>
            <div>CONTINENTAL</div>
            <div>MKZ</div>
            <div>AVIATOR</div>
            <div>MKC</div>
        </div>

        <div class="col-md-3">
            <h4>Technology</h4>
            <div>링컨 인텔리전트 AWD</div>
        </div>

        <div class="col-md-3">
            <h4>Shopping</h4>
            <div>전시장 및 서비스센터 찾기</div>
            <div>브로셔 다운로드</div>
            <div>MyLincoln매거진</div>
            <div>세일즈 프로모션</div>
            <div>링컨 파이낸셜 서비스</div>
            <div>시승 신청</div>
        </div>

        <div class="col-md-3">
            <h4>Owner</h4>
            <div>공인서비스</div>
            <div>블랙 레이블 멤버십 서비스</div>
            <div>픽업&딜리버리</div>
            <div>소모성 부품 무상교환 서비스</div>
            <div>24시간 긴급출동 서비스</div>
            <div>보증 및 서비스</div>
            <div>리콜 안내</div>
            <div>싱크3 업데이트</div>
            <div>순정 부품</div>
            <div>차량 관리</div>
            <div>정비 일정</div>
            <div>서비스 프로모션</div>
            <div>고객 센터</div>
            <div>전시장 및 서비스센터 찾기</div>
        </div>
    </div>
    <!-- </div> -->
    <!--  -->

    <!-- Accordion ---------------------------------------------------------------->
    <div id="accordionExample" class="accordion">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h2 class="mb-0"><button type="button" class="btn btn-link" data-toggle="collapse"
                        data-target="#collapseOne">Vehicles</button></h2>
            </div>
            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                <div class="card-body">
                    <div>CONTINENTAL</div>
                    <div>MKZ</div>
                    <div>AVIATOR</div>
                    <div>MKC</div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header" id="headingTwo">
                <h2 class="mb-0">
                    <button type="button" class="btn btn-link collapsed" data-toggle="collapse"
                        data-target="#collapseTwo">Technology</button>
                </h2>
            </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                <div class="card-body">
                    <div>링컨 인텔리전트 AWD</div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header" id="headingThree">
                <h2 class="mb-0">
                    <button type="button" class="btn btn-link collapsed" data-toggle="collapse"
                        data-target="#collapseThree">Shopping</button>
                </h2>
            </div>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                data-parent="#accordionExample">
                <div class="card-body">
                    <div>전시장 및 서비스센터 찾기</div>
                    <div>브로셔 다운로드</div>
                    <div>MyLincoln매거진</div>
                    <div>세일즈 프로모션</div>
                    <div>링컨 파이낸셜 서비스</div>
                    <div>시승 신청</div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header" id="headingFour">
                <h2 class="mb-0">
                    <button type="button" class="btn btn-link collapsed" data-toggle="collapse"
                        data-target="#collapseFour">Owner</button>
                </h2>
            </div>
            <div id="collapseFour" class="collapse" aria-labelledby="headingFour"
                data-parent="#accordionExample">
                <div class="card-body">
                    <div>공인서비스</div>
                    <div>블랙 레이블 멤버십 서비스</div>
                    <div>픽업&딜리버리</div>
                    <div>소모성 부품 무상교환 서비스</div>
                    <div>24시간 긴급출동 서비스</div>
                    <div>보증 및 서비스</div>
                    <div>리콜 안내</div>
                    <div>싱크3 업데이트</div>
                    <div>순정 부품</div>
                    <div>차량 관리</div>
                    <div>정비 일정</div>
                    <div>서비스 프로모션</div>
                    <div>고객 센터</div>
                    <div>전시장 및 서비스센터 찾기</div>
                </div>
            </div>
        </div>
    </div>
    <!--  -->
<%@include file="../includes/lincolnfooter.jsp" %>