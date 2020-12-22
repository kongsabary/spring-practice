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
<title>메인화면</title>
<style>
.mainImage {
	width: 100%;
	height: 400px;
	margin-top: 50px; 
}

#navbar-user {
	font-size: small;
	
}

#navbarDropdownMenuLink {
	color: black;
}

.wrapper {
  display: grid;
  grid-template-columns: 300px 300px 300px 300px;
}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<!-- 상단 로그인부분 -->
			<nav style="margin-left: 1200px; position: absolute; left: 80%; margin-left: -100px;" class="navbar navbar-expand-sm navbar-light bg-light" id="navbar-user">
				<a class="navbar-brand" href="#">LOGIN</a>
				<a class="navbar-brand" href="#">JOIN</a>
				<a class="navbar-brand" href="#">CART</a>
				<a class="navbar-brand" href="#">MYPAGE</a>
				<a class="navbar-brand" href="#">NOTICE</a>
			</nav>
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div style="margin-top: 100px; width: 400px; position: absolute; left: 50%; margin-left: -200px;" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<hr/>
					<a style="color: red;" class="navbar-brand" href="#">BEST</a>
					<ul class="navbar-nav">
						<li class="nav-item dropdown">
							 <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">플랫/로퍼</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								 <a class="dropdown-item" href="#">플랫슈즈</a>
								 <a class="dropdown-item" href="#">로퍼</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							 <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">부츠/워커</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								 <a class="dropdown-item" href="#">앵클부츠</a>
								 <a class="dropdown-item" href="#">워커</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							 <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">BAG/ACC</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								 <a class="dropdown-item" href="#">샌들</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							 <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">BAG/ACC</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								 <a class="dropdown-item" href="#">가방</a>
								 <a class="dropdown-item" href="#">슈즈악세서리</a>
							</div>
						</li>
					</ul>
<!-- 					<form class="form-inline"> -->
<!-- 						<input class="form-control mr-sm-2" type="text" />  -->
<!-- 						<button class="btn btn-primary my-2 my-sm-0" type="submit"> -->
<!-- 							Search -->
<!-- 						</button> -->
<!-- 					</form> -->
				</div>
			</nav>
			<br/>
			<!-- 이미지 슬라이드 -->
			<div class="carousel slide" id="carousel-61468">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-61468" class="active">
					</li>
					<li data-slide-to="1" data-target="#carousel-61468">
					</li>
					<li data-slide-to="2" data-target="#carousel-61468">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="mainImage" alt="mainImage1" src="resources/images/메인화면2.gif" />
						<div class="carousel-caption">
						</div>
					</div>
					<div class="carousel-item">
						<img class="mainImage" alt="mainImage2" src="resources/images/메인화면1.jpg" />
						<div class="carousel-caption">
						</div>
					</div>
					<div class="carousel-item">
						<img class="mainImage" alt="mainImage3" src="resources/images/메인화면3.jpg" />
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
		
		<!-- 상품 사진 4장씩 prdList grid4 -->
		<div class="col-md-12">
		<br/>
			<div style="width: 400px; position: absolute; left: 30%; margin-left: -200px;" class="wrapper" id="prdList grid4">
			<c:forEach begin="1" end="8" step="1">
		  			<div style="height: 250px; margin-right: 20px; margin-bottom: 20px;" class="thumbnail">
			  			<div class="prd-item">
							<img class="prdImage" alt="prdImage" src="" />
						</div>
		  			</div>
			</c:forEach>
			</div>
		</div>
	</div>
</div>
</body>
</html>