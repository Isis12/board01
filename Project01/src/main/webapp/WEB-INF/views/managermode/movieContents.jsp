<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<meta content="" name="description">
<meta content="" name="keywords">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Favicons -->
<link href="/board/assets/img/favicon.png" rel="icon">
<link href="/board/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/board/css/movieDetail.css?after">

<title>영화 상세보기</title>
</head>
<body>
<!-- ======= Header ======= -->
 <header id="header" class="header-inner-pages fixed-top">
   <div class="container d-flex align-items-center">
     <h1 class="logo"><a href="/board/home/welcome" style="color: #493c3e">TEMPO</a></h1>
     <nav class="nav-menu" style="margin: 28px 47% 0 0; font-size: 14px; float: left;">
       <ul>
         <li><a href="/board/managermode/managerPage">뒤로가기</a></li>
         <li><span class="slash">/</span></li>
         <li><a href="/board/managermode/memberManagement">회원관리</a></li>
       </ul>
     </nav><!-- .nav-menu -->
   </div>
</header><!-- End Header -->
<div id="center" style="float: left;">
	<div class="h-title">
		<h1 style="font-weight: 400; float: left;">영화 상세보기</h1>
		<!-- <span class="bracket" style="margin-left: 6px;">(</span> -->
		<input type="text" id="num" name="mo_num" value="${mo.mo_num}" readonly>
		<!-- <span class="bracket" style="margin-left: -29%;">)</span> -->
	</div>

	<!-- ========영화 header======== -->
	<div class="movie_header">
		<div class="main_contents">
		<div><img style="width:100%; height:289px;" src="/board/upload/${mo.mo_photo}"></div>
		</div>
		<div class="main_contentes m_detail">
			<input type="text" name="mo_title" id="movie_title" class="txt_box m_title bx-collection" value="${mo.mo_title}" readonly><br>
			<input type="text" name="mo_day" class="txt_box m_bundle bx-collection" value="${mo.mo_day}" readonly>
			<span class="m_icon" style="margin-left: 14px;">・</span>
			<input type="text" name="mo_country" class="txt_box m_bundle bx-collection" value="${mo.mo_country}" readonly>
			<span class="m_icon" >・</span>
			<input type="text" name="mo_genre" class="txt_box m_bundle bx-collection" value="${mo.mo_genre}" readonly><br>
			<span class="m_average">평균 ★</span>
			<input type="text" name="mo_grade" class="txt_box m_average bx-collection" id="average" value="${mo.mo_grade}" readonly>
			<span style="margin-left: -9px; font-weight: 600;">(</span>
			<input type="text" name="mo_personnel" class="txt_box m_average bx-collection" id="personnel" value="${mo.mo_personnel}" readonly style="font-size: 16px;">
			<span style="margin-left: -22%; font-weight: 600;">)</span>
		</div>
	</div>
	
	<div class="center2">
		<!-- ========제작/출연======== -->
		<div>
			<h1 class="h1">제작/출연</h1>
			<div id="text_cover">
				<span class="m_name">감독&nbsp;</span>
				<input type="text" name="mo_director" class="txt_box2 bx-collection" value="${mo.mo_director}" readonly><br>
			</div>
			<div id="text_cover2">
				<span style="color: rgba(0, 0, 0, 0.5); margin-right: 21px;">출연진</span>
				<input type="text" name="mo_perfomer" class="txt_box2 m_perfomer bx-collection" value="${mo.mo_perfomer}" readonly><br>
			</div>
			<div id="text_cover3">
				<span style="color: rgba(0, 0, 0, 0.5); margin-right: 14px;">주/조연</span>
				<input type="text" name="mo_role" class="txt_box2 m_role bx-collection" value="${mo.mo_role}" readonly>
			</div>
		</div>
		
		<!-- ========영화 기본정보======== -->
		<div>
			<h1 class="h1">기본정보</h1>
			<div class="main_contents2">
				<input type="text" name="mo_orititle" class="txt_box2 bx-collection" value="${mo.mo_orititle}" readonly><br>
				<input type="text" name="mo_day" class="txt_box2 m_bundle2 bx-collection" value="${mo.mo_day}" readonly>
				<span style="margin-left:-30px;">・</span>
				<input type="text" name="mo_country" class="txt_box2 m_bundle2 bx-collection" value="${mo.mo_country}" readonly>
				<span style="margin-left: -34px;">・</span>
				<input type="text" name="mo_genre" class="txt_box2 m_bundle2 bx-collection" value="${mo.mo_genre}" readonly><br>
				<input type="text" name="mo_time" class="txt_box2 bx-collection" value="${mo.mo_time}" readonly>
			</div>
			<div id="resize">
				<textarea id="basic" class="textarea_size bx-collection">${mo.mo_basic}</textarea>
			</div>
		</div><br>
	</div>
	<div>
		<div id="button_bar">
			<!-- <button type="button" class="btn" id="Modify_btn">수정</button> -->
			<button type="button" class="btn" id="Modify_btn"><a href="/board/managermode/contentModification?MO_NUM=${mo.mo_num}" style="color: #767582;"></button>
			<button type="button" class="btn" id="Delete_btn">삭제</button>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	// textarea 자동 높이 
	$('#resize').on('change keydown keyup paste cut', 'textarea', function(){
		$(this).height(0).height(this.scrollHeight+2);
		if($(this).height()>50){
			$('textarea#basic').css("overflow", "auto");
		}else{
			$('textarea#basic').css("overflow", "hidden");
		}
	}).find('textarea#basic').change();
	
	//게시글 수정
	/* $('#Modify_btn').click(function(){
		var num=$('#num').val();
		$.ajax({
			url: '/board/managermode/contentModification',
			type: 'post',
			data: {num:num},
			success: function(data){
				$('#center').html(data);
			},
			error: function(err){
				console.log(err);
			}
		});
	}); */
	
	//게시글 삭제
	$('#Delete_btn').click(function(){
		var num=$('#num').val();
		$.ajax({
			url: '/board/rest/managermode/deleteMovie',
			type: 'post',
			data:{num:num},
			dataType: 'json',
			success: function(data){
				if(data==1){
					alert("삭제가 완료되었습니다.");
					location.href="/board/managermode/managerPage";
				}
			},
			error: function(err){
				console.log(err);
			}
		});
	});
</script>
</html>