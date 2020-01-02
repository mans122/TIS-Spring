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
              		<label>Bno</label> <input class="form-control" name='bno' readonly value="${board.bno}">
              	</div>
            
              	<div class="form-group">
              		<label>Title</label> <input class="form-control" name='title' value="${board.title }" readonly>
              	</div>
              	
              	<div class="form-group">
              		<label>Content</label> <textarea class="form-control" rows="10" name='content' readonly>${board.content }</textarea>
              	</div>
              	
              	<div class="form-group">
              		<label>Writer</label> <input class="form-control" name='writer' readonly value="${board.writer }" readonly>
              	</div>

				<form id='operForm' action="/board/modify" method="get">
					<input type="hidden" name="bno" value="${board.bno}">	
					<input type="hidden" name="pageNum"	value='<c:out value="${cri.pageNum}"/>'> 
					<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
					<input type="hidden" name="type" value='<c:out value="${cri.type}"/>'>
					<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}"/>'>
					
					<button id='modify' class="btn btn-outline-primary btn-sm">Modify</button>
				</form>
				              	
              	<%-- <button id='modify' data-oper='modify' class="btn btn-outline-primary btn-sm" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">
              	Modify
              	</button> --%>
              	<button data-oper='remove' class="btn btn-outline-danger btn-sm" id="remove">Remove</button>
              	<button data-oper='list' class="btn btn-outline-primary btn-sm"
              	onclick="location.href='/board/list'">List</button>
            </div>
          </div>
        </div>
        <!-- /.container-fluid -->
      </div>
      <!-- End of Main Content -->
      
      <!-- PasswordCheck Modal ------------------------------------------------>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<!-- modal content -->
		<div class="modal-content">
			<!-- modal header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Password Check</h4>
			</div>
			<!-- modal body -->
			<div class="modal-body">
				<div class="form-group">
					<label>Password</label> <input type="password" class="form-control" name='pwd'
						value=''>
				</div>
			</div>
			<!-- modal body -->
			<!-- modal footer -->
			<div class="modal-footer">
				<button id='modalModBtn' type="button"
					class="btn btn-primary btn-sm">Modify</button>
				<button id='modalCloseBtn' type="button"
					class="btn btn-default btn-sm">Close</button>
			</div>
		</div>
		<!-- modal-content 끝 -->
	</div>
	<!-- modal-dialog 끝 -->
</div>
<!-- Modal 끝 -->
<%@include file="../includes/footer.jsp" %>

<script src="/resources/js/board.js"></script>
<script>
$(document).ready(function(){
	/* Start Modal */
	var bnoValue = '<c:out value="${board.bno}"/>';
	var modal = $(".modal");
	var modalInputPwd = modal.find("input[name='pwd']");
	var bno = $("#operForm").find("input[name='bno']");
	$("#modify").click(function(e){
		e.preventDefault();
		modal.find("button[id !='modalCloseBtn']").hide();
		$("#modalModBtn").show();
		$("#myModal").modal("show");
	})
	// Close 버튼 
	$("#modalCloseBtn").on("click",function(e){
		modal.modal("hide");d
	});
	//Modify 버튼 클릭
	$("#modalModBtn").on("click",function(e){
		var vo={
				pwd:modalInputPwd.val(),
				bno:bnoValue
				};
		pwdCheck.check(vo, function(result){
	 		if(result=="success"){
	 				modal.find("input").val("");
	 				modal.modal("hide");
					$("#operForm").attr("action","/board/modify").submit();
					
			}else{
				alert("비밀번호가틀렸습니다.");
			}
		});
	});
	/* End modal */
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