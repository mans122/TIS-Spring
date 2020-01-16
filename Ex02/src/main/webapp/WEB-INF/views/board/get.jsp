<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="../includes/header.jsp"%>

<style>
.uploadResult{ 	width:100%;
				background-color: gray;}
.uploadResult ul{	display : flex;
					flex-flow : row;
					justify-content: center;
					align-items: center;}
.uploadResult ul li{
					list-style: none;
					padding:10px;}
.uploadResult ul li img{width:100px;}

.uploadResult ul li span{color:white;}
.bigPictureWrapper {
position : fixed;
display:none;
justify-content:center;
align-items: center;
top: 0%;
width: 100%;
height: 100%;
z-index: 100;
background:rgba(0,0,0,0.8);
}
.bigPicture{
display:flex;
justify-content: center;
align-items:center;
}		
.bigPicture img{
margin: 0 auto;
width:1000px;
}
</style>

<div class='bigPictureWrapper'>
	<div class='bigPicture'></div>
</div>
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
				<input type="hidden" name="bno" value="${board.bno}"> 
				<input type="hidden" name="pageNum"	value='<c:out value="${cri.pageNum}"/>'> 
				<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
				<input type="hidden" name="type"	value='<c:out value="${cri.type}"/>'> 
				<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}"/>'>
				<input type="hidden" name="writer" value='<c:out value="${board.writer}"/>'>


				<!-- 첨부 파일 ------------------------------------------------------>
				<div class="row">
					<div class="col-lg-12">
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h5 class="m-0 font-weight-bold text-primary">File Attach</h5>
							</div>
							<div class="card-body">
								<div class="form-group uploadDiv"></div>
								<div class="uploadResult">
									<ul>
									</ul>
								</div>
								<!-- <div class='bigPictureWrapper'>
									<div class='bigPicture'></div>
								</div> -->
							</div>
							<!-- End card body  -->
						</div>
						<!-- End card -->
					</div>
					<!-- End col-lg-12 -->
				</div>
				<!-- End board attach -->

				<sec:authentication property="principal" var="pinfo"/>
					<sec:authorize access="isAuthenticated()">
						<c:if test="${pinfo.username eq board.writer }">
							<button data-oper='modify' class="btn btn-outline-primary btn-sm">Modify</button>
							<button data-oper='remove' class="btn btn-outline-danger btn-sm" id="remove">Remove</button>
						</c:if>
					</sec:authorize>
					
				<button data-oper='list' class="btn btn-outline-primary btn-sm">List</button>
			</form>
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
		<sec:authorize access="isAuthenticated()">
			<button id="addReplyBtn" class="btn btn-primary btn-sm float-right">New	Reply</button>
		</sec:authorize>
	</div>
	<div class="card-body">
		<ul class="chat list-group">

		</ul>
	</div>
	<div class="card-footer">
	</div>
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
					<label>Reply</label> <input class="form-control" name='reply'>
				</div>

				<div class="form-group">
					<label>Replyer</label> <input class="form-control" name='replyer'
						 readonly='readonly'>
				</div>

				<div class="form-group">
					<label>Reply Date</label> <input class="form-control"
						name='replyDate' value=''>
				</div>
			</div>
			<!-- modal body -->

			<!-- modal footer -->
			<div class="modal-footer">
					
				<button id='modalModBtn' type="button"	class="btn btn-warning btn-sm">Modify</button>
				<button id='modalRemoveBtn' type="button" class="btn btn-danger btn-sm">Remove</button>
				<button id='modalRegisterBtn' type="button"	class="btn btn-primary btn-sm">Register</button>
				<button id='modalCloseBtn' type="button" class="btn btn-default btn-sm">Close</button>
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

		// 첨부파일 클릭 이벤트 처리
		$(".uploadResult").on("click","li",function(){
			console.log("view image");
			var liObj = $(this);
			var path = encodeURIComponent(liObj.data("path")+"/"+liObj.data("uuid")+"_"+liObj.data("filename"));
			if(liObj.data("type")){
				showImage(path.replace(new RegExp(/\\/g),"/"));
			}else{
				//download
				self.location = "/download?fileName="+path;
			}
		});
		function showImage(fileCallPath){
			console.log(fileCallPath);
			$(".bigPictureWrapper").css("display","flex").css("position","fix").css("top","0px").css("left","0px").show();
			$(".bigPicture").html("<img src='/display?fileName="+fileCallPath+"'>").animate({width:'100%',height:'100%'},1000);
			$(".navbar-nav").hide();
			$("body").css("overflow","hidden");
			//$(".container-fluid").hide();
		};
		
		$(".bigPictureWrapper").on("click",function(e){
			$(".bigPiture").animate({width:'0%',height:'0%'},1000);
			setTimeout(function(){
				$('.bigPictureWrapper').hide();
				$(".navbar-nav").show();
				$("body").css("overflow","auto");
				//$(".container-fluid").show();
			},100);
		});
		// 첨부파일 클릭 이벤트 끝
		
		// 첨부파일 목록 
		(function(){
			var bno = '<c:out value="${board.bno}"/>';
			$.getJSON("/board/getAttachList",{bno:bno},function(arr){
				console.log(arr);
				var str = "";
				$(arr).each(function(i,attach){
					// Image type
					if(attach.fileType){
						var fileCallPath=encodeURIComponent(attach.uploadPath+"/s_"+attach.uuid+"_"+attach.fileName);
		               	//var originPath = attach.uploadPath+ "\\"+attach.uuid+"_"+attach.fileName;
		               	//originPath = originPath.replace(new RegExp(/\\/g),"/");
		               
		               	str+="<li style='cursor:pointer; margin-right:10px;' data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-fileName='"+attach.fileName+"' data-type='"+attach.fileType+"'>";
		               	str+="	<div>";
		               	str+="		<span>"+attach.fileName+"</span><br>";
		               	//str+="		<button type='button' type='button' data-file='"+fileCallPath+"' data-type='image' class='btn btn-warning btn-circle btn-sm'>";
		               	//str+="			<i class='fa fa-times'></i>";
		               	//str+="		</button><br>";
		               	str+="		<img src='/display?fileName="+fileCallPath+"'>";
		               	str+="	</div>";
		               	str+="</li>";
		           }else{
		        	   	var fileCallPath=encodeURIComponent(attach.uploadPath+"/"+attach.uuid+"_"+attach.fileName);
		        	   	var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
			        	   
		        	   	str+="<li style='cursor:pointer; margin-right:10px;' data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-fileName='"+attach.fileName+"' data-type='"+attach.fileType+"'>";
		               	str+="	<div>";
		               	str+="		<span>"+attach.fileName+"</span><br>";
		               	//str+="		<button type='button' type='button' type='button' data-file='"+fileCallPath+"' data-type='file' class='btn btn-warning btn-circle btn-sm'>";
		               	//str+="			<i class='fa fa-times' style='color:black;'></i>";
		               	//str+="		</button><br>";
		               	str+="		<img src='/resources/img/attach.png'>";
		               	str+="	</div>";
						str+="</li>";
		           }
				});
				$(".uploadResult ul").html(str);
				
			}); // End getJSON
		})(); // End function
		
		
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
				str +="<ul>";
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
		

		var modal = $(".modal");
		var modalInputReply = modal.find("input[name='reply']");
		var modalInputReplyer = modal.find("input[name='replyer']");
		var modalInputReplyDate = modal.find("input[name='replyDate']");
		
		var modalModbtn = $("#modalModBtn");
		var modalRemoveBtn = $("#modalRemoveBtn");
		var modalRegisterBtn = $("#modalRegisterBtn");
		
		var replyer = null;
		<sec:authorize access="isAuthenticated()">
			replyer = '<sec:authentication property="principal.username"/>';
		</sec:authorize>
		
		var csrfHeaderName="${_csrf.headerName}";
		var csrfTokenValue="${_csrf.token}";
		
		//Ajax Spring security header
		$(document).ajaxSend(function(e, xhr, options){
			xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		});
		
		// 댓글추가 버튼 
		$("#addReplyBtn").on("click", function(e) {
			modal.find("input").val("");
			modal.find("input[name='replyer']").val(replyer);
			modal.find("button[id !='modalCloseBtn']").hide();
			modalInputReplyDate.closest("div").hide();
			//modalInputReplyer.removeAttr("readonly");
			modalRegisterBtn.show();
			$("#myModal").modal("show");
		});
		
		//댓글 수정 버튼 처리
		modalModBtn.on("click",function(e){
			var originalReplyer = modalInputReplyer.val();
			var reply = {rno:modal.data("rno"), reply:modalInputReply.val(),replyer:originalReplyer};
			if(!replyer){
				alert("로그인 후 수정 가능합니다.");
				modal.modal("hide");
				return;
			}
			if(replyer != originalReplyer){
				alert("자신이 작성한 댓글만 수정 가능합니다.");
				modal.modal("hide");
				return;
			}
			
			replyService.update(reply,function(result){
				alert(result);
				modal.modal("hide");
				showList(pageNum);
			});
		});
		
		//댓글 삭제버튼
		modalRemoveBtn.on("click",function(e){
			var rno = modal.data("rno");
			
			if(!replyer){
				alert("로그인 후 삭제 가능합니다.");
				modal.modal("hide");
				return;
			}
			var originalReplyer = modalInputReplyer.val();
			if(replyer != originalReplyer){
				alert("자신이 작성한 댓글만 삭제가 가능합니다.");
				modal.modal("hide");
				return;
			}
			
			var result = confirm("정말 삭제하시겠습니까?");
			if(result){
				replyService.remove(rno, originalReplyer, function(result){
					alert(result);
					modal.modal("hide");
					showList(pageNum);
				});
			}else{
				return;
			}
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
		
		
	/* 게시글 삭제 확인 */
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

