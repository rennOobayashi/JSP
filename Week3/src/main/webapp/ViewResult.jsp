<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Print Request Parameter</h2>
	<h3 style="color:red;">Use requset.GetParameter() method</h3>
	<hr>
	
	name - <%= request.getParameter("name") %> <br>
	addr - <%= request.getParameter("addr") %> <br>
	
	<hr>
	<h3 style="color:blue;">Use request.getParameterValues() method</h3>
	<hr>
	
	pet - 
	<% 
		String[] values = request.getParameterValues("pet"); 
		
		if (values != null) {
			for (String value : values) {
				out.print(value);
				
				if (value != values[values.length - 1]) {
					out.print(", ");
				}
			}
		}
	%>
	
	<hr>
	<h3 style="color:purple;">Use request.getParameterNames() method</h3>
	<hr>
	
	<%
		//iterator
		Enumeration pNames = request.getParameterNames();
	
		while(pNames.hasMoreElements()) {
			String pName = pNames.nextElement().toString();
			out.print(pName);
			
			if (pNames.hasMoreElements()) {
				out.print(", ");
			}
		}
	%>
	
	<hr>
	<h3 style="color:purple;">Use request.getParameterMap() method</h3>
	<hr>
	
	<%
		Map pMap = request.getParameterMap();
		String[] _values = (String[])pMap.get("name");
		
		out.print("Map Parameter: (name, " + _values[0] + ")");
		
	%>
</body>
</html>