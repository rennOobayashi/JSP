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
	<div class="container">
		<form action="bookjoin2.jsp">
			<div style="maring: 20px; padding: 20px; background-color: lightgreen; ">
				<h1 class="display-1">도서 등록</h1>
			</div>
				<div style="maring: 20px; padding: 10px;">
					<label for="inputPassword5" class="form-label">도서 코드</label>
					<input type="text" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock" name="code">
					<div id="passwordHelpBlock" class="form-text" style="padding: 5px;">
					  도서 코드를 입력하세요.
					</div>
					<label for="inputPassword5" class="form-label">도서 제목</label>
					<input type="text" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock" name="title">
					<div id="passwordHelpBlock" class="form-text" style="padding: 5px;">
					  도서명를 입력하세요.
					</div>
					<label for="inputPassword5" class="form-label">도서 저자</label>
					<input type="text" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock" name="writer">
					<div id="passwordHelpBlock" class="form-text" style="padding: 5px;">
					  도서의 저자를 입력하세요.
					</div>
					
				<div>
					<input type="submit" id="inputPassword5" class="btn btn-primary" aria-describedby="passwordHelpBlock" value="Submit">
				</div>
				</div>
		</form>
		
	</div>
</body>
</html>