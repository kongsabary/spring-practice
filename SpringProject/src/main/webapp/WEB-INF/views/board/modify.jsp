<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>수정</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>수정</h2>
				<p>수정할 정보를 입력해주세요.</p>
				<p>
					<a class="btn btn-success btn-large" href="/board/listAll">홈으로</a>
				</p>
			</div>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<form role="form" action="/board/modifyPOST" method="post" accept-charset="utf-8">
						<div class="form-group">
							<label for="board_title">글제목</label>
							<input type="hidden" id="board_bno" name="board_bno" value="${boardVo.board_bno}"/>
							<input type="text" class="form-control" id="board_title" name="board_title" value="${boardVo.board_title}" />
						</div>
						<div class="form-group">
							<label for="board_title">글내용</label>
							<input type="text" class="form-control" id="board_content" name="board_content" value="${boardVo.board_content}" />
						</div>
						<div class="form-group">
							<label for="board_title">작성자</label>
							<input type="text" class="form-control" id="board_writer" name="board_writer" value="${boardVo.board_writer}" />
						</div>
						<button type="submit" class="btn btn-success btn-large">수정하기</button>
						<a href="/board/listAll" class="btn btn-danger btn-large">목록</a>
					</form>
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>