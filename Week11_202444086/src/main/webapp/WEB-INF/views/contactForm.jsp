<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<div class=container>
<div class="container text-center">
 		<h2 class="display-2" style="text-align: center; padding-top: 100px; height:300px; background-color: lightgreen;">
 			연락처 등록 프로그램
		</h2>
		<p class="h3" style="text-align: left; height: 70px; padding-top:20px; padding-left: 20px; background-color: #F5A327;">
			연락처 정보 입력
		</p>
    </div>
    	<form action="contactResult">
    		<div class="container">
    			<div class="mb-3">
			  <label for="exampleFormControlInput1" class="form-label">이름</label>
			  <input type="text" class="form-control" name="name">
			</div>
    			<div class="mb-3">
			  <label for="exampleFormControlInput1" class="form-label">아이디</label>
			  <input type="text" class="form-control" name="id">
			</div>
    			<div class="mb-3">
			  <label for="exampleFormControlInput1" class="form-label">연락처</label>
			  <input type="text" class="form-control" name="phone">
			</div>
    			<div class="mb-3">
			  <label for="exampleFormControlInput1" class="form-label">주소</label>
			  <input type="text" class="form-control" name="address">
			</div>
    			<div class="mb-3">
			  <label for="exampleFormControlInput1" class="form-label">이메일</label>
			  <input type="text" class="form-control" name="email">
			</div>
    			<div class="mb-3">
			  <input type="submit" class="btn btn-primary" value="등록">
			</div>
    		</div>
	</form>
</div>
</body>
</html>