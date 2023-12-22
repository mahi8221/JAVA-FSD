<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();
%>
<div style="text-align: center;">
 <% out.print("You are logout Successfully"); %>
</div>
<%@ include file="index.jsp" %>
</body>
</html>