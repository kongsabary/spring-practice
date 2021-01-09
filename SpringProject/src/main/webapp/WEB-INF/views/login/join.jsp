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
<title>join</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12" style="margin top: 80px; margin-top: 21px; margin-bottom: 21px; text-align: center; font-size: 100px; color: #2f2f2f;">
			maskdays
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<form role="form" action="/login/joinPost" method="post">
						<div class="form-group">
							<label>아이디</label>
							<input type="text" class="form-control" id="user_id" name="user_id"/>
						</div>
						<div class="form-group">
							<label>비밀번호</label>
							<input type="password" class="form-control" id="user_pw" name="user_pw"/>
						</div>
						<div class="form-group">
							<label>비밀번호 재확인</label>
							<input type="password" class="form-control" id="user_pw2" name="user_pw2"/>
						</div>
						<div class="form-group">
							<label>이름</label>
							<input type="text" class="form-control" id="user_pw" name="user_pw"/>
						</div>
						<div class="form-group">
							<label>생년월일</label>
							<input type="text" class="form-control" id="birth" name="birth"/>
						</div>
						<div class="form-group">
							<label>성별　</label>
							<input type="radio" name="gender" id="m" value="남"/>남
							<input type="radio" name="gender" id="f" value="여"/>여
						</div>
						<div class="form-group">
							<label>주소<button>우편번호검색</button></label>
							<input type="text" class="form-control" id="address" name="address"/>[상세주소]
							<input type="text" class="form-control" id="address2" name="address2"/>
						</div>
						<button type="submit" class="btn btn-primary" style="background-color: #2f2f2f; width: 540px; height: 58px; margin-bottom: 46px;">
							가입하기
						</button>
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