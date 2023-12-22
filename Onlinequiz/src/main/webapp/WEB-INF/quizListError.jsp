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
String dbName = request.getParameter("database");
%>
<a href="addQuiz.jsp?database=<%=dbName%>">Add Quiz</a><br>
<%="No user" %>
</body>
</html>