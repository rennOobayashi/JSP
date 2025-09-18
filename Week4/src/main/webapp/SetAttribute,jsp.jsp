<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>jsp:forward set parameter use request setAttribute</h3>
	
	<%
		request.setAttribute("id"      , "admin");
		request.setAttribute("password", "0000");
		request.setAttribute("name"    , "DK");
		request.setAttribute("address" , "DDD DDD DDDDDDD");
		request.setAttribute("email  " , "kt@kusozako.kr");
	%>
	
	<jsp:forward page="getAttribute.jsp" />
</body>
</html>