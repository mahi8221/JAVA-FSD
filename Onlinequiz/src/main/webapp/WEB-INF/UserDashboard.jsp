<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="com.quiz.dao.*"%>
<%@page import="java.util.*"%>
<%@ page import="com.quiz.pojo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String loggedInUser = (String) session.getAttribute("LoggedInUser");
%>
<div style="display: flex; justify-content: space-between;">
 <h3 style="margin-right: 10px; display: inline;">Welcome ,
 <i><% out.print("Hello " + " "+loggedInUser); %></i>
 </h3>
 <div style="margin-left: auto;">

 <a href="logoutServlet.jsp" style="margin-left: 10px;">Logout</a>
 </div>
</div>
<h3 style="text-align: center;">Quiz Category List</h3>
<table style="width: 50%; border-collapse: collapse; margin-left:25%">
 <tr>
 <th style="padding: 10px; background-color: #f2f2f2;border-right: 1px solid
#ddd;">Category</th>
 <th style="padding: 10px; background-color: #f2f2f2;">Edit table</th>
 </tr>
 <% UserDao dao = new UserDao();
 List<String> databases = dao.display();
 for (String database : databases) { %>
 <tr>
 <td style="padding: 10px; border-bottom: 1px solid #ddd;border-right: 1px solid #ddd;"><%=
database %></td>
 <td style="padding: 10px; border-bottom: 1px solid #ddd;border-right: 1px solid #ddd;"><a
href="userQuestion.jsp?database=<%= database %>">Take Test</a></td>
 </tr>
 <% } %>
</table>
</body>
</html>