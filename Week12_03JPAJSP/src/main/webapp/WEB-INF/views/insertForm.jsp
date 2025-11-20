<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/insertResult">
		Title: <input type="text" name="subject"> <br>
		Content: <br>
		<textarea rows="5" cols="30" name="content"></textarea>
		<input type="submit" value="Regist">
	</form>
</body>
</html>