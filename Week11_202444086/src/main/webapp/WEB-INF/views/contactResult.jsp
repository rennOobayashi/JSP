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
<div class="container text-center">
 		<h2 class="display-2" style="text-align: center; padding-top: 100px; height:300px; background-color: lightgreen;'">
 			연락처 등록 프로그램
		</h2>
		<p class="h3" style="text-align: left; height: 70px; padding-top:20px; padding-left: 20px; background-color: #F5A327;">
			연락처 등록 결과
		</p>
    </div>
    <div class="container">
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">제 목</th>
      <th scope="col">내 용</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>이름</td>
      <td>${ contact.name }</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>아이디</td>
      <td>${ contact.id }</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>연락처</td>
      <td>${ contact.phone }</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td>주소</td>
      <td>${ contact.address }</td>
    </tr>
    <tr>
      <th scope="row">5</th>
      <td>이메일</td>
      <td>${ contact.email }</td>
    </tr>
  </tbody>
</table>
	
	<form action="logout">
	<div class="mb-3">
	  <input type="submit" class="btn btn-primary" value="등록화면">
	</div>
	</form>
</div>
</body>
</html>