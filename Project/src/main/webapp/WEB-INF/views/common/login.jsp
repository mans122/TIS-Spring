<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../includes/header.jsp" %>
    
<script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>
<style>
/*[ RESTYLE TAG ]*/
* {	margin: 0px;	padding: 0px;	box-sizing: border-box;}
/*---------------------------------------------*/

a {	font-size: 14px;line-height: 1.7;color: #666666;margin: 0px;transition: all 0.4s;}
a:focus {	outline: none !important;}
a:hover {	text-decoration: none;  color: #403866;}
/*---------------------------------------------*/

h1,h2,h3,h4,h5,h6 {	margin: 0px;}
p {	font-size: 14px;	line-height: 1.7;	color: #666666;	margin: 0px;}
ul, li {	margin: 0px;	list-style-type: none;}

/*---------------------------------------------*/
input {	outline: none;	border: none;}
textarea {  outline: none; border: none;}
textarea:focus, input:focus {  border-color: transparent !important;}
label {  display: block;  margin: 0;}
/*---------------------------------------------*/

button {	outline: none !important;	border: none;	background: transparent;}
button:hover {	cursor: pointer;}
iframe {	border: none !important;}

/*[ Utility ]*/
.txt1 {  font-size: 16px;  color: #827ffe;  line-height: 1.4;}

/*[ login ]*/

.limiter {  width: 100%;  margin: 0 auto;}
.container-login100 {  width: 100%;   min-height: 100vh;  display: flex;  flex-wrap: wrap;  justify-content: center;  align-items: center;  padding: 15px;    background-position: center;  background-size: cover;  background-repeat: no-repeat;;}
.wrap-login100 {  width: 390px;  background: #fff;  border-radius: 10px;  position: relative;  padding-top: 50px;  padding-bottom: 90px;}
/*[ Form ]*/

.login100-form {  width: 100%;}
.login100-form-title {  font-size: 30px;  color: #403866;  line-height: 1.2;  text-transform: uppercase;  text-align: center;  width: 100%;  display: block;  padding-bottom: 51px;}
/*[ Input ]*/

.wrap-input100 {  width: 100%;  position: relative;  background-color: #e6e6e6;  border: 1px solid transparent;  border-radius: 3px;  margin-bottom: 16px;}
/*---------------------------------------------*/
.input100 {  color: #403866;  line-height: 1.2;  font-size: 18px;  display: block;  width: 100%;  background: transparent;  height: 62px;  padding: 0 20px 0 38px;}
/*[ Focus Input ]*/

.focus-input100 {  position: absolute;  display: block;  width: calc(100% + 2px);  height: calc(100% + 2px);  top: -1px;  left: -1px;  pointer-events: none;  border: 1px solid #827ffe;  border-radius: 3px;  visibility: hidden;  opacity: 0;  transition: all 0.4s;  transform: scaleX(1.1) scaleY(1.3);}
.input100:focus + .focus-input100 {  visibility: visible;  opacity: 1;  transform: scale(1);}
.eff-focus-selection {  visibility: visible;  opacity: 1;  transform: scale(1);}
/*[ Restyle Checkbox ]*/

.input-checkbox100 {  display: none;}
.label-checkbox100 {  font-size: 16px;  color: #999999;  line-height: 1.2;  display: block;  position: relative;  padding-left: 26px;  cursor: pointer;}
.label-checkbox100::before {
  content: "\f00c";
  font-family: FontAwesome;
  font-size: 13px;
  color: transparent;

  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  width: 18px;
  height: 18px;
  border-radius: 3px;
  background: #fff;
  border: 2px solid #827ffe;
  left: 0;
  top: 50%;
  transform: translateY(-50%);
}
.input-checkbox100:checked + .label-checkbox100::before {  color: #827ffe;}
/*[ Button ]*/

.container-login100-form-btn {  width: 100%;  display: flex;  flex-wrap: wrap;  margin-top: 17px;}
.login100-form-btn {  
  font-size: 20px;
  color: #fff;
  line-height: 1.2;
  text-transform: uppercase;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;
  width: 100%;
  height: 62px;
  background-color: #827ffe;
  border-radius: 3px;

  transition: all 0.4s;
}

.login100-form-btn:hover {  background-color: #403866;}
/*[ Alert validate ]*/

.validate-input {  position: relative;}
.alert-validate::before {
  content: attr(data-validate);
  position: absolute;
  max-width: 70%;
  background-color: #fff;
  border: 1px solid #c80000;
  border-radius: 3px;
  padding: 4px 25px 5px 10px;
  top: 50%;
  transform: translateY(-50%);
  right: 12px;
  pointer-events: none;
  
  color: #c80000;
  font-size: 14px;
  line-height: 1.4;
  text-align: left;

  visibility: hidden;
  opacity: 0;

  transition: opacity 0.4s;
}

.alert-validate::after {
  content: "\f12a";
  font-family: FontAwesome;
  display: block;
  position: absolute;
  color: #c80000;
  font-size: 18px;
  top: 50%;

  transform: translateY(-50%);
  right: 18px;
}

.alert-validate:hover:before {  visibility: visible;  opacity: 1;}
@media (max-width: 992px) {  .alert-validate::before {    visibility: visible;    opacity: 1;  }}
.flex-sb {	display: flex;	justify-content: space-between;}
.flex-sb-m {	display: flex;	justify-content: space-between;	align-items: center;	padding-top: 3px;	padding-bottom: 24px;	width: 100%}
.mt{ margin-top: 10px;}
.flex-w {	display: flex;	flex-wrap: wrap;}
.social-btn img {  line-height: 1.2;  display: flex;  justify-content: center;  align-items: center;  height: 65px;  margin-top: 10px;}
/*[ Responsive ]*/
</style>

	
	<main class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title">
						로그인
					</span>

					
					<div class="wrap-input100 validate-input" data-validate = "아이디를 입력하세요.">
						<input class="input100" type="text" name="username" placeholder="아이디">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate = "비밀번호를 입력하세요.">
						<input class="input100" type="password" name="pass" placeholder="비밀번호">
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								아이디 저장
							</label>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							로그인 
						</button>			
						<button class="social-btn" >
							<img style="width:100%;" alt="naverlogin" src="/resources/images/loginImage/naver.png">
						</button>			
						<button id="kakao-login-btn" class="social-btn">
							<img alt="kakaoLogin" src="/resources/images/loginImage/kakao.png">
						</button>																	
					</div> 
				
					<div class="flex-sb-m mt">
						<div>
							<a href="#" class="txt1">
								아이디·비밀번호 찾기
							</a>
						</div>
						<div>
							<a href="#" class="txt1">
								회원가입
							</a>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	</main>
	

	<div id="dropDownSelect1"></div>
	
<%@include file="../includes/footer.jsp" %>


<script>

(function ($) {
    "use strict";


    /*[ Validate ]*/
    var input = $('.validate-input .input100');

    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (input) {
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
  /* -- 카카오계정 로그인 시작 -------------------- */
  //<![CDATA[
  // 사용할 앱의 JavaScript 키를 설정해 주세요.
  Kakao.init('YOUR APP KEY');
  // 카카오 로그인 버튼을 생성합니다.
  Kakao.Auth.createLoginButton({
    container: '#kakao-login-btn',
    success: function(authObj) {
      alert(JSON.stringify(authObj));
    },
    fail: function(err) {
       alert(JSON.stringify(err));
    }
  });
  //]]>
  /* -- 카카오계정 로그인 끝 ------------ */    


})(jQuery);
</script>