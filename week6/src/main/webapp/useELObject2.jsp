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
		pageContext.setAttribute("name", "이인희 in page");
		request.setAttribute("name", "이인희 in requset");
		session.setAttribute("name", "이인희 in session");
		application.setAttribute("name", "이인희 in application");
		
	%>
	
	<h4>
		<!-- pageContext's page attribute = ${ pageScope.name } <br> -->
		pageContext's page request attribute = ${ requestScope.name } <br>
		pageContext's session attribute = ${ sessionScope.name } <br>
		pageContext's page application attribute = ${ applicationScope.name} <br>
		requset Parameter: code = ${ param.code }
	</h4>
	
	<h4>
		<!-- ¿pageContext's page attribute = ${ name } <br> -->
		pageContext's page request attribute = ${ name } <br>
		pageContext's session attribute = ${ name } <br>
		pageContext's page application attribute = ${ name} <br>
	</h4>
</body>
</html>