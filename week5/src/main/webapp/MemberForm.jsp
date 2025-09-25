<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Register</h2>
	
	<form action="MemberProcess.jsp">
		<table border="1">
			<tr>
				<td> ID </td>
				<td> <input type="text" name="id"> </td>
			</tr>
			<tr>
				<td> Password </td>
				<td> <input type="password" name="password"> </td>
			</tr>
			<tr>
				<td> Name </td>
				<td> <input type="text" name="name"> </td>
			</tr>
			<tr>
				<td> Email </td>
				<td> <input type="email" name="email"> </td>
			</tr>
			<tr>
				<td colspan="2" align="center"> <input type="submit" value="Regist"> </td>
			</tr>
		</table>
	</form>
</body>
</html>