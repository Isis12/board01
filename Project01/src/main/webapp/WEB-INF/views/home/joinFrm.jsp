<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>JOIN US</title>
  <!-- Favicons -->
  <link href="/baord/assets/img/favicon.png" rel="icon">
  <link href="/board/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
   <!-- Vendor CSS Files -->
  <link href="/board/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/board/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="/board/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/board/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/board/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="/board/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="/board/assets/css/style2.css" rel="stylesheet">
</head>

<%-- <%@ include file="/WEB-INF/views/include/header.jsp" %> --%>

<style type="text/css">
#header{
	color: #fff;
	box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1); 
	padding: 12px 0;
}
button {
    font-size: 13px;
    line-height: 1.5;
    -webkit-font-smoothing: antialiased;
}  
.inner_join{
	position: absolute;
    left: 50%;
    top: 315px;
    margin: -145px 0 0 -160px;
	
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center; 
}
.screen_out{
    position: absolute;
    width: 0;
    height: 0;
    overflow: hidden;
    line-height: 0;
    text-indent: -9999px;    
}
.inp_text{
	margin-top: 15px;
	font: 400 13.3333px Arial;
}
.box_join{
	margin-bottom: 20px;
}
/* h1{
	font-size: 25px;
	padding-bottom: 8px;
} */
label{
	flex: 1;
	font-family: Sans-Serif;
	font-weight: 800;
}
input{
	padding:  10px;
	margin-top: 8px;
	width: 300px;
}
fieldset, img {
	border: 0;
}
#cancel{
	text-decoration: none;
	color: black;
}
#cancel_btn, #submit_btn{
	background-color: #EFF1F0;
	border: none;
	padding: 15px 32px;
	text-align: center;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	margin-left: 16px;
}
</style>

<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="/board/">Tempo</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="/board/">HOME</a></li>
          <li><a href="/board/home/login">LOGIN</a></li>
          <li class="active"><a href="/board/home/joinFrm">JOIN US</a></li>
          <li><a href="./boardlist">Q&A</a></li>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->

  <!-- Vendor JS Files -->
  <script src="/board/assets/vendor/jquery/jquery.min.js"></script>
  <script src="/board/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/board/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="/board/assets/vendor/php-email-form/validate.js"></script>
  <script src="/board/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/board/assets/vendor/venobox/venobox.min.js"></script>
  <script src="/board/assets/vendor/owl.carousel/owl.carousel.min.js"></script>

  <!-- Template Main JS File -->
  <script src="/board/assets/js/main.js"></script>
  
<div class="inner_join">
<div class="join_tistory">
<form action="join" method="post" id="joinFrm">
	<fieldset>
		<legend class="screen_out">회원가입 정보 입력폼</legend>
		<div class="box_join">
			<!-- <h1>Welcome to Join Example</h1> -->
			<div class="inp_text">
				<label for="joinId">아이디</label><br>
				<input type="text" id="joinId" name="m_id" placeholder="ID" required>
				<div class="check_font" id="dupleID"></div>
			</div>
			
			<div class="inp_text">
				<label for="joinPw">비밀번호</label><br>
				<input type="password" class="pwJoin" id="joinPw" name="m_pw" oninput="pwCheck(joinPw.value)" placeholder="PASSWORD" required>
				<p id="pwCheckF" style="color: #FF6600; margin: 0;"></p>
			</div>
			
			<div class="inp_text">
				<label for="joinPw2">비밀번호 확인</label><br>
				<input type="password" class="pwJoin" id="joinRPw" name="m_rpw" placeholder="Confirm Password" required>
				<p id="pwCheckFF" style="color: #FF6600; margin: 0;"></p>
			</div>
			
			<div class="inp_text">
				<label for="joinName">이름</label><br>
				<input type="text" id="joinName" name="m_name" placeholder="Name" required>
			</div>
			
			<div class="inp_text">
				<label for="joinBirth">생년월일</label><br>
				<input type="text" id="joinBirth" name="m_birth" placeholder="ex)19990415" required>
			</div>
			
			<div class="inp_text">
				<label for="joinPhone">휴대전화('-'없이 번호만 입력해주세요.)</label><br>
				<input type="text" id="joinPhone" name="m_phone" placeholder="Phone Numebr" required>
			</div>
		</div>
		<div>
			<button id="cancel_btn" type="button"><a href="/board/home/" id="cancel">취소하기</a></button>
			<button id="submit_btn">가입하기</button>
		</div>
	</fieldset>
</form>
</div>
</div>
</body>
<script type="text/javascript">

	$('#cancel_btn').hover(function(){
		$(this).css("border", "1px solid black");
	},function(){
		$(this).css("border", "none");
	});

	$('#submit_btn').hover(function(){
		$(this).css("border", "1px solid black");
	},function(){
		$(this).css("border", "none");
	});
	
	//공백처리
	$('#submit_btn').click(function(){
		var id = document.getElementById("joinId");
		var pw = document.getElementById("joinPw");
		var Rpw = document.getElementById("joinRPw");
		var name = document.getElementById("joinName");
		var birth = document.getElementById("joinBirth");
		var phone = document.getElementById("joinPhone");
		
		if(id.value=="" || id.value==null){
			alert("아이디를 입력해주세요");
			id.focus();
			return false;
		}else if(pw.value=="" || id.value==null){
			alert("비밀번호를 입력해주세요.");
			pw.focus();
			return false;
		}else if(Rpw.value=="" || Rpw.value==null){
			alert("비밀번호를 다시 한번 확인해주세요.");
			Rpw.focus();
			return false;
		}else if(name.value=="" || name.value==null){
			alert("성명을 입력해주세요.");
			name.focus();
			return false;
		}else if(birth.value=="" || birth.value==null){
			alert("생년월일을 입력해주세요.");
			birth.focus();
			return false;
		}else if(phone.value=="" || phone.value==null){
			alert("전화번호를 입력해주세요.");
			phone.focus();
			return false;
		}
	});
	
	//비밀번호 유효성검사
	$(document).ready(function(){
		$("#joinPw").keyup(function(){
			$("#pwCheckFF").text("");
		});
		
		$("#joinRPw").keyup(function(){
			if($("#joinPw").val()!=$("#joinRPw").val()){
				$("#pwCheckFF").text("");
				$("#pwCheckFF").html("<font color='#DD2743'>패스워드가 불일치합니다.</font>");
			}else{
				$("#pwCheckFF").text("");
				$("#pwCheckFF").html("<font color='#DD2743'>패스워드가 일치합니다.</font>");
			}
		});
	});
	
	function pwCheck(joinPw){
		$.ajax({
			type: 'post',
			url: '/board/home/pwCheck',
			data: {joinPw:joinPw},
			success: function(result){
				if(result==true){
					pwChekcF.innerHTML="유효성 체크 문제 없음";
				}else{
					pwCheckF.innerHTML="유효성 체크 범위 벗어남";
				}
			},
			error: function(request, status){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
	
	//아이디 유효성검사
	$("#joinId").blur(function(){
		var joinId =$("#joinId").val();
		var idJ = /^[a-z0-9]{4,12}$/;
		
		console.log(joinId);
		$.ajax({
			type: 'get',
			//contentType:'application / x - www - form - urlencoded',
			url: '/board/home/dupleID',
			data:{m_id:joinId},
			dataType: 'text',
			success: function(data){
			console.log("1=중복, 0=중복x"+data);
				
				if(data==1){
					//1: 아이디 중복
					$("#dupleID").text("사용중인 아이디입니다.");
					$("#dupleID").css("color", "#DD2743");
					$("#submit_btn").attr("disabled", true);
				}else{	
					if(idJ.test(joinId)){
						//0: 아이디 길이 / 문자열 검사
						$("#dupleID").text("");
						$("#submit_btn").attr("disabled", false);
					}else if(joinId == ""){
						$("#dupleID").text("아이디를 입력해주세요.");
						$("#dupleID").css("color", "#DD2743");
						$("#sumit_btn").attr("disabled", true);
					}else{
						$("#dupleID").text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
						$("#dupleID").css("color", "#DD2743");
						$("#submit_btn").attr("disabled", true);
					}
				}
			},error: function(){
				console.log("실패");
			}
		});	
	});

	
	
</script>
</html>