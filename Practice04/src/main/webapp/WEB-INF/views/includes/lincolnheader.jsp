<%@ page language="java" contentType="text/html; charset=UTF-8"   
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>링컨코리아 홈페이지 2</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<!-- jquery ui -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- Font Awesome -->

<script>
//  iframe resize 
function autoResize(i) {
    (i).height = 0;
    var iframeHeight =
        (i).contentWindow.document.body.scrollHeight;
    (i).height = iframeHeight + 20;
}
</script>
<script>
$(document).ready(function () {
    $("#accordion").accordion();
    $("#accordion").accordion("option", "icons", null);
    $(".navbar a, footer a[href='#myPage']").on('click', function (event) {
        if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 900, function () {
                window.location.hash = hash;
            });
        }
    });
});
</script>


<style>
*:focus {
    box-shadow: none !important;
    border: none;
}

ul {
    list-style-type: none;
}

a {
    text-decoration: none;
    color: black;
}

a:link {
    text-decoration: none;
}

a:visited {
    text-decoration: none;
}

a:active {
    text-decoration: none;
}

a:hover {
    text-decoration: none;
    color: black;
}

button {
    text-decoration: none !important;
    z-index: -10 !important;
}


.modal {
    color: black;
    padding: auto;
    width: 100%;
}

.modal-backdrop {
    z-index: -1;
}

.modal-dialog {
    text-align: center;
}

.modal-content {
    height: 1000px;
    width: 880px;
    margin: 0px;
    padding: 0px;
    left: 50%;
    margin-left: -440px;
}

.modal-header {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 355px;
    display: block;
}

.modal-header img {
    height: 300px !important;
}

.modal-footer {
    z-index: 1;
}

.modal p {
    color: #000000 !important;
}

* {
    margin: 0;
    padding: 0;
}

.container {
    width: 100%;
    max-width: 1440px;
    margin: 0 auto;
    padding: 0 !important;
    border: 1px solid #d9d9d9;
    overflow: hidden;
}

/* #board {width: 70%;max-width: 1440px;  margin: 1; padding: 0;} */
*/ .wrap {
    width: 100%;
    max-width: 1440px;
    margin: 0 auto;
    border: 1px solid #d9d9d9;
}

.carousel-inner img {
    width: 100% !important;
    height: 780px !important;
}

.carousel-caption {
    font-size: 1em;
    padding-top: 20px;
    padding-bottom: 0;
    z-index: auto;
}

.carousel-caption .btn {
    color: white !important;
}

.carousel-caption p {
    margin: 0;
    padding-bottom: 10px;
    color: white;
}

.carousel-caption h4 {
    transform: scale(1.1);
}

#demo {
    width: 100%;
}

#demo img {
    transform: none !important;
}

.row {
    margin-top: 10px;
}

.row img {
    height: 100%;
    transform: scale(1);
    transition: 0.5s;
}

.row img:hover {
    transform: scale(1.05);
}

.col-md-6 {
    padding: 0;
    overflow: hidden;
}

.col-md-4 {
    padding: 0;
    margin: 0;
    overflow: hidden;
}

.col-md-4 img {
    height: 500px;
    width: 100%;
}

#caption2 {
    top: 250px;
}

#caption3 {
    width: 100%;
    max-width: 700px;
    height: 250px;
    left: 45%;
    top: 15%;
    margin: 0;
    padding: 0;
    color: black;
}

#caption3 h4 {
    font-size: 3em;
    letter-spacing: 10px;
}

#caption3 p {
    font-size: 2em;
}

#caption3 a {
    margin-top: 20px;
    width: 150px;
    height: 40px;
    line-height: 40px;
    padding: 0;
    font-size: 1em;
    margin-top: 0;
    box-sizing: border-box;
}

.box {
    float: left;
    position: relative;
}

.modal-body img {
    width: 150px;
    height: 100px;
    margin: 0;
    padding: 0;
}

.mo-img {
    width: 170px;
    height: 185px;
    margin: 0;
    padding: 0;
}

.mo-img img {
    box-sizing: border-box;
    padding: 0;
    margin-top: 30px;
    width: 175px;
    height: 93px;
    line-height: 28px;
}

.mo-img img:hover {
    transform: none;
}

.mo-img:hover {
    border: 1px solid orange;
}

.booking .row {
    margin: 0;
    width: 100%;
}

.booking .col-md-6 {
    width: 100%;
    margin: 0;
}

.booking div {
    width: 240px;
    margin: 15px auto;
}

.booking p {
    font-size: 0.1em;
    width: 100%;
    letter-spacing: -1;
}

#bottom-menu {
    padding: 0 250px;
    font-size: 0.8em;
}

#bottom-menu .col-md-3 {
    margin: 0;
    padding: 20px 0;
    text-align: center;
}

#bottom-menu h4 {
    border-bottom: 1px solid #ccc;
    padding-bottom: 30px;
    margin-bottom: 20px;
    color: #554C43 !important;
}

#bottom-menu div {
    color: #A5A5A5;
    font-size: 1.1em;
}

.navbar {
    background: white !important;
    padding: 0 40px;
    height: 80px;
    z-index: 1000 !important;
}

.navbar li {
    margin-left: 50px;
}

.navbar a {
    color: black !important;
}

.navbar-toggler {
    background: #ccc !important;
}

/* #collapsibleNavbar {line-height: 30px; margin: 10px 0;} */
#s-img-2 {
    display: none;
}

.accordion {
    display: none;
    padding-left: 10px;
    background: #FFFFFF;
}

.card {
    border: none;
    background: none;
}

.card-header {
    background-color: rgba(0, 0, 0, 0);
    border-bottom: 1px solid rgba(0, 0, 0, 0.13);
}

.card-body {
    padding-left: 50px;
}

.card .btn {
    color: black !important;
    width: 100%;
    text-align: left;
    border: none;
    height: 55px;
    padding: 0;
}

#disclosures {
    width: 100%;
    margin: 0;
    padding: 30px 50px;
    background: rgba(0, 0, 0, 0.05);
    border-top: 1px solid rgba(0, 0, 0, 0.13);
}

#dcrow {
    padding: 0 !important;
}

.carousel-control-prev,
.carousel-control-next {
    width: 100px;
    height: 200px;
    top: 45%;
}

#dc {
    text-align: center;
    color: #B65F07;
}


.mobile-gnb {
    display: none !important;
}

.web-gnb {
    width: 100%;
    height: 110px;
    position: relative;
}

.accordion-web {
    margin-left: 300px;
}

.accordion-web .card {
    width: 150px;
    float: left;
    margin-left: 50px;
}

.card-header-web {
    margin-left: 20px;
}

.web-navbar-right {
    position: absolute;
    width: 400px;
    height: 30px;
    top: 10px;
    right: 150px;
    float: left;
}

.web-navbar-right li {
    margin: 0;
    float: left;
    margin-left: 20px;
    font-size: 0.9em;
}


.web-main-nav {
    position: absolute;
    width: 100%;
    height: 80px;
    display: block;
    bottom: 0;
    padding: 20px 0 10px 0;
}

.web-main-nav .navbar-brand {
    padding: 0;
    margin: 0;
    width: 130px;
    height: 55px;
    float: left;
    padding-left: 50px;
}

.footer a {
    margin: 0 10px;
    color: #A5A5A5;
}

#allmodel {
    visibility: hidden;
    position: absolute;
    top: -80px;
}

@media screen and (max-width: 768px) {
    #bomttom-menu h4 {
        padding-top: 30px;
        padding-left: 30px;
    }

    #demo img {
        height: 550px !important;
    }

    .row {
        margin-top: 0;
    }

    .col-md-6 {
        width: 100% !important;
    }

    .carousel-caption {
        margin-bottom: 20px;
    }

    .carousel-caption h4,
    .carousel-caption h3 {
        font-size: 1.5em;
        line-height: 2em;
    }

    .carousel-caption h3 {
        font-size: 1.5em;
        line-height: 2em;
    }

    .carousel-caption a,
    .carousel-caption p {
        font-size: 1em;
        line-height: 1em;
        letter-spacing: -1px;
    }

    .box-h {
        height: 400px;
    }

    /* .box-h img{height: 320px;} */
    #box-bottom-1 {
        margin-bottom: 50px !important;
    }

    .col-md-4 {
        display: none;
    }


    #s-img-1 {
        display: none;
    }

    #s-img-2 {
        display: block;
    }

    #bottom-menu {
        display: none;
    }

    .accordion {
        display: block !important;
    }

    #caption2 {
        display: none;
    }

    #caption3 {
        display: none;
    }

    .carousel-control-prev,
    .carousel-control-next {
        top: 70%;
    }

    #dc {
        text-align: left;
        color: black;
        font-size: 1.3em !important;
    }

    #dcrow {
        padding-left: 25px !important;
    }

    .card {
        border-bottom: 1px solid rgba(0, 0, 0, 0.13) !important;
        margin-left: 10px;
    }

    .card-header {
        padding: 5px 0;
        line-height: 1.3em;
    }

    .card-header h2 {
        padding-left: 30px;
    }

    .web-gnb {
        display: none !important;
    }

    .mobile-gnb {
        display: block !important;
        padding: 10px 0px;
        width: 100%;
        margin: 0;
    }

    .mobile-gnb .navbar-toggler {
        margin-top: 10px;
        margin-left: 40px;
    }

    .mobile-gnb .navbar-brand {
        float: left;
        right: 15px;
        bottom: 10px;
        position: absolute;
    }

    .footer {
        max-width: 80%;
        width: 80%;
        height: 450px;
        margin: 0 auto;
        padding: 25px;
    }

    #footer-box1 {
        margin: 20px;
    }

    #footer-box2 {
        width: 80%;
        padding: 15px;
        margin: 0 auto;
        border-bottom: 1px solid #A5A5A5;
        border-top: 1px solid #A5A5A5;
        line-height: 2rem;
    }

    #footer-box3 {
        padding: 40px;
    }

    #footer-box3 span {
        display: block;
        padding-bottom: 30px;
    }

    #footer-box3 a {
        display: block;
        line-height: 0.3em;
    }

    #collapsibleNavbar {
        width: 100%;
        background: white;
        margin: 20px auto;
    }

    .nav-item {
        margin: 15px 0;
    }
}

;
</style>
</head>

<body id="body">
<div class="container wrap" style="width: 100%;">
<!-- 메뉴바 제작 ------------------------------------------------------->
<!-- mobilegnb ---------------------------------------------------------------------------------------->
<nav class="gnb mobile-gnb navbar navbar-expand-md bg-dark navbar-dark fixed-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <a class="navbar-brand" href="#body">
        <img src="/resources/img/logo.jpg" alt="로고">
    </a>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item" data-toggle="collapse" data-target=".navbar-collapse">
                <a class="nav-link anchor" href="#allmodel">전체모델</a>
            </li>
            <li class="nav-item" data-toggle="collapse" data-target=".navbar-collapse">
                <a class="nav-link anchor" href="#store">전시장</a>
            </li>
            <li class="nav-item" data-toggle="collapse" data-target=".navbar-collapse">
                <a class="nav-link anchor" href="#board">문의사항</a>
            </li>
        </ul>

    </div>
    <!-- </div> -->
</nav>
<!--  -->

<!-- Web GNB ----------------------------------------------->
<nav class="gnb web-gnb navbar navbar-expand-md">
    <div class="navbar-right web-navbar-right">
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#requst"><span>
                        <div>시승 신청</div>
                    </span></a></li>
            <li><a href="#" data-toggle="modal" data-target="#requst"><span>
                        <div>브로셔 다운로드</div>
                    </span></a></li>
            <li><a href="#" data-toggle="modal" data-target="#requst"><span>
                        <div>전시장 및 서비스센터 찾기</div>
                    </span></a></li>
        </ul>
    </div>
    <div class="main-nav web-main-nav">
        <div>
            <a class="navbar-brand web-navbar-brand" href="#">
                <img src="/resources/img/logo.jpg" alt="로고"">
        </a>
        </div>
<!-- accordion1 ---------------->
<div id=" accordion1" class="accordion-web">
                <div class="card">
                    <div class="card-header-web">
                        <h2><button type="button" class="btn web-btn" data-toggle="collapse"
                                data-target="#vehicles">Vehicles</button></h2>
                    </div>
                    <div id="vehicles" class="collapse" data-parent="#accordion1">
                        <div class="card-body-web">
                            aaaaa
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header-web">
                        <h2><button type="button" class="btn web-btn" data-toggle="collapse"
                                data-target="#Technology">Technology</button></h2>
                    </div>
                    <div id="Technology" class="collapse" data-parent="#accordion1">
                        <div class="card-body-web">
                            Technology
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header-web">
                        <h2><button type="button" class="btn web-btn" data-toggle="collapse"
                                data-target="#Shopping">Shopping</button></h2>
                    </div>
                    <div id="Shopping" class="collapse" data-parent="#accordion1">
                        <div class="card-body-web">
                            Shopping
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header-web">
                        <h2><button type="button" class="btn web-btn" data-toggle="collapse"
                                data-target="#AboutLINCOLN">AboutLINCOLN</button></h2>
                    </div>
                    <div id="AboutLINCOLN" class="collapse" data-parent="#accordion1">
                        <div class="card-body-web">
                            About LINCOLN
                        </div>
                    </div>
                </div>
        </div>
    </div>
</nav>
<!--  -->
