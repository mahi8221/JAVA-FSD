<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="com.quiz.dao.*"%>
<%@page import="java.util.*"%>
<%@ page import="com.quiz.pojo.*"%>
<%@page errorPage="QuizListError.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String databaseName = request.getParameter("database");
%>
<%@include file="adminDashboard.jsp" %>
<span><a href="addQuiz.jsp?database=<%=databaseName%>">Add Quiz</a></span>
<span><a href="showCat.jsp">Category</a></span>
<br>
<table style="border-collapse: collapse; width: 100%; text-align: center;">
 <tr style="background-color: #f2f2f2;">
 <th style="padding: 10px;">Question</th>
 <th style="padding: 10px;">Option 1</th>
 <th style="padding: 10px;">Option 2</th>
 <th style="padding: 10px;">Option 3</th>
 <th style="padding: 10px;">Option 4</th>
 <th style="padding: 10px;">Correct Answer</th>
 <th style="padding: 10px;">Edit</th>
 <th style="padding: 10px;">Delete</th>
 </tr>
 <% UserDao daoo = new UserDao();
 int quizId;
 List<Quiz> qlist = daoo.displayadmin(databaseName);
 for (Quiz quz : qlist) {
 quizId = quz.getSrno();
 %>
 <tr>
 <td style="padding: 10px;"><%= quz.getQues() %></td>
 <td style="padding: 10px;"><%= quz.getOpt1() %></td>
 <td style="padding: 10px;"><%= quz.getOpt2() %></td>
 <td style="padding: 10px;"><%= quz.getOpt3() %></td>
 <td style="padding: 10px;"><%= quz.getOpt4() %></td>
 <td style="padding: 10px;"><%= quz.getCorrectopt() %></td>
 <td style="padding: 10px;"><a href="EditQuiz.jsp?database=<%= databaseName
%>&quizid=<%= quizId %>">Edit</a></td>
 <td style="padding: 10px;"><a href="deleteQuizController.jsp?database=<%= databaseName
%>&quizid=<%= quizId %>">Delete</a></td>
 </tr>
 <% } %>
</table>
</body>
</html>