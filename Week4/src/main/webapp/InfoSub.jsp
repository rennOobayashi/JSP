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
		String type = request.getParameter("type");
	%>
	
	<%!
		String Phone(String _type) {
			if (_type == "iPhone") {
				return "Gomi";
			}
			else {
				return "Perfact";
			}
		}	
	%>
	<table border="1" width="100%" cellpadding="10" cellspacing="10">
		<tr>
			<td>type</td>
			<td><%= type %></td>
		</tr>
		<tr>
			<td>Characteristic</td>
			<td> 
			<%= Phone(type) %> 
			</td>
		</tr>
	</table>
</body>
</html>