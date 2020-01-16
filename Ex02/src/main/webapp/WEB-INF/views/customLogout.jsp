<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./includes/header.jsp"  %>
<div class="container-fluid">
	
	
	<!-- Card Start ---------------------------------------->
	 <div class="card shadow mb-4" style="width:50% !important;margin:auto !important">
	 
	 	<!-- card-header start ---------------->
	 	<div class="card-header py-3">
              <h4 class="m-0 font-weight-bold text-primary">Login <a href="/board/register" type="button" class="btn btn-primary btn-sm float-right">Register</a></h4>
        </div>
        <!-- card-herder end -->
        
        <!-- card-body start ------------------------->
        <div class="card-body">
			<form action="/customLogout" method='post'>
				<h4 style='text-align:center;'>로그아웃 하시겠습니까?</h4>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
				
				<button class="btn btn-primary btn-sm form-control">로그아웃</button>
			</form>
		</div>
		<!-- card-body end -->
		
		<!-- card-footer start ------------------------->
		<div class="card-footer">
		</div>
		<!-- card-footer end -->
		
	</div>
	<!-- Card End -->
</div>
<%@ include file="./includes/footer.jsp" %>
