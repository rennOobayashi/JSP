<%@page import="week5.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberInfo member = (MemberInfo)request.getAttribute("member");
	%>
	
	<h2>Register Result</h2>
	<table border="1">
		<tr>
			<td> ID </td>
			<td> <%= member.getId() %> </td>
		</tr>
		<tr>
			<td> Password </td>
			<td> <%= member.getPassword() %> </td>
		</tr>
		<tr>
			<td> Name </td>
			<td> <%= member.getName() %> </td>
		</tr>
		<tr>
			<td> Email </td>
			<td> <%= member.getEmail() %> </td>
		</tr>
		<tr>
			<td> Register Date </td>
			<td> <%= member.getRegisterDate() %> </td>
		</tr>
	</table>
	<br>
	
	<button onclick="location.href='MemberForm.jsp'">Go back to Register page </button>>
</body>
</html>