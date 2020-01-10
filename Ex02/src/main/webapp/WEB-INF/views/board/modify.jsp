<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
.uploadResult ul li img{width:100px; display:block; margin: 0 auto;}

.uploadResult ul li span{color:white;}
.bigPictureWrapper {
position : absolute;
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
position: relative;
display:flex;
justify-content: center;
align-items:center;
}		
.bigPicture img{

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
	<form role="form" action="/board/modify" method="post">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h4 class="m-0 font-weight-bold text-primary">Modify</h4>
			</div>
			
			<input type="hidden" name="pageNum"	value="${cri.pageNum}"> 
			<input type="hidden" name="amount" value="${cri.amount}">
			<input type="hidden" name="type" value="${cri.type}">
			<input type="hidden" name="keyword" value="${cri.keyword}">

			<div class="card-body">
				<div class="form-group">
					<label>Bno</label> <input class="form-control" name='bno'readonly value="${board.bno}">
				</div>
				<div class="form-group">
					<label>Title</label> <input class="form-control" name='title'	value="${board.title }">
				</div>
				<div class="form-group">
					<label>Content</label><textarea class="form-control" rows="10" name='content'>${board.content }</textarea>
				</div>
				<div class="form-group">
					<label>Writer</label> <input class="form-control" name='writer'	readonly value="${board.writer }">
				</div>
				<div class="form-group">
					<label>RegDate</label> <input class="form-control" name='regdate' value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate}"/>' readonly>
				</div>
				<div class="form-group">
					<label>Update Date</label> <input class="form-control"	name='updateDate' value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updateDate}"/>' readonly>
				</div>

				<!-- 첨부파일 --------------------------------->
				<div class="row">
					<div class="col-lg-12">
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h4 class="m-0 font-weight-bold text-primary">File Attach</h4>
							</div>
							<div class="card-body">
								<div class="form-group uploadDIV">
									<input type="file" name='uploadFile' multiple="multiple">
								</div>
								<div class="uploadResult">
									<ul></ul>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- 첨부파일 End -------------->

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
		
		//업로드 파일 확장자 필터링
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$"); //정규식
		var maxSize = 5242880 //5mb
		
		function checkExtension(fileName,fileSize){
			if(fileSize>=maxSize){
				alert("파일 사이즈 초과");
				return false;
			}
			if(regex.test(fileName)){
				alert("해당 종류의 파일은 업로드할 수 없습니다");
				return false;
			}
			return true;
		}
		
		
		//업로드 처리
		$("input[type='file']").change(function(e){
			var formData=new FormData()
			var inputFile=$("input[name='uploadFile']");
			var files=inputFile[0].files;
			console.log(files);
			
			//formData에 file추가
			for(var i=0;i<files.length;i++){
				//파일확장자,크기 체크
				if(!checkExtension(files[i].name,files[i].size)){
					return false;
				}
				
				formData.append("uploadFile",files[i]);
			}
			$.ajax({
				url:'/uploadAjaxAction',
				processData:false,
				contentType:false,
				data:formData,
				type:'POST',
				dataType:'json',
				success:function(result){
					console.log(result);
					
					//업로드파일 리스트 출력
					showUploadResult(result);
					
					//input type='file' 초기화
					//$(".uploadDiv").html(cloneObj.html());
				}
			});
		});
		
		//업로드 파일 보여주기 시작 ----------------------------------------------------------------------
		function showUploadResult(uploadResultArr){
			if(!uploadResultArr || uploadResultArr.length ==0){
				return;
			}
			var uploadUL = $(".uploadResult ul");
	        var str="";
	        $(uploadResultArr).each(function(i,obj){
	        	//image type
	           if(obj.image){
	        	   var fileCallPath=encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
	               var originPath = obj.uploadPath+ "\\"+obj.uuid+"_"+obj.fileName;
	               originPath = originPath.replace(new RegExp(/\\/g),"/");
	               
	               str+="<li style='margin-right:10px;' data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-fileName='"+obj.fileName+"' data-type='"+obj.image+"'>";
	               str+="	<div>";
	               str+="		<span>"+obj.fileName+"</span>";
	               str+="		<button style ='cursor:pointer; type='button' type='button' data-file='"+fileCallPath+"' data-type='image' class='btn btn-warning btn-circle btn-sm'>";
	               str+="			<i class='fa fa-times'></i>";
	               str+="		</button><br>";
	               str+="		<img class='center-block' src='/display?fileName="+fileCallPath+"'>";
	               str+="	</div>";
	               str+="</li>";
	           }else{
	        	   var fileCallPath=encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
	        	   var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
	        	   
	        	   str+="<li style='margin-right:10px;' data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-fileName='"+obj.fileName+"' data-type='"+obj.image+"'>";
	               str+="	<div>";
	               str+="		<span>"+obj.fileName+"</span>";
	               str+="		<button style ='cursor:pointer; type='button' type='button' type='button' data-file='"+fileCallPath+"' data-type='file' class='btn btn-warning btn-circle btn-sm'>";
	               str+="			<i class='fa fa-times' style='color:black;'></i>";
	               str+="		</button><br>";
	               str+="		<img class='center-block' src='/resources/img/attach.png'>";
	               str+="	</div>";
	               str+="</li>";
	             
	           }
	        });
	        uploadUL.append(str);
	     }
		//업로드 파일 보여주기 끝 
		
		
		
		// 첨부파일 클릭 이벤트 처리
		$(".uploadResult").on("click","button",function(){
			console.log("delete file");
			if(confirm("Remove this file??")){
				var targetLi = $(this).closest("li");
				targetLi.remove();
			}
			/* var liObj = $(this);
			var path = encodeURIComponent(liObj.data("path")+"/"+liObj.data("uuid")+"_"+liObj.data("filename"));
			if(liObj.data("type")){
				showImage(path.replace(new RegExp(/\\/g),"/"));
			}else{
				//download
				self.location = "/download?fileName="+path;
			} */
		});
		function showImage(fileCallPath){
			console.log(fileCallPath);
			$(".bigPictureWrapper").css("display","flex").css("position","fix").css("top","0px").css("left","0px").show();
			$(".bigPicture").html("<img src='/display?fileName="+fileCallPath+"'>").animate({width:'100%',height:'100%'},1000);
			$(".navbar-nav").hide();
			$("body").css("overflow","hidden");
		};
		
		$(".bigPictureWrapper").on("click",function(e){
			$(".bigPiture").animate({width:'0%',height:'0%'},1000);
			setTimeout(function(){
				$('.bigPictureWrapper').hide();
				$(".navbar-nav").show();
				$("body").css("overflow","auto");
			},1000);
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
		               
		               	str+="<li style='margin-right:10px;' data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-fileName='"+attach.fileName+"' data-type='"+attach.fileType+"'>";
		               	str+="	<div>";
		               	str+="		<span>"+attach.fileName+"</span>";
		               	str+="		<button style ='cursor:pointer;' type='button' type='button' data-file='"+fileCallPath+"' data-type='image' class='btn btn-warning btn-circle btn-sm'>";
		               	str+="			<i class='fa fa-times'></i>";
		               	str+="		</button><br>";
		               	str+="		<img class='center-block' src='/display?fileName="+fileCallPath+"'>";
		               	str+="	</div>";
		               	str+="</li>";
		           }else{
		        	   	var fileCallPath=encodeURIComponent(attach.uploadPath+"/"+attach.uuid+"_"+attach.fileName);
		        	   	var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
			        	   
		        	   	str+="<li style='margin-right:10px;' data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-fileName='"+attach.fileName+"' data-type='"+attach.fileType+"'>";
		               	str+="	<div>";
		               	str+="		<span>"+attach.fileName+"</span>";
		               	str+="		<button style ='cursor:pointer;' type='button' type='button' type='button' data-file='"+fileCallPath+"' data-type='file' class='btn btn-warning btn-circle btn-sm'>";
		               	str+="			<i class='fa fa-times' style='color:black;'></i>";
		               	str+="		</button><br>";
		               	str+="		<img class='center-block' src='/resources/img/attach.png'>";
		               	str+="	</div>";
						str+="</li>";
		           }
				});
				$(".uploadResult ul").html(str);
				
			}); // End getJSON
		})(); // End function
		
		
		var formObj = $("form");
		$('button').on("click",function(e){
			e.preventDefault();
			var operation=$(this).data("oper");
			if(operation==='remove'){
				var result = confirm("정말 삭제하시겠습니까?");
				if(result){
					formObj.attr("action","/board/remove");
					formObj.submit();
				}else{
				    return;
				}
				
			}else if(operation === 'list'){
				//리스트로 이동
				formObj.attr("action","/board/list").attr("method","get");
				
				var pageNumTag=$("input[name='pageNum']").clone();
				var amountTag=$("input[name='amount']").clone();
				var typeTag=$("input[name='type']").clone();
				var keywordTag=$("input[name='keyword']").clone();
				
				formObj.empty();
				
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				formObj.append(typeTag);
				formObj.append(keywordTag);
				return;
			}else if(operation === 'modify'){
				var str = "";
				$(".uploadResult ul li").each(function(i,obj){
					var jobj = $(obj);
					console.dir(jobj);
					str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
					str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
					str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
					str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+jobj.data("type")+"'>";
				});
				formObj.append(str).submit();
				return;
			}
			//formObj.submit();
		});
		
		
	});
</script>
