<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.js" integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
  <div class="starter-template">
    <h1>답변달기</h1>
    <p class="lead">게시판 답변달기</p>
  </div>
</div>
	<div class="container">
		<div class="row">
			<div class="sm-col-12">.
				<form action="reply.do" method="post">
					<input type="hidden" name="bId" value="${replyView.bId }">
					<input type="hidden" name="bGroup" value="${replyView.bGroup }">
					<input type="hidden" name="bStep" value="${replyView.bStep }">
					<input type="hidden" name="bIndent" value="${replyView.bIndent }">
					
					<table class="table table-hover table-border">
						<tr>
							<th>번호</th>
							<td>${replyView.bId }</td>
						</tr>
						<tr>
							<th>조회수</th>
							<td>${replyView.bHit }</td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" name="bName" size="50" value="${replyView.bName }"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" name="bTitle" size="50" value="${replyView.bTitle }"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea name="bContent" rows="10" cols="52"></textarea></td>
						</tr>
					</table>
					<span class="pull-right">
					<input type="submit" value="답변달기" class="btn btn-info">
					<a href="list.do" class="btn btn-danger">목록으로</a>
					</span>
				</form>
			</div>
		</div>
	</div>
</body>
</html>