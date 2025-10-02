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
		ID:           <input type="text" name="id" required="required"> <br>
		Name:         <input type="text" name="name" required="required"> <br>
		Password:     <input type="text" name="password" required="required"> <br>
		age:          <input type="text" name="age" required="required"> <br>
		Phone number: <input type="text" name="phone" required="required"> <br>
		Email:        <input type="text" name="email" required="required"> <br>
		<br>
		
		<input type="submit" value="submit">	
		<input type="reset" value="reset">	
	</form>
</body>
</html>