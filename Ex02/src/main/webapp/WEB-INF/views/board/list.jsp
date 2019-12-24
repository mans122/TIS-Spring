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
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
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

      </div>
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
			$("#myModal").modal("show");
		}
	});
</script>
