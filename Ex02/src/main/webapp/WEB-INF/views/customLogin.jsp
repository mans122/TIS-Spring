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
        
		 	<!-- form start  --------------->
			<form method='post' action="/login">
				<div class='form-group'><input class='form-control' placeholder='ID' type='text' name='username'></div>
				<div class='form-group'><input class='form-control' placeholder='Password' type='password' name='password'></div>
				<div class='form-group'><input type='checkbox' name='remember-me'> 자동로그인</div>
				<div class='form-group'><input class='form-control' type='submit' value="로그인"></div>
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}"/>
			</form>
			<!-- form end -->
			
		</div>
		<!-- card-body end -->
		
		<!-- card-footer start ------------------------->
		<div class="card-footer">
			<h4><c:out value="${error }"/></h4>
			<h4><c:out value="${logout }"/></h4>
		</div>
		<!-- card-footer end -->
		
	</div>
	<!-- Card End -->
</div>
<%@ include file="./includes/footer.jsp" %>
<c:if test="${param.logout !=null }">
	<script>
	$(document).ready(function(){
		if(history.state){
			return;
		}
		alert("로그아웃 하였습니다.");
		history.replaceState({},null,null);
	});
	</script>
</c:if>