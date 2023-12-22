<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ page import="com.quiz.dao.*" %>
 <%@ page import="com.quiz.pojo.*" %>
 <%@page errorPage="ReguserError.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
UserDao dao= new UserDao();
User user = new User();
user.setName(request.getParameter("uname"));
user.setUsername(request.getParameter("uemail"));
user.setPassword(request.getParameter("upass"));
int row=dao.addUser(user);
if(row>0){%>
<%="User Added Successfully" %>
<%@ include file="register.jsp" %>
<a href="index.jsp">Back to HomePage</a>
 <% } %>
</body>
</html>