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
		String ID = request.getParameter("ID");
		String password = request.getParameter("Password");
		String message;
		
		if (ID.equals("admin")) {
			if (password.equals("1234")) {
				message = "Welcome " + ID + "!";
				
			}
			else {
				message = "Wrong password.";
			}
		}
		else {
			message = "Access out";
		}
		
		request.setAttribute("msg", message);
	%>

	<jsp:forward page="LoginResult.jsp" />
</body>
</html>
