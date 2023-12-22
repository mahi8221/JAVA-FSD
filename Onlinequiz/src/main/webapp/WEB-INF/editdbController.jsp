<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ page import="com.quiz.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String olddb = request.getParameter("olddbname");
String newdb =request.getParameter("newdbname");
UserDao d= new UserDao();
d.editDb(olddb, newdb);
%>
</body>
</html>