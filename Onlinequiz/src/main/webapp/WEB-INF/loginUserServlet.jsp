<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ page import="com.quiz.dao.*" %>
 <%@ page import="com.quiz.pojo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
UserDao dao = new UserDao();
User use = new User();
String username = request.getParameter("email");
String password = request.getParameter("password");
String name = use.getName();
String row=dao.valid(username, password);
if(row!=null){
session.setAttribute("LoggedInUser", row);
response.sendRedirect("UserDashboard.jsp");

}
else{%>
<div style="text-align: center;">
<% out.print("Error Login Username and Password"); %>
</div>
<%@ include file="index.jsp" %>

<% }%>
</body>
</html>