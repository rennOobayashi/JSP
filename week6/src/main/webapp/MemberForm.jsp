<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Login Form</h2>
	
	<form action="MemberProcess.jsp">
		ID:           <input type="text" name="id"> <br>
		Name:         <input type="text" name="name"> <br>
		Password:     <input type="text" name="password"> <br>
		age:          <input type="text" name="age"> <br>
		Phone number: <input type="text" name="phone"> <br>
		Email:        <input type="text" name="Email"> <br>
		<br>
		
		<input type="submit" value="submit">	
		<input type="reset" value="reset">	
	</form>
</body>
</html>