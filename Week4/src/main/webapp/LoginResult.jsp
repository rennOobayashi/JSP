<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Login Result</h2>
	<%
		String ID = request.getParameter("ID");
		String password = request.getParameter("Password");
		
		if (ID.equals("admin")) {
			if (password.equals("1234")) {
				out.println("Welcome " + ID + "!");
			}
			else {
				out.println("Wrong password.");
			}
		}
		else {
			out.println("Access out");
		}
	%>
	<br><br>
	
	<form action="LoginForm.jsp">
		<input type="submit" value="Go back to Login form">
	</form>
</body>
</html>