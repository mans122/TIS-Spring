<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  
<%@include file="../includes/header.jsp" %>

    
<!----------------------- boardList.jsp -------------------------------->
 
  <link rel="apple-touch-icon" sizes="76x76" href="/resources/community/img/apple-icon.png">
  <link rel="icon" type="image/png" href="/resources/community/img/favicon.png">

  <!-- Fonts and icons -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <!-- <link href="/resources/community/css/bootstrap.min.css" rel="stylesheet" /> -->
  <link href="/resources/community/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />

	<style>
		.table>thead>tr>th {font-size: 14px;}
		.table>thead>tr>th:nth-child(4) {text-align: center;}
		.table>thead>tr>th:nth-child(5) {text-align: center;}
		.table tbody tr td {font-size: 15px;}
		.table tbody tr td:nth-child(1) {width: 50px; color: gray; font-size: 13px;}
		.table tbody tr td:nth-child(4) {text-align: center; width: 80px; color: gray; font-size: 13px;}
		.table tbody tr td:nth-child(5) {text-align: center; width: 100px; color: gray; font-size: 13px;}
		
		.main-panel>.navbar {margin-top: 0;}
		h4 {margin: 0;}
		.btn {margin: 0;}
	</style>

<main>
  <div class="wrapper">
<!--   
    <div class="sidebar" data-color="white" data-active-color="danger">

      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="../assets/img/logo-small.png">
          </div>
        </a>
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
			커뮤니티
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li>
            <a href="./dashboard.html">
              <i class="nc-icon nc-bank"></i>
              <p>공지사항</p>
            </a>
          </li>
          <li>
            <a href="./icons.html">
              <i class="nc-icon nc-diamond"></i>
              <p>Q & A</p>
            </a>
          </li>
          <li>
            <a href="./map.html">
              <i class="nc-icon nc-pin-3"></i>
              <p>자유게시판</p>
            </a>
          </li>
        </ul>
      </div>
	 </div>
 -->	 
 
    <div class="main-panel">
    
      <!-- Navbar 시작 -->      
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">커뮤니티</a>
          </div>
          
          <div class="justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="검색...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <i class="nc-icon nc-zoom-split"></i>
                  </div>
                </div>
              </div>
            </form>
          </div>

        </div>
      </nav>   
      <!-- Navbar 끝 -->
      <!-- <div class="panel-header panel-header-sm">


</div> -->
		<!-- 테이블 시작 -->
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">자유게시판
                	<a href="/community/boardRegister" class="btn btn-primary btn-sm float-right">글쓰기</a>
                </h4>
                
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                    	<th>번호</th>
							<th>제목</th>
                     <th>작성자</th>
                     <th>조회수</th>
                     <th>작성일</th>
                    </thead>
                    <tbody>
								
								<!-- 테이블 내용 시작 --------------------------->
								<c:forEach items="${boardList }" var="cmboard">
									<tr>
										<td>
											<c:out value="${cmboard.b_no }" />
										</td>
										<td>
											<a href='/community/boardGet?b_no=<c:out value="${cmboard.b_no }" />'>
												<c:out value="${cmboard.title }" />
											</a>
										</td>
										<td>
											<c:out value="${cmboard.writer }" />
										</td>
										<td>
											<c:out value="${cmboard.view_cnt }" />
										</td>
										<td>
											<fmt:formatDate pattern="yy-MM-dd" value="${cmboard.reg_date}" />
										</td>

									</tr>
									
								</c:forEach>
								<!-- 테이블 내용 끝 ----------------->
								
								
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
      <!-- 테이블 끝 -->
    </div>
  </div>
  
  <!--   Core JS Files   -->
<!--   
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
 -->

  <!--  Notifications Plugin    -->
  <!-- <script src="../assets/js/plugins/bootstrap-notify.js"></script> -->
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <!-- <script src="../assets/js/paper-dashboard.min.js?v=2.0.0"></script> -->

</main>


<%@include file="../includes/footer.jsp" %> 



<script>
$(function() {
	/* 뒤로가기 문제 */
  history.replaceState({},null,null); 
  
  if (history.state) { 
	  return;
    }
  
});
</script>