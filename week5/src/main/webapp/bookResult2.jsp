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
	<jsp:useBean id="book" class="week5.Book" scope="request" />
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
	
	<div class="container">
		<div style="maring: 20px; padding: 20px; background-color: lightgreen; ">
			<h1 class="display-1">도서 등록 결과</h1>
		</div>
		<div style="margin: 10px; padding: 15px;">
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">제 목</th>
			      <th scope="col">내 용</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>도서 코드</td>
			      <td> <jsp:getProperty property="code" name="book"/> </td>
			    </tr>
			    <tr>
			      <td>도서 제목</td>
			      <td> <jsp:getProperty property="title" name="book"/> </td>
			    </tr>
			    <tr>
			      <td>도서 저자</td>
			      <td> <jsp:getProperty property="writer" name="book"/> </td>
			    </tr>
			    <tr>
			      <td>출판일자</td>
			      <td> <jsp:getProperty property="pubDate" name="book"/> </td>
			    </tr>
			  </tbody>
			</table>
		</div>
		<div>
			<button onclick="location.href='bookForm2.jsp'" id="inputPassword5" class="btn btn-primary" aria-describedby="passwordHelpBlock"> 도서등록 </button>
		</div>
	</div>
	
</body>
</html>