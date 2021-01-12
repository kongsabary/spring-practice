<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<title>login</title>
<style>
a {
	color: #2f2f2f;
}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12" style="margin top: 80px; margin-top: 21px; margin-bottom: 21px; text-align: center; font-size: 100px;">
			<a href="/">maskdays</a>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<form role="form" action="/login/loginPost" method="post">
						<div class="form-group">
							<input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디"/>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="비밀번호"/>
						</div>
						<button type="submit" class="btn btn-primary" style="background-color: #2f2f2f; width: 540px; height: 58px; margin-bottom: 46px;">
							로그인
						</button>
						<p style="text-align: center;">
							<a href="#">아이디 찾기 |</a>
							<a href="#">비밀번호 찾기 |</a>
							<a href="/login/join">회원가입</a>
						</p>
					</form>
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>