<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>Login Result</legend>
		<ul>
			<li>ID: ${ member.id }</li>
			<li>Name: ${ member.name }</li>
			<li>Password: ${ member.password }</li>
			<li>Age: ${ member.age }</li>
			<li>Phone Number: ${ member.phone }</li>
			<li>Email: ${ member.password }</li>
		</ul>
	</fieldset>
</body>
</html>