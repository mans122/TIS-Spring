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
              <h4 class="m-0 font-weight-bold text-primary">List <a href="/board/register" type="button" class="btn btn-primary btn-sm float-right">Write</a></h4>
              
            </div>
           
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <tr>
                      <th>번호</th>
                      <th>제목</th>
                      <th>작성자</th>
                      <th>작성일</th>
                      <th>수정일</th>
                    </tr>
                  
                  <!-- 테이블 내용 시작  ---------------------------------------------------->
                  
                  <c:forEach items="${list}" var="board">
                  	<tr>
                  		<td>
                  			<a href='/board/get?bno=<c:out value="${board.bno}"/>'>
                  				<c:out value="${board.bno}"/>
                  			</a>
                  		</td>
                  		
                  		<td>
                  			<a href='/board/get?bno=<c:out value="${board.bno}"/>'>
                  				<c:out value="${board.title}"/>
                  			</a>
                  		</td>
                  		<td><c:out value="${board.writer}"/></td>
                  		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                  		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
                  	</tr>
                  </c:forEach>
                </table>
                <!-- 테이블 내용 끝 -->
                
                <!-- Paging -------------------------------------------------->
				<form id="actionForm" action="/board/list" method="get">
					<input type="hidden" name="pageNum"	value='${pageMaker.cri.pageNum}'> 
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<input type="hidden" name="type" value='<c:out value="${pageMaker.cri.type}"/>'>
					<input type="hidden" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>'>
				
					<div class="float-right">
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li class="page-item previous"><a class="page-link" href="${pageMaker.startPage-1 }">Previous</a></li>
							</c:if>

							<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
								<li	class="page-item ${pageMaker.cri.pageNum == num ? 'active':''} ">
									<a class="page-link" href="${num}">${num}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next}">
								<li class="page-item next"><a class="page-link"	href="${pageMaker.endPage+1 }">Next</a></li>
							</c:if>
						</ul>
					</div>
				</form>
				<!-- Paging -->
				
                <!-- 검색  ------------------------------------------------------------------------------>
                <div class='row' style='clear:right;width:500px; margin:auto'>
                	<div class="col-lg-12">
                		<form id='searchForm' action="/board/list" method='get'>
                			<select name='type'>
                				<option value="" <c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
                				<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
                				<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
                				<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
                				<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목과 내용</option>
                				<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목과 작성자</option>
                			</select>
                			<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>'/>
                			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}" />
                			<input type="hidden" name="amount" value="${pageMaker.cri.amount}" />
                			<button class='btn btn-primary btn-sm'>Search</button>
                		</form>
                	</div>
                </div>
                <!-- 검색 끝 -->
                
				<!-- Modal 시작  --------------------------------------------------------------->
					<div class="modal" id="myModal">
					  <div class="modal-dialog">
					    <div class="modal-content">
					
					      <!-- Modal Header -->
					      <div class="modal-header">
					        <h4 class="modal-title">알림</h4>
					        <button type="button" class="close" data-dismiss="modal">&times;</button>
					      </div>
					      <!-- Modal body -->
					      <div class="modal-body">처리가 완료되었습니다.</div>
					      <!-- Modal footer -->
					      <div class="modal-footer">
					        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					      </div>
					
					    </div>
					  </div>
					</div>
                <!-- Modal 끝 -->
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

     
      <!-- End of Main Content -->
      
      
<%@include file="../includes/footer.jsp" %>
<script>
	$(document).ready(function(){
		 var width = $(document).width();
	      if(width<768){
	        $("#page-top").addClass("sidebar-toggled");
	        $("#accordionSidebar").addClass("toggled");
	      }
	      var result = '<c:out value="${result}"/>';
		checkModal(result);
		
		function checkModal(result){
			if(result===''){
				return;
			}
			if(parseInt(result)>0){
				$(".modal-body").html("게시글 "+parseInt(result)+" 번이 등록되었습니다.");
			}
			if(result=="modify"){
				$(".modal-body").html("수정이 완료되었습니다.");
			}
			if(result=="remove"){
				$(".modal-body").html("삭제가 완료되었습니다.");
			}
			if(result=="failpwd"){
				$(".modal-body").html("비밀번호가 틀렸습니다.");
			}
			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click",function(){
			self.location="/board/register";
		});
		
		var actionForm = $("#actionForm");
		
		$(".page-link").on("click",function(e){
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click",function(e){
			e.preventDefault();
			if(!searchForm.find("option:selected").val()){
				alert("검색 종류를 선택하세요.");
				return false;
			}
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요");
				searchForm.find("input[name='keyword']").focus();
				return false;
			}
			searchForm.find("input[name='pageNum']").val("1");
			searchForm.submit();
		});
	});
</script>
