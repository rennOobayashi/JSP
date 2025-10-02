<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<fieldset>
		<legend>Login Result</legend>
		<ul>
			<li>ID: ${ member.id }</li>
			<li>Name: ${ member.name }</li>
			<li>Password: ${ member.password }</li>
			<li>Age: ${ member.age }</li>
			<li><i class="fa-solid fa-phone"></i>: ${ member.phone }</li>
			<li><i class="fa-solid fa-envelope"></i>: ${ member.email }</li>
		</ul>
	</fieldset>
</body>
</html>