<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Favicons -->
<link href="/board/assets/img/favicon.png" rel="icon">
<link href="/board/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<title>Movie Management</title>
</head>
<style>
a{
  text-decoration: none;
  color: #858796;
}
#main_menu{
  float: left;
  margin: 12px 0 0 20px;
  font-size: 16px;
}
.slash{
  margin: 10px;
}
#subject{
  float: left;
  display: block;
  margin: 51px 0 0 -15%;
}
.h3{
  font-family: 400;
  font-size: 1.75rem;
  color: #5a5c69 !important;
  line-height: 1.2;
}

</style>
<body>
	<div>
		<div id="main_menu">
			<a href="/board/managermode/managerPage">뒤로가기</a>
			<span class="slash">/</span>
			<a href="/board/managermode/tvManagement">TV프로그램</a>
			<span class="slash">/</span>
			<a href="/board/managermode/memberManagement">회원관리</a>
		</div>
		<div id="subject">
			<h1 class="h3">영화 상세보기</h1>
		</div>
		<div id="center">
			<table>
				<tr>
					<th>사진</th>
					<td>${mo.mo_photo}</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>