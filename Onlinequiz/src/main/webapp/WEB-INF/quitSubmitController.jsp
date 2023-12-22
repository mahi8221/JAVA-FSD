<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.*" %>
 <%@ page import="com.quiz.dao.*"%>
 <%@ page import="com.quiz.pojo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String dbName = request.getParameter("database");
TestScore Ts = new TestScore();
String loggedInUser = (String) session.getAttribute("LoggedInUser");
int score = 0;
UserDao dao=new UserDao();
List<Quiz> quizQuestions = dao.fetchQues(dbName);
//Iterate through each quiz question and check the user's answer
for (Quiz question : quizQuestions) {
String userAnswer = request.getParameter("name" + question.getSrno());
String correctAnswer = request.getParameter("correctAnswer" + question.getSrno());
// Compare the user's answer with the correct answer
if (userAnswer != null && userAnswer.equals(correctAnswer)) {
 score++;
}
}
Ts.setName(loggedInUser);
Ts.setScore(score);
Ts.setDbname(dbName);
int value = dao.addScore(Ts);
if(value>0){
 List<TestScore> Tscore = dao.showScore();%>
 <h2 style="text-align: center; margin-top: 20px;">Score Board</h2>
<table style="border-collapse: collapse; width: 50%; margin: 20px 0 0 25%;">
 <tr style="background-color: #f2f2f2;">
 <th style="padding: 10px; border: 1px solid #ccc;">Name</th>
 <th style="padding: 10px; border: 1px solid #ccc;">Category Name</th>
 <th style="padding: 10px; border: 1px solid #ccc;">Score</th>
 </tr>
 <% for (TestScore t : Tscore) { %>
 <tr>
 <td style="padding: 10px; border: 1px solid #ccc;"><%= t.getName() %></td>
 <td style="padding: 10px; border: 1px solid #ccc;"><%= t.getDbname() %></td>
 <td style="padding: 10px; border: 1px solid #ccc;"><%= t.getScore() %></td>
 </tr>
 <% } %>
</table>
<%} %>
</body>
</html>