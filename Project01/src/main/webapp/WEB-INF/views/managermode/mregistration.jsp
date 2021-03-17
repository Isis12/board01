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
  width: 483px;
  padding-left: 22px;
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
  padding-left: 15px;
  margin: 0 0 0 -17px;
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
  background-color: #FBB1B5;
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
  background-color: #FBB1B5;
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
	background: #FBB1B5;
	cursor: pointer;
	box-shadow: 0 2px 4px rgb(255 0 0 / 35%);
}

#btn-all{
  margin-left: 15px;
}
</style>
<body>
<form id="fileForm" enctype="multipart/form-data">
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
		
		<!-- 국가 -->
		<div class="selectBox" id="firstbox">
			 <p class="division">국가</p>
			 <select class="test" multiple="multiple" id="country" name="mo_country">
	            <option value="1">그리스</option>
	            <option value="2">네덜란드</option>
	            <option value="3">노르웨이</option>
	            <option value="4">뉴질랜드</option>
	            <option value="5">대만</option>
	            <option value="6">덴마크</option>
	            <option value="7">독일</option>
	            <option value="8">러시아</option>
	            <option value="9">미국</option>
	            <option value="10">벨기에</option>
	            <option value="11">브라질</option>
	            <option value="12">스웨덴</option>
	            <option value="13">스위스</option>
	            <option value="14">스페인</option>
	            <option value="15">아일랜드</option>
	            <option value="16">영국</option>
	            <option value="17">오스트리아</option>
	            <option value="18">이탈리아</option>
	            <option value="19">인도</option>
	            <option value="20">일본</option>
	            <option value="21">중국</option>
	            <option value="22">체코</option>
	            <option value="23">캄보디아</option>
	            <option value="24">캐나다</option>
	            <option value="25">페루</option>
	            <option value="26">폴란드</option>
	            <option value="27">프랑스</option>
	            <option value="28">필란드</option>
	            <option value="29">한국</option>
	            <option value="30">호주</option>
	            <option value="31">홍콩</option>
	    	</select>
		</div>
		
		<!-- 장르 -->
		<div class="selectBox">
			 <p class="division2">장르</p>
			 <select class="test" multiple="multiple" id="genre" name="mo_genre">
	            <option value="1">가족</option>
	            <option value="2">공포</option>
	            <option value="3">누아르</option>
	            <option value="4">다큐멘터리</option>
	            <option value="5">드라마</option>
	            <option value="6">로맨스</option>
	            <option value="7">로맨틱 코미디</option>
	            <option value="8">모험</option>
	            <option value="9">뮤지컬</option>
	            <option value="10">미스터리</option>
	            <option value="11">범죄</option>
	            <option value="12">스릴러</option>
	            <option value="13">스포츠</option>
	            <option value="14">역사</option>
	            <option value="15">애니메이션</option>
	            <option value="16">액션</option>
	            <option value="17">재난</option>
	            <option value="18">청춘</option>
	            <option value="19">코미디</option>
	            <option value="20">판타지</option>
	            <option value="21">SF</option>
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
			<p class="division3">평점</p>
			<input type="text" name="mo_grade" class="subheading_text" id="grade">
		</div><br>
		
		<!-- 내용 -->
		<div>
			<p class="division">내용</p>
			<textarea rows="25" cols="67" name="mo_basic" id="textarea"></textarea>
		</div><br>
		
		<!-- 파일 업로드 -->
		<div id="fileUp">
			<p class="division4">첨부 파일</p>
			 <input multiple="true" type="file" id="mo_photo" name="mo_photo" style="margin: 4px -36px 9px -35px;"><br>
	         <input type="hidden" id="fileCheck" name="fileCheck" value="0">
		</div>
		<div id="btn-all">
			<button class="btn" id="upload">업로드</button>
			<button id="close-btn">취소</button>
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
	
		}else{
			var formData= new formData($('#fileForm')[0]);
			
			$.ajax({
				type: 'post',
				enctype: 'multipart/form-data',
				url: '/board/rest/managermode/movieregistration',
				data: formData,
				processData: false,
				contentType: false,
				success: function(data){
					console.log(data);
				},
				error: function(err){
					console.log(err);
				}
			})
	}
});
</script>
</html>