console.log("Reply Module ........");
var pwdCheck = (function(){
	function check(vo, callback, error){
		console.log("pwd check .........");
		$.ajax({
			type:"post",
			url:"/board/pwdCheck",
			data:JSON.stringify(vo),
			contentType:"application/json; charset=utf-8",
			success:function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		})
	}
	return {check : check};
})();

