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
String dbName = request.getParameter("database");
UserDao d = new UserDao();
d.deleteDb(dbName);
%>
<%="Category Get deleted" %>
<%@ include file="showCat.jsp" %>
</body>
</html>