<%@page import="org.apache.jasper.runtime.JspApplicationContextImpl"%>
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
		pageContext.setAttribute("page", "#1");
		request.setAttribute("name", "이인희");
		session.setAttribute("ID", "admin");
		application.setAttribute("msg", "use applicaion default object");
		
	%>
	
	<h4>
		pageContext's page attribute = ${ pageScope.page } <br>
		pageContext's page request attribute = ${ requestScope.name } <br>
		pageContext's session attribute = ${ sessionScope.ID } <br>
		pageContext's page application attribute = ${ applicationScope.msg} <br>
		requset Parameter: code = ${ param.code }
	</h4>
	
	<h3>no Scope</h3>
	<h4>
		pageContext's page attribute = ${ page } <br>
		pageContext's page request attribute = ${ name } <br>
		pageContext's session attribute = ${ ID } <br>
		pageContext's page application attribute = ${ msg} <br>
	</h4>
</body>
</html>