<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>



<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">Board</h1>


	<!-- DataTales Example -->
	<form role="form" action="/board/modify" method="post">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h4 class="m-0 font-weight-bold text-primary">Modify</h4>

			</div>

			<div class="card-body">

				<div class="form-group">
					<label>Bno</label> <input class="form-control" name='bno'
						readonly value="${board.bno}">
				</div>

				<div class="form-group">
					<label>Title</label> <input class="form-control" name='title'
						value="${board.title }">
				</div>

				<div class="form-group">
					<label>Content</label>
					<textarea class="form-control" rows="10" name='content'>${board.content }</textarea>
				</div>

				<div class="form-group">
					<label>Writer</label> <input class="form-control" name='writer'
						readonly value="${board.writer }">
				</div>

				<div class="form-group">
					<label>RegDate</label> <input class="form-control" name='regdate'
						value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate}"/>'
						readonly>
				</div>

				<div class="form-group">
					<label>Update Date</label> <input class="form-control"
						name='updateDate'
						value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updateDate}"/>'
						readonly>
				</div>

				<button type="submit" data-oper='modify' class="btn btn-outline-primary btn-sm">Modify</button>
				<button type="submit" data-oper='remove' class="btn btn-outline-danger btn-sm">Remove</button>
				<button type="submit" data-oper='list' class="btn btn-outline-info btn-sm">List</button>
			</div>

		</div>
	</form>
</div>
<!-- /.container-fluid -->
<!-- End of Main Content -->


<%@include file="../includes/footer.jsp"%>
<script>
	$(document).ready(function(){
		var formObj = $("form");
		$('button').on("click",function(e){
			e.preventDefault();
			var operation=$(this).data("oper");
			
			console.log(operation);
			if(operation==='remove'){
				var result = confirm("정말 삭제하시겠습니까?");
				if(result){
					formObj.attr("action","/board/remove");
				}else{
				    return;
				}
				
			}else if(operation==='list'){
				//리스트로 이동
				self.location="/board/list";
				return;
			}
			formObj.submit();
		});
	});
</script>
