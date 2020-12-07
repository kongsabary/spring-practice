<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>게시판</title>
</head>
<body>
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>게시판</h2>
				<p>게시판 입니다.</p>
				<p>
					<a class="btn btn-success btn-large" href="/board/write">글쓰기</a>
				</p>
			</div>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>글제목</th>
								<th>글내용</th>
								<th>글쓴이</th>
								<th>작성일</th>
								<th>수정</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${boardVo}" var="vo">
								<tr class="table-active">
									<td>${vo.board_bno}</td>
									<td><a href="/board/selectByBno?board_bno=${vo.board_bno}">${vo.board_title}</a></td>
									<td>${vo.board_content}</td>
									<td>${vo.board_writer}</td>
									<td>${vo.board_date}</td>
									<td><a href="/board/modify?board_bno=${vo.board_bno}" class="btn btn-success btn-large" >수정</a></td>
									<td><a href="/board/delete?board_bno=${vo.board_bno}" class="btn btn-danger btn-large">삭제</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>