<%@ page language="java" contentType="text/html; charset=UTF-8"   
 pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
 <%@include file="../includes/header.jsp" %>


        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Board</h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 class="m-0 font-weight-bold text-primary">Read</h4>
              
            </div>
           
            <div class="card-body">
            	<div class="form-group" >
              		<label>Bno</label> <input class="form-control" name='title' readonly value="${board.bno}">
              	</div>
            
              	<div class="form-group">
              		<label>Title</label> <input class="form-control" name='title' readonly value="${board.title }">
              	</div>
              	
              	<div class="form-group">
              		<label>Content</label> <textarea class="form-control" rows="10" name='content' readonly>${board.content }</textarea>
              	</div>
              	
              	<div class="form-group">
              		<label>Writer</label> <input class="form-control" name='writer' readonly value="${board.writer }">
              	</div>
              	
              	<button data-oper='modify' class="btn btn-outline-primary btn-sm" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">
              	Modify
              	</button>
              	<button data-oper='list' class="btn btn-outline-primary btn-sm"
              	onclick="location.href='/board/list'">List</button>
            </div>
          </div>
        </div>
        <!-- /.container-fluid -->
      </div>
      <!-- End of Main Content -->
      
      
<%@include file="../includes/footer.jsp" %>
