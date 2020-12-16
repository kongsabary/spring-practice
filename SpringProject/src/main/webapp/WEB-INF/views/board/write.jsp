<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>글 쓰기</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>게시판 글쓰기</h2>
				<p>게시판 글 쓰기 입니다.</p>
				<p>
					<a class="btn btn-success btn-large" href="/board/listAll">홈으로</a>
				</p>
			</div>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<form role="form" action="/board/writePOST" method="post">
						<div class="form-group">
							<label for="board_title">글제목</label>
							<input type="text" class="form-control" id="board_title" name="board_title" />
						</div>
						<div class="form-group">
							<label for="board_title">글내용</label>
							<input type="text" class="form-control" id="board_content" name="board_content" />
						</div>
						<div class="form-group">
							<label for="board_title">작성자</label>
							<input type="text" class="form-control" id="board_writer" name="board_writer" />
						</div>
						<button type="submit" class="btn btn-success btn-large">등록하기</button>
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