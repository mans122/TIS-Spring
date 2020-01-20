<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>2020 팀프로젝트 정한별조</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicons -->
    <!-- <link rel="shortcut icon" href="/resources/images/favicon.ico">
    <link rel="apple-touch-icon" href="/resources/images/icon.png"> -->

    <!-- Google font (font-family: 'Open Sans', sans-serif;) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400,400i,700,800" rel="stylesheet">
    <!-- Google font (font-family: 'Poppins', sans-serif;) -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/plugins.css">
    <link rel="stylesheet" href="resources/css/style.css">

    <!-- Cusom css -->
    <link rel="stylesheet" href="resources/css/custom.css">

    <!-- Modernizer js -->
    <script src="resources/js/vendor/modernizr-3.5.0.min.js"></script>
    
    <style>
        #wrapper{max-width: 1920px;margin: 0 auto;padding: 0;}   

        /*  topmenu  화면 맨위 바로가기*/
        .topmenu{margin:0; padding: 0; width: 100%;right: 0px; position: absolute; display: block;height: 35px;}
        .topmenu ul {position: relative;float: right;width: 100%;padding-right: 50px;height: 28px;line-height: 1;text-align: right;}
        .topmenu ul li {display: inline;list-style: none;padding: 0;margin: 0 2px;line-height: 1;vertical-align: top;;}
        .topmenu ul li a {display: inline-block !important;padding: 0 9px 0 9px;margin-top: 1px;line-height: 28px;height: 28px;font-size: 11px;color: #8b8b8b !important;}
        .topmenu ul li .intro {position: absolute;left: 150px;top: 0;margin: 0;padding: 0;}

        /* 시작 헤더 */
         /* #header {background: none; overflow: hidden;} */
        /*** 시작 메인네비게이션  */
        .nav-header{width: 100%;max-width: 1920px;padding: 0;
            /* 배너와 떨어지는 공간 */
            margin-bottom: 10px;}
        .mainmenu{background-color: red;width: 100%;max-width: 1920px;height: 60px;padding: 0;margin: 0;
            }.mainmenu ul {height: 65px;
                }.mainmenu ul li{margin: 0 20px;height: 100%;
                    }.mainmenu ul li a{height: 100%;font-size: 1.4em;font-weight: 500;top: 0;line-height: 60px;
                        }
                        /* .mainmenu ul li a:hover{
                            text-decoration: none !important;
        } */
        
        /*** 시작 메인네비게이션  ***/

        .mobile-menu-wrap  {
            margin: 0;
        }
        /*** 로고 이미지 박스 ***/
        .no-sticky-logo-box{
            width: 100px; margin-top: 0px; padding: 10px;
            height: 70px;
            margin-left: 20px;
        }
        /*** 시작 Sticky 네비  ***/
        .is-sticky .nav-header{margin-bottom: 0;}
        .is-sticky .topmenu { right: 0; top: -5px;}
        .is-sticky .topmenu li{color: white;}
        .is-sticky .sticky-mainmenu{
            font-size: 1.4em;
            height:70px;
        }

        .sticky-mainmenu{
            top: 0;
            padding: 0 10px;
            margin: 0;
            }.sticky-mainmenu ul{
                /* overflow: hidden; */
                widows: 100%;
                }.sticky-mainmenu ul li{
                        color: white;
                    }.sticky-mainmenu ul li a{
                            padding:0 20px;
                            line-height: 30px;
                        }
        .sticky-logo-box{
            width: auto;
            float: left;
            position: fixed;
            padding: 10px;
            margin: 5px 0;
        }
        /*** 끝 Sticky 네비 ***/
        /* 끝 헤더 */

        /* 배너 시작 */
        .index-banner{           
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            max-height: 300px; 
        }
        .slick-list{height:300px !important;}
        .slick-track{height:100% !important;}
        .slick-slide{height:300px !important;}
        .bg-breadcrumb-2 {
        /* background-image: url(/resources/images/bg/breadcrumb-bg-2.jpg); */
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center center;
        max-height: 300px; }
        /*** 배너 내부 글씨 ***/
        .banner-content{margin: 0 auto; padding:0;}
        @media only screen and (max-width: 1199px) and (min-width: 992px){
            .banner-content {padding: 20px 20px;}}
        
        .banner .container { max-width: 100% !important; padding: 20px auto !important;}
        .banner .container .row{height: 100%;}
        
        /* 배너 끝 */


        /* Footer 시작 */
        .footer-area .section-padding-xs {
            padding: 0;
            height: 300px;
        }
        /* Footer 끝 */

        
        @media only screen and (min-width: 1440px) {
            main{ padding: 0 15%;} }
        @media only screen and  (max-width: 1439px) {
            main{ padding: 0 10%;}}
        @media only screen and  (max-width: 768px) {
            .slick-list{width: 100%; height:200px !important;}
            .slick-track{width: 100%;}
            main{ padding: 0 5% !important;}}
        @media (min-width: 1200px){
            .container { max-width: 100%;}}
    </style>
</head>
 
<body>
    <!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
	<![endif]-->

    <!-- Add your site or application content here -->


    <!-- Main wrapper -->
    <div class="wrapper" id="wrapper">

        <!-- Header Area -->
        <header id="header" class="header sticky-header">
            
            <!-- 탑 메뉴 시작 -->
            <div class="topmenu">
                <ul style="margin: 5px 0;">
                    <!-- <li class="intro"><a href="http://www.interpark.com/" target="_blank">인터파크 홈</a></li> -->
                    <li class="login"><a href="/member/login.asp">로그인</a></li>				
                    <li class="sitemap"><a href="#">회원가입</a></li>
                    <!-- <li class="ticket"><a href="http://ticket.interpark.com/" target="_blank">인터파크 티켓</a></li> -->
                </ul>
            </div>
            <!-- 탑 메뉴 끝 -->

            <!-- 메인 메뉴 시작-->
            <div class="container d-none d-lg-block nav-header" >
                <div class="header-inner" style="display: block;">
                   
                <div class="logo-box no-sticky-logo-box">
                    <a href="index.html" class="logo">
                        <img src="/resources/images/logo/logo-2.png" alt="logo">
                    </a>
                </div>
					<nav class="mainmenu" style="display: block;">
						<ul>
							<li><a href="index">공연/resources</a></li>

							<li class="cr-dropdown"><a href="index.html">연극</a>
								<ul>
									<li><a href="services.html">Services</a></li>
									<li><a href="portfolio-gallery-popup.html">Portfolios</a>
										<ul>
											<li><a href="portfolio-gallery-popup.html">Portfolio
													Gallery Popup</a></li>
											<li><a href="portfolio-details.html">Portfolio
													Details</a></li>
										</ul></li>
									<li><a href="about-us.html">About Us</a></li>
									<li><a href="contact-us.html">Contact Us</a></li>
									<li><a href="blog-grid.html">Blog</a>
										<ul>
											<li><a href="blog-grid.html">Blog Grid</a></li>
											<li><a href="blog-details.html">Blog Details</a></li>
										</ul></li>
									<li><a href="team.html">Team</a></li>
								</ul></li>

							<li><a href="index.html">뮤지컬</a></li>

							<li class="cr-dropdown"><a
								href="portfolio-gallery-popup.html">전시</a>
								<ul>
									<li><a href="portfolio-gallery-popup.html">Portfolio
											Gallery Popup</a></li>
									<li><a href="portfolio-details.html">Portfolio Details</a>
									</li>
								</ul></li>

							<li class="cr-dropdown"><a href="index.html">이벤트</a>
								<ul>
									<li><a href="blog-grid.html">Blog Grid</a></li>
									<li><a href="blog-details.html">Blog Detsils</a></li>
								</ul></li>

							<li class="cr-dropdown"><a href="index.html">커뮤니티</a></li>
						</ul>
					</nav>
				</div>
            </div>
            <!-- 메인메뉴 끝 -->

            <!-- 모바일 메뉴 시작 -->
            <div class="mobile-menu-wrap d-block d-lg-none">
                <div class="container">
                    <div class="mobile-menu">
                        <a href="index.html" class="mobile-logo">
                            <img src="/resources/images/logo/logo-2.png" alt="logo">
                        </a>
                    </div>
                </div>
            </div>
            <!-- 모바일메뉴 끝 -->
            
        </header>
        <!--// Header Area -->

       

        <!-- Banner Area -->
        <div class="banner-area banner-slider-active-with-navigation slider-navigation-style-2">

        <!-- Single Banner -->
			<div class="banner bg-breadcrumb-2 jarallax" data-black-overlay="7">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 offset-lg-2 col-md-12 offset-lg-1 col-12 offset-0">
							<div class="banner-content text-center jarallax cr-tilter">
								<!-- <h1>한별
									<br> 배너</h1> -->
								<p>광고내용을 입력하세요</p>
								<a href="contact-us.html" class="cr-btn cr-btn-white">
									<span>Contact Us</span>
								</a>
							</div>
						</div>
					</div>
				</div>
            </div>
        <!--// Single Banner -->

        <!-- Single Banner -->
			<div class="banner bg-breadcrumb-2 jarallax" data-black-overlay="7">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 offset-lg-2 col-md-12 offset-lg-1 col-12 offset-0">
							<div class="banner-content text-center jarallax cr-tilter">
								<!-- <h1>Creative
									<br> smart agency</h1> -->
								<p>Always lead the people right destination</p>
								<a href="contact-us.html" class="cr-btn cr-btn-white">
									<span>Contact Us</span>
								</a>
							</div>
						</div>
					</div>
				</div>
            </div>
        <!--// Single Banner -->

        
        </div>
        <!-- // Banner Area -->
