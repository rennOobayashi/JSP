<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Update Question</h2>
	
	<form action="/question/update/${ question.id }"> 
		Title : <input type="text" name="subject" value="${ question.subject }"> <br>
		Content : <textarea rows="5" cols="40" name="content"> ${ question.content } </textarea>
		<br>
		<br>
		<input type="submit" value="Update">
	</form>
	<br>
	<button onclick="/question/viewList">viewList</button>
</body>
</html>