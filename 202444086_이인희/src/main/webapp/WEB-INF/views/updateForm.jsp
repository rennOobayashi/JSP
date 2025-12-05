<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    
	<form action="/information/update/${id}">
		<div class="container" style="margin: 15px; padding: 10px;">
			<div class="input-group mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">제목</span>
				<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" name="title" value="${ information.title }">
			</div>
			<div class="input-group input-group-sm mb-3">
				<span class="input-group-text" id="inputGroup-sizing-sm">소제목</span>
				<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="subTitles" value="${ information.subTitles }">
			</div>
			<div id="passwordHelpBlock" class="form-text" style="margin-left: 10px">
			  	띄어쓰기로 여러 소제목을 추가할 수 있습니다.
			</div>
		</div>
		<br>
		<input type="submit" class="btn btn-primary" style="margin-left: 10px" value="수정">
	</form>
	<br>
	<button class="btn btn-primary" style="margin-left: 10px" onclick="location.href='/information/deleteForm'">삭제</button>
	<button class="btn btn-primary" style="margin-left: 10px" onclick="location.href='/viewList'">홈</button>

</body>
</html>