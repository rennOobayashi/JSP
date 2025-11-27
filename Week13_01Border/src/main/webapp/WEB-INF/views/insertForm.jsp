<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/question/insert">
		Title: <input type="text" name="subject"> <br>
		Content: <br>
		<textarea rows="5" cols="40" name="content"></textarea> <br>
		<input type="submit" value="Regist">
	</form>
	<br>
	<button onclick="location.href='/'">Home</button>
</body>
</html>