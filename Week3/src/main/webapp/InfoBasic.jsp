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
		String stuNo = request.getParameter("stuNo");
		int age = Integer.parseInt(request.getParameter("age"));
		String[] subjects = request.getParameterValues("subject");
	%>
	
	<%!
		String isAdult(int _age) {
			if (_age >= 20) {
				return "성인";
			}
			else {
				return "소년";
			}
	}
	%>
	
	<h2>학번: <%= stuNo %></h2>
	<h2>나이: <%= age %> (<%= isAdult(age) %>)</h2>
	
	<h2>선택한 과목 목록</h2>
	
	<ul>
		<%
			if (subjects != null) {
				for (String subject : subjects) {
					out.print("<li>" + subject + "</li>");
				}
			}
			else {
				out.println("<li>Nayutan</li>");
			}
		%>
	</ul>
</body>
</html>