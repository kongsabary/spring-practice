<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<title>메인화면</title>
</head>
<body>
<div class="container-fluid contents-wrap">
	<header id="header">
	<!-- header -->
		<div class="row" style="background-color: #2f2f2f;">
			<div class="col-md-12" style="margin-top: 10px;">
				<ul class="nav justify-content-end" style="margin-right: 200px;">
					<c:if test="${login != null}">
						<li class="nav-item">
							<a class="nav-link" style="font-size: 20px; color: white;">[${login.user_id}]님</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/login/login" style="font-size: 20px; color: white;">MyPage</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/login/logout" style="font-size: 20px; color: white;">로그아웃</a>
						</li>
					</c:if>
					<c:if test="${login == null}">
						<li class="nav-item">
							<a class="nav-link" href="/login/login" style="font-size: 20px; color: white;">LOGIN</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/login/join" style="font-size: 20px; color: white;">JOIN</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
		
		<!-- 상단 브랜드명 -->
		<div class="row">
			<div class="col-md-12" style="margin top: 80px; margin-top: 21px; margin-bottom: 21px; text-align: center; font-size: 100px;">
				<a style="color: #2f2f2f;" href="/">maskdays</a>
			</div>
		</div>	
		
		<!-- Navbar -->
		<div class="row">
			<div class="col-md-12">
				<hr/>
				<ul class="nav" style="margin-top: 21px; margin-left: 150px;">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="/main/map" style="font-size: 18px; color: blue;">Map</a>
					</li>
				  	<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="#" style="font-size: 18px; color: red;">Best</a>
					</li>
					<li class="nav-item dropdown productMenu">
			        	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: #2f2f2f;">
							마스크
			       		</a>
			        	<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
				            <li><a class="dropdown-item" href="#">보건용(KF94/80/AD마스크)</a></li>
				            <li><a class="dropdown-item" href="#">어린이용마스크</a></li>
				            <li><a class="dropdown-item" href="#">일회용마스크</a></li>
				            <li><a class="dropdown-item" href="#">어린이용마스크</a></li>
			        	</ul>
				   </li>
				  <li class="nav-item productMenu">
				    <a class="nav-link" href="#" style="color: #2f2f2f;">손소독제</a>
				  </li>
				  <li class="nav-item productMenu">
				    <a class="nav-link" href="#" style="color: #2f2f2f;">손소독(세정)티슈</a>
				  </li>
				  <li class="nav-item productMenu">
				    <a class="nav-link" href="#" style="color: #2f2f2f;">마스크스트랩(줄)</a>
				  </li>
				</ul>
				<hr/>
			</div>
		</div>
	</header>
	
	<!-- 이미지 슬라이드 -->
	<div class="row">
		<div class="col-md-12">
			<div class="carousel slide" id="carousel-61468">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-61468" class="active">
					</li>
					<li data-slide-to="1" data-target="#carousel-61468">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="mainImage" alt="mainImage1" src="resources/images/main1.png" />
						<div class="carousel-caption">
						</div>
					</div>
					<div class="carousel-item">
						<img class="mainImage" alt="mainImage2" src="resources/images/main2.png" />
						<div class="carousel-caption">
						</div>
					</div>
				</div>
					<a class="carousel-control-prev" href="#carousel-61468" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carousel-61468" data-slide="next">
						<span class="carousel-control-next-icon"></span>
						<span class="sr-only">Next</span>
					</a>
			</div>
		</div>
	</div>

	<!-- 상품 사진 4장씩 prdList grid4 -->
	<div class="row">
		<div class="col-md-12">
			<div style="width: 400px; position: absolute; left: 30%; margin-left: -245px;" class="wrapper" id="prdList grid4">
			<c:forEach begin="1" end="8" step="1">
	  			<div style="height: 250px; margin-right: 20px; margin-bottom: 20px;" class="thumbnail">
		  			<div class="prd-item">
						<img style="width: 267px; height: 243px;" class="prdImage" alt="prdImage" src="resources/images/maskImage1.png" />
					</div>
	  			</div>
			</c:forEach>
			</div>
		</div>
	</div>
	
	<!-- footer -->
	<footer>
		<div class="row footer">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div>
					<p>회사소개 | 이용약관 | 이용안내 | 개인정보처리방침</p>
					<p>
						상호 :마스크데이즈 업체 :(주)마스크데이즈 주소 :울산 북구 매곡동<br/>
						대표 :공다혜 대표번호 :1994-1231 메일 :kongdh12@gmail.com<br/>
						사업자등록번호 :485-9862-9226 통신판매업신고번호 :2021-울산북구-880X 개인정보관리자 :공다혜<br/>
						copyright (c) maskdays.co.kr all rights reserved.<br/>
					</p>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
	</footer>
</div>
</body>
</html>