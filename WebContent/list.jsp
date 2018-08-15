<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리스트 보기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.js" integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <div class="starter-template">
    <h1>게시판</h1>
    <p class="lead">게시판 목록</p>
  </div>
</div>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
		<table class="table table-hover table-border">
			<thead>
				<tr>
					<th class="col-sm-1">번호</th>
					<th class="col-sm-2">이름</th>
					<th class="col-sm-4">제목</th>
					<th class="col-sm-3">날짜</th>
					<th class="col-sm-2">조회</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="dto">
					<tr>
						<th class="col-sm-1">${dto.bId}</th>
						<th class="col-sm-2">${dto.bName}</th>
						<th class="col-sm-4">
							<c:forEach begin="1" end="${dto.bIndent}">ㄴ</c:forEach>
								<a href="view.do?bId=${dto.bId}">${dto.bTitle}</a>
							
						</th>
						<th class="col-sm-3">${dto.bDate}</th>
						<th class="col-sm-2">${dto.bHit}</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a class="btn btn-primary pull-right" href="write_view.do">글쓰기</a>
		</div>
	</div>
</div>



</body>
</html>