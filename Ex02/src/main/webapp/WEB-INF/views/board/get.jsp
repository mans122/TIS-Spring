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
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h4 class="m-0 font-weight-bold text-primary">Modify</h4>

		</div>

		<div class="card-body">
			<div class="form-group">
				<label>Bno</label> <input id="bno" class="form-control" name='bno'
					readonly value="${board.bno}">
			</div>

			<div class="form-group">
				<label>Title</label> <input class="form-control" name='title'
					value="${board.title }" readonly>
			</div>

			<div class="form-group">
				<label>Content</label>
				<textarea class="form-control" rows="10" name='content' readonly>${board.content }</textarea>
			</div>

			<div class="form-group">
				<label>Writer</label> <input class="form-control" name='writer'
					readonly value="${board.writer }">
			</div>

			<form id='operForm' action="/board/modify" method="get">
				<input type="hidden" name="bno" value="${board.bno}"> <input
					type="hidden" name="pageNum"
					value='<c:out value="${cri.pageNum}"/>'> <input
					type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
				<input type="hidden" name="type"
					value='<c:out value="${cri.type}"/>'> <input type="hidden"
					name="keyword" value='<c:out value="${cri.keyword}"/>'>

				<button data-oper='modify' class="btn btn-outline-primary btn-sm">Modify</button>
				<button data-oper='list' class="btn btn-outline-primary btn-sm">List</button>
			</form>
			<%-- <button data-oper='modify' class="btn btn-outline-primary btn-sm" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">Modify</button> --%>
			<button data-oper='remove' class="btn btn-outline-danger btn-sm"
				id="remove">Remove</button>
			<!-- <button data-oper='list' class="btn btn-outline-primary btn-sm"	onclick="location.href='/board/list'">List</button> -->
		</div>
		<!-- card body 끝 -->
	</div>
	<!-- dataTable 끝 -->
</div>
<!-- /.container-fluid -->

<!-- 댓글 -------------------------------------------------------------------------->
<div class="card mb-4">
	<div class="card-header py-3">
		<i class="fa fa-comments fa-fw"></i>Reply
		<button id="addReplyBtn" class="btn btn-primary btn-sm float-right">New
			Reply</button>
	</div>
	<div class="card-body">
		<ul class="chat list-group">

		</ul>
	</div>
	<div class="card-footer">
</div>
<!-- 댓글 끝 -->

<!-- 댓글 페이징  ---------------------------------------------------------------------->
<!-- 댓글 페이징 끝 -->

<!-- Reply Modal ------------------------------------------------>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<!-- modal content -->
		<div class="modal-content">
			<!-- modal header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
			</div>
			<!-- modal body -->
			<div class="modal-body">
				<div class="form-group">
					<label>Reply</label> <input class="form-control" name='reply'
						value='new Reply!!!!'>
				</div>

				<div class="form-group">
					<label>Replyer</label> <input class="form-control" name='replyer'
						value='replyer'>
				</div>

				<div class="form-group">
					<label>Reply Date</label> <input class="form-control"
						name='replyDate' value=''>
				</div>
			</div>
			<!-- modal body -->

			<!-- modal footer -->
			<div class="modal-footer">
				<button id='modalModBtn' type="button"
					class="btn btn-warning btn-sm">Modify</button>
				<button id='modalRemoveBtn' type="button"
					class="btn btn-danger btn-sm">Remove</button>
				<button id='modalRegisterBtn' type="button"
					class="btn btn-primary btn-sm">Register</button>
				<button id='modalCloseBtn' type="button"
					class="btn btn-default btn-sm">Close</button>
			</div>
		</div>
		<!-- modal-content 끝 -->
	</div>
	<!-- modal-dialog 끝 -->
</div>
<!-- Modal 끝 -->

<%@include file="../includes/footer.jsp"%>

<script src="/resources/js/reply.js"></script>
<script>
	$(document).ready(function() {
		var pageNum=1;
		var replyPageFooter = $(".card-footer");
		// 댓글 페이징 시작
		function showReplyPage(replyCnt){
			var endNum = Math.ceil(pageNum/10.0)*10;
			var startNum = endNum - 9;
			var prev = startNum !=1;
			var next = false;
			
			if(endNum * 10 >= replyCnt){
				endNum = Math.ceil(replyCnt/10.0);
			}
			if(endNum * 10 < replyCnt){
				next = true;
			}
			
			var str = "<ul class='pagination float-right'>";
			if(prev){
				str +="  <li class='page-item'>";
				str +="     <a class='page-link' href='"+(startNum - 1)+"'>Previous</a>";
				str +="  </li>";
			}
			
			for(var i = startNum; i <endNum; i++){
				var active = pagenum == i ?"active":"";
				str +="  <li class='page-item "+active+" '>";
				str +="     <a class='page-link' href='"+i+"'>"+i+"</a>";
				str +="  </li>";
			}
			
			if(next){
				str +="  <li class='page=item'>";
				str +="     <a class='page-link' href='"+(endNum + 1)+"'>Next</a>";
				str +="  </li>";
			}
				str +="<ul></div>";
				replyPageFooter.html(str);
		}
		
		//댓글 페이징번호 이벤트처리
		replyPageFooter.on("click","li a",function(e){
			e.preventDefault();
			var targetPageNum = $(this).attr("href");
			pageNum=targetPageNum;
			showList(pageNum);
		})
		
		/* reply */
		var bnoValue = '<c:out value="${board.bno}"/>';
		var replyUL = $(".chat");
		
		showList(1);
		
		function showList(page) {	
			replyService.getList({bno:bnoValue, page:page || 1},function(replyCnt,list){
				if(page== -1){
					pageNum= Math.ceil(replyCnt/10.0);
					showList(pageNum);
					return;
				}
				var str="";
				if(list == null || list.length == 0){
					replyUL.html("");
					return;
				}
				for(var i=0, len=list.length||0; i<len; i++){
					str +="<li class='left clearfix list-group-item list-group-item-primary' data-rno='"+list[i].rno+"' style='padding:20px; margin:5px;border-radius:10px;'>";
					str +="   <div>";
					str +="      <div class='header'>";
					str +="        <strong class='primary-font text-primary'>"+list[i].replyer+"</strong>";
					str +="        <small class='float-right text-muted'>"+replyService.displayTime(list[i].replyDate)+"</small>";
					str +="        <p>"+list[i].reply+"</p>";
					str +="      </div>";
					str +="   </div>";
					str +="</li>";
				}
				replyUL.html(str);
				showReplyPage(replyCnt);
			}); //end function
		} //end showList
		//reply 끝
		
		var modal = $(".modal");
		var modalInputReply = modal.find("input[name='reply']");
		var modalInputReplyer = modal.find("input[name='replyer']");
		var modalInputReplyDate = modal.find("input[name='replyDate']");

		var modalModBtn = $("#modalModBtn");
		var modalRemoveBtn = $("#modalRemoveBtn");
		var modalRegisterBtn = $("#modalRegisterBtn");
		
		//댓글 클릭 이벤트 처리
		$(".chat").on("click","li",function(e){
			var rno=$(this).data("rno");
			$("#myModalLabel").html(rno+"번 댓글");
			replyService.get(rno, function(reply){
				modalInputReply.val(reply.reply);
				modalInputReplyer.val(reply.replyer).attr("readonly","readonly");
				modalInputReplyDate.val(replyService.displayTime(reply.replyDate)).attr("readonly","readonly");
				modal.data("rno",reply.rno);
				
				modal.find("button[id!='modalCloseBtn']").hide();
				modalModBtn.show();
				modalRemoveBtn.show();
				$("#myModal").modal("show");
			})
		});
		
		//댓글 수정 버튼 처리
		modalModBtn.on("click",function(e){
			var reply = {rno:modal.data("rno"), reply:modalInputReply.val()};
			
			replyService.update(reply,function(result){
				alert(result);
				modal.modal("hide");
				showList(pageNum);
			});
		});
		
		//댓글 삭제버튼
		modalRemoveBtn.on("click",function(e){
			var rno = modal.data("rno");
			var result = confirm("정말 삭제하시겠습니까?");
			if(result){
				replyService.remove(rno, function(result){
					alert(result);
					modal.modal("hide");
					showList(pageNum);
				});
			}else{
				return;
			}
		});
		
		// 댓글추가 버튼 
		$("#addReplyBtn").on("click", function(e) {
			modal.find("input").val("");
			modalInputReplyDate.closest("div").hide();
			modal.find("button[id !='modalCloseBtn']").hide();
			modalInputReplyer.removeAttr("readonly");
			modalRegisterBtn.show();
			$("#myModal").modal("show");
			
		});
		
		
		
		//Register 버튼 클릭
		modalRegisterBtn.on("click",function(e){
			var reply={
					reply:modalInputReply.val(),
					replyer:modalInputReplyer.val(),
					bno:bnoValue
			};
			replyService.add(reply, function(result){
				alert(result);
				modal.find("input").val("");
				modal.modal("hide");
				showList(1);
			});
		});
		// Close 버튼 
		$("#modalCloseBtn").on("click",function(e){
			modal.modal("hide");
		});
		
		
	/* 삭제 확인 */
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
	
	/* 버튼 클릭 이동 */
	var operForm=$("#operForm");
	$("button[data-oper='modify']").on("click",function(e){
		e.preventDefault();
		operForm.attr("action","/board/modify").submit();
	});
	
	$("button[data-oper='list']").on("click",function(e){
		e.preventDefault();
		operForm.find("#bno").remove();
		operForm.attr("action","/board/list");
		operForm.submit();
	});
	
	
	
});
</script>

