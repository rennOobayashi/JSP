<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="400" cellpadding="10" cellspacing="10">
		<tr>
			<td colspan="2"> <jsp:include page="Top.jsp"></jsp:include> </td>
		</tr>
		<tr>
			<td width="100", valign="top"><jsp:include page="Left.jsp"></jsp:include></td>
			<td width="200" valign="top">
			Layout Info
			<jsp:include page="Info.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="Bottom.jsp"></jsp:include></td>
		</tr>
	</table>
</body>
</html>