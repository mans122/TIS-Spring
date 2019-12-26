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
              <h4 class="m-0 font-weight-bold text-primary">Modify</h4>
              
            </div>
           
            <div class="card-body">
            	<div class="form-group" >
              		<label>Bno</label> <input class="form-control" name='title' readonly value="${board.bno}">
              	</div>
            
              	<div class="form-group">
              		<label>Title</label> <input class="form-control" name='title' value="${board.title }">
              	</div>
              	
              	<div class="form-group">
              		<label>Content</label> <textarea class="form-control" rows="10" name='content' >${board.content }</textarea>
              	</div>
              	
              	<div class="form-group">
              		<label>Writer</label> <input class="form-control" name='writer' readonly value="${board.writer }">
              	</div>

				<form id='operForm' action="/board/modify" method="get">
					<input type="hidden" name="bno" value="${board.bno}">	
					<input type="hidden" name="pageNum"	value='<c:out value="${cri.pageNum}"/>'> 
					<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
					<input type="hidden" name="type" value='<c:out value="${cri.type}"/>'>
					<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}"/>'>
					
					<button class="btn btn-outline-primary btn-sm">Modify</button>
				</form>
				              	
              	<button data-oper='modify' class="btn btn-outline-primary btn-sm" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">
              	Modify
              	</button>
              	<button data-oper='remove' class="btn btn-outline-danger btn-sm" id="remove">Remove</button>
              	<button data-oper='list' class="btn btn-outline-primary btn-sm"
              	onclick="location.href='/board/list'">List</button>
            </div>
          </div>
        </div>
        <!-- /.container-fluid -->
      </div>
      <!-- End of Main Content -->
      
      
<%@include file="../includes/footer.jsp" %>
<script>
$(document).ready(function(){
	$("#remove").click(function(){
		var result = confirm("정말 삭제하시겠습니까?");
		if(result){
			 var form = $('<form action="/board/remove" method="post">' + '<input type="hidden" name="bno" value="'+${board.bno}+ '"></input>'+'</form>');
			 $('body').append(form);
			 $(form).submit();
		}else{
			return;
		}
	});
});
</script>