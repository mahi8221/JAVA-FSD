<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ page import="com.quiz.dao.*"%>
 <%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<%@include file="adminDashboard.jsp" %>
<table style="border-collapse: collapse; width: 50%; text-align: center; margin-left:350px">
 <tr style="background-color: #f2f2f2;">
 <th style="padding: 10px;">Category</th>
 <th style="padding: 10px;">Edit table</th>
 <th style="padding: 10px;">Delete table</th>
 </tr>
 <% UserDao dao = new UserDao();
 List<String> databases = dao.display();
 for (String database : databases) { %>
 <tr>
 <td style="padding: 10px;"><a href="quiz.jsp?database=<%=database%>"><%= database %>
</a></td>
 <td style="padding: 10px;"><a href="EditDB.jsp?database=<%=database%>">Edit</a></td>
 <td style="padding: 10px;"><a
href="deleteCatcontroller.jsp?database=<%=database%>">Delete</a></td>
 </tr>
 <% } %>
</table>
</div>
</body>
</html>