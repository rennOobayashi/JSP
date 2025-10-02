<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Login</h2>
	
	<form action="userResult.jsp">
		ID: <input type="text" name="id"> <br>
		Name: <input type="text" name="name"> <br>
		<br>
		favorite Sports: <input type="checkBox" name="sports" value="soccer"> Soccer
		<input type="checkBox" name="sports" value="basketball"> Basketball
		<input type="checkBox" name="sports" value="baseball"> Baseball
		<input type="checkBox" name="sports" value="tabletennie"> Tabletennie
		<br>
		<input type="submit" value="Submit">
		<input type="reset" value="reset">
	</form>
</body>
</html>