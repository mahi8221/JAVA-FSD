<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ page import="com.quiz.dao.*"%>
 <%@page import="java.util.*" %>
<%@ page import="com.quiz.pojo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String dbName = request.getParameter("database"); %>
<h2 style="text-align: center; margin-top: 20px;">Quiz</h2>
<div style="max-width: 500px; margin: 0 auto; border: 1px solid black; padding: 20px;">
 <form action="quizSubmitController.jsp?database=<%=dbName %>" method="post">
 <%
 UserDao dao = new UserDao();
 List<Quiz> list = dao.fetchQues(dbName);
 for (Quiz q : list) { %>
 <div style="margin-bottom: 20px; padding: 10px; border: 1px solid gray;">
 <p><strong>Q<%= q.getSrno() %> :</strong> <%= q.getQues() %></p>
 <label><input type="radio" name="name<%= q.getSrno() %>" value="<%= q.getOpt1()
%>"> <%= q.getOpt1() %></label><br>
 <label><input type="radio" name="name<%= q.getSrno() %>" value="<%= q.getOpt2()
%>"> <%= q.getOpt2() %></label><br>
 <label><input type="radio" name="name<%= q.getSrno() %>" value="<%= q.getOpt3()
%>"> <%= q.getOpt3() %></label><br>
 <label><input type="radio" name="name<%= q.getSrno() %>" value="<%= q.getOpt4()
%>"> <%= q.getOpt4() %></label><br>
 <input type="hidden" name="correctAnswer<%= q.getSrno() %>" value="<%=
q.getCorrectopt() %>">
 </div>
 <% } %>
 <input type="submit" value="Submit" style="margin-top: 10px;">
 </form>
</div>
</body>
</html>