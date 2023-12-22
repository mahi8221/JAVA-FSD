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
String dbname =(request.getParameter("database"));
UserDao d = new UserDao();
out.print(dbname);
%>
<form action="editDbcontroller.jsp">
<input type="hidden" name="olddbname" value=<%=dbname %>>
New Category name :
<input type="text" name="newdbname">
<input type="submit">
</form>
</body>
</html>