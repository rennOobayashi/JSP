<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<!-- Create JavaBeans Object -->
	<!--  MemberInfo member = new MemberInfo() -->
	<!-- scope=request = request.setAttribute("member", MemberInfo) -->
	<jsp:useBean id="member" class="week5.MemberInfo" scope="request" />
	
	<jsp:setProperty property="id" name="member" value="admin" />
	<jsp:setProperty property="name" name="member" value="홍길동" />
	<jsp:setProperty property="email" name="member" value="inhatc@inhatc.ac.kr" />
	
	<jsp:forward page="UseObject2.jsp" />
</body>
</html>