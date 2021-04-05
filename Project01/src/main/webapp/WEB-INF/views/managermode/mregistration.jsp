<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>fSelect Test</title>
<link href="/board/css/fSelect.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/board/js/fSelect.js"></script>

<!-- Favicons -->
<link href="/board/assets/img/favicon.png" rel="icon">
<link href="/board/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- 글꼴  -->
<link href="http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css" rel="stylesheet"> <!-- Nanum Gothic Coding', monospace -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet"> <!-- Nanum Gothic", sans-serif -->
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
</head>
<style>
* {
  margin: 0px;
  padding: 0px;
}

body{
  background-color: #f8f9fc;
}

#header{
  height: 60px;
  transition: all 0.5s;
  z-index: 997;
  padding: 1rem;
  background: #fff!important;
  box-shadow: 0px 2px 15px rgb(0 0 0 / 10%);
  display: flex;
  justify-content: space-between;
  align-items: center;
}

#logo{
  color: #493c3e;
  font-family: "Nunito", sans-serif;
  font-size: 32px;
  line-height: 1;
  font-weight: 600;
  letter-spacing: 1px;
  text-transform: uppercase;
  padding: 40px;
}

#aloft{
  float: left;
  margin: 0 0 10% 17%;
  position: relative; 
}

#main-title{
  font-family: Apple Color Emoji;
  color: #5a5c69!important;
  font-size: 30px;
  font-weight: 400;
  margin: 44px 0px 31px 18px;
}

#firstbox{
  float: left;
  display: inline-block;
  margin: 1px -38px 0 1px;
}

.division{
  float: left;
  display: inline-block;
  font-size: 16px;
  margin: 6px 33px 0 25px;
  padding-right: 10px;
  padding-left: 10px;
}

.division2{
  float: left;
  display: inline-block;
  font-size: 16px;
  margin: 7px 13px 0 71px;
  padding-right: 10px;
}

.division3{
  float: left;
  display: inline-block;
  font-size: 16px;
  margin: 7px 31px 0 30px;
  padding-right: 10px;
}

.division4{
  float: left;
  display: inline-block;
  font-size: 16px;
  margin: 5px 40px 0 19px;
  padding-right: 10px;
}

.subheading_text{
  height: 32px;
  width: 493px;
  margin-left: -2px;
  padding-left: 10px;
  font-size: 16px;
  border: 1px solid #ddd;
}

.text_item{
  height: 34px;
  width: 196px;
  padding-right: 10px;
  margin: 0 -15px 0 -31px;
  font-size: 16px;
  text-align: center;
  border: 1px solid #ddd;
}

.text_item2{
  height: 32px;
  width: 493px;
  font-size: 16px;
  padding-left: 10px;
  margin: 0 0 0 -17px;
  border: 1px solid #ddd;
}

.text_item3{
	height: 32px;
	width: 493px;
	font-size: 16px;
	padding-left: 10px;
	margin: 0 0 0 -1px;
	border: 1px solid #ddd;
}
.text_item4{
	height: 32px;
	width: 493px;
	font-size: 16px;
	padding-left: 10px;
	margin: 0 0 0 -29px;
	border: 1px solid #ddd;
}

#textarea{
  border: 1px solid #ddd;
  resize: none;
  padding: 9px 13px 0 12px;
  font-size: 16px;
  font-family: sans-serif;
}

#fileUp{
  margin-bottom: 80px;
}

.btn{
  width: 120px;
  height: 40px;
  color: #fff;
  background-color: #6187C8;
  font-size: 16px;
  border: none;
  border-radius: 20px;
  transition:0.3s;
  position: absolute;
  left:41%;
  top:98%;
  transform: translate(-50%,-50%);
}

#close-btn{
  width: 120px;
  height: 40px;
  color: #fff;
  background-color: #6187C8;
  font-size: 16px;
  border: none;
  border-radius: 20px;
  transition:0.3s;
  position: absolute;
  left:64%;
  top:98%;
  transform: translate(-50%,-50%);
}

button:focus {
	outline:0;
}
button:hover{
	background: #6187C8;
	cursor: pointer;
	box-shadow: 0 2px 4px rgb(0 79 255 / 35%);
}

#btn-all{
  margin-left: 15px;
}
</style>
<script type="text/javascript">
	
</script>
<body>
${msg}
<form id="fileForm" action="/board/rest/managermode/movieregistration" method="post" enctype="multipart/form-data">
	<div id="header">
		<h1 id="logo">TEMPO</h1>
	</div>
	<div id="aloft">
		<h1 id="main-title">영화 등록</h1>
		
		<!-- 제목 -->
		<div class="subheading">
			<p class="division">제목</p>
			<input type="text" name="mo_title" id="title" class="subheading_text">
		</div><br>
		
		<!-- 원제 -->
		<div class="subheading">
			<p class="division">원제</p>
			<input type="text" name="mo_orititle" id="orig-title" class="subheading_text">
		</div><br>
		
		<!-- 감독 -->
		<div>
			<p class="division">감독</p>
			<input type="text" name="mo_director" id="director" class="subheading_text">
		</div><br>
		
		<!-- 출연자 -->
		<div>
			<p class="division">출연자</p>
			<input type="text" name="mo_perfomer" id="perfomer" class="text_item2">
		</div><br>
		
		<!-- 배역  -->
		<div>
			<p class="division">역할</p>
			<input type="text" name="mo_role" id="role" class="text_item3">
		</div><br>
		
		<!-- 국가 -->
		<div class="selectBox" id="firstbox">
			 <p class="division">국가</p>
			 <select class="test" multiple="multiple" id="country" name="mo_country">
	            <option value="그리스">그리스</option>
	            <option value="네털란드">네덜란드</option>
	            <option value="노르웨이">노르웨이</option>
	            <option value="뉴질랜드">뉴질랜드</option>
	            <option value="대만">대만</option>
	            <option value="덴마크">덴마크</option>
	            <option value="독일">독일</option>
	            <option value="러시아">러시아</option>
	            <option value="미국">미국</option>
	            <option value="벨기에">벨기에</option>
	            <option value="브라질">브라질</option>
	            <option value="스웨덴">스웨덴</option>
	            <option value="스위스">스위스</option>
	            <option value="스페인">스페인</option>
	            <option value="아일랜드">아일랜드</option>
	            <option value="영국">영국</option>
	            <option value="오스트리아">오스트리아</option>
	            <option value="이탈리아">이탈리아</option>
	            <option value="인도">인도</option>
	            <option value="일본">일본</option>
	            <option value="중국">중국</option>
	            <option value="체코">체코</option>
	            <option value="캄보디아">캄보디아</option>
	            <option value="캐나다">캐나다</option>
	            <option value="페루">페루</option>
	            <option value="폴란드">폴란드</option>
	            <option value="프랑스">프랑스</option>
	            <option value="필란드">필란드</option>
	            <option value="한국">한국</option>
	            <option value="호주">호주</option>
	            <option value="홍콩">홍콩</option>
	    	</select>
		</div>
		
		<!-- 장르 -->
		<div class="selectBox">
			 <p class="division2">장르</p>
			 <select class="test" multiple="multiple" id="genre" name="mo_genre">
	            <option value="가족">가족</option>
	            <option value="공포">공포</option>
	            <option value="누아르">누아르</option>
	            <option value="다큐멘터리">다큐멘터리</option>
	            <option value="드라마">드라마</option>
	            <option value="로멘스">로맨스</option>
	            <option value="로맨틱">로맨틱 코미디</option>
	            <option value="모험">모험</option>
	            <option value="뮤지컬">뮤지컬</option>
	            <option value="미스터리">미스터리</option>
	            <option value="범죄">범죄</option>
	            <option value="스릴러">스릴러</option>
	            <option value="스포츠">스포츠</option>
	            <option value="역사">역사</option>
	            <option value="애니메이션">애니메이션</option>
	            <option value="액션">액션</option>
	            <option value="재난">재난</option>
	            <option value="청춘">청춘</option>
	            <option value="코미디">코미디</option>
	            <option value="판타지">판타지</option>
	            <option value="SF">SF</option>
	    </select>
		</div><br>
		
		<!-- 개봉연도 -->
		<div>
			<p class="division">개봉연도</p>
			<input type="text" name="mo_day" class="text_item" id="mo_day" style="float: left;">
		</div>
		
		<!-- 상영시간 -->
		<div>
			<p class="division3">상영시간</p>
			<input type="text" name="mo_time" class="text_item" id="time">
		</div><br>
		
		<!-- 평점 -->
		<div>
			<p class="division">평균평점</p>
			<input type="text" name="mo_grade" class="text_item" id="grade"  style="float: left;">
		</div>
		
		<!-- 평점 인원 -->
		<div>
			<p class="division3">평점인원</p>
			<input type="text" name="mo_personnel" class="text_item" id="role">
		</div>
			
		<!-- 내용 -->
		<div style="margin-top: 23px;">
			<p class="division">내용</p>
			<textarea rows="25" cols="66" name="mo_basic" id="textarea"></textarea>
		</div><br>
		
		<!-- 파일 업로드 -->
		<div id="fileUp">
			<p class="division4">첨부 파일</p>
			 <input multiple="multiple" type="file" id="mo_photo" name="mo_photo" style="margin: 4px -36px 9px -27px;"><br>
	         <input type="hidden" id="fileCheck" name="fileCheck" value="0">
		</div>
		<div id="btn-all">
			<button class="btn" id="upload">업로드</button>
			<button id="close-btn" onclick="closeCheck()">취소</button>
		</div>
	</div>
</form>   
</body>
<script>
(function($) {
    $(function() {
        window.fs_test = $('.test').fSelect();
    });
})(jQuery);

$(document).ready(function(){
	$("#close-btn").click(function(){
		alert("이 사이트를 나가시겠습니까? \n\n변경사항이 저장되지 않을 수 있습니다.");
		window.close();
	});
});

$('#upload').click(function(){
	   var title = document.getElementById("title");
	   var orgtitle= document.getElementById("orig-title");
	   var director = document.getElementById("director");
	   var perfomer = document.getElementById("perfomer");
	   var country = document.getElementById("country");
	   var genre = document.getElementById("genre");
	   var day = document.getElementById("mo_day");
	   var time = document.getElementById("time");
	   var basic = document.getElementById("textarea");
	   var photo = document.getElementById("mo_photo");
	   
	   if(title.value=="" || title.value==null){
		      alert("제목을 입력해주세요.");
		      title.focus();
		      return false;
		      
		}else if(orgtitle.value=="" || orgtitle.value==null){
		      alert("원제를 입력해주세요.");
		      orgtitle.focus();
		      return false;
		      
		}else if(director.value=="" || director.value==null){
		      alert("감독을 입력해주세요.");
		      director.focus();
		      return false;
		      
		}else if(perfomer.value=="" || perfomer.value==null){
		      alert("출연자를 입력해주세요.");
		      perfomer.focus();
		      return false;
		
		}else if(country.value==""||country.value==null){
		      alert("국가를 입력해주세요.");
		      return false;

		 }else if(genre.value==""||genre.value==null){
		      alert("장르를 입력해주세요.");
		      return false;
		      
		}else if(day.value=="" || day.value==null){
			alert("개봉연도를 입력해주세요.");
			day.focus();
			return false;
		      
		}else if(time.value=="" || time.value==null){
			alert("상영시간을 입력해주세요.");
			time.focus();
			return false;
			
		}else if(basic.value=="" || basic.value==null){
			alert("내용을 입력해주세요.");
			basic.focus();
			return false;
			
		}else if(photo.value=="" || photo.value==null){
		      alert("첨부파일을 입력해주세요.");
		      photo.foucs();
		      return false;
		}
});
</script>
</html>