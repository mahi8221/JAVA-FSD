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
String dbName = request.getParameter("database");
String qid = request.getParameter("quizid");
int sid = Integer.parseInt(qid);
UserDao dao = new UserDao();
List<Quiz> qlist = dao.editQuiz(dbName, sid);
%>
<div
style="width: 20%; margin: auto; padding: 20px; border: 1px solid black; text-align:
left;">
<h3>Edit Quiz</h3>
<form
action="EditQuizController.jsp?database=<%=dbName%>&quizid=<%=sid%>">
<input type="hidden" name="dbname" value="<%=dbName%>">
<%
for (Quiz q : qlist) {
%>
<input type="hidden" name="quizSrno" value="<%=q.getSrno()%>">
<div style="padding: 10px;">
<label>Question:</label> <br>
<input type="text" name="question"
value="<%=q.getQues()%>">
</div>
<div style="padding: 10px;">
<label>Option 1:</label> <br> <input type="text" name="options1"
value="<%=q.getOpt1()%>">
</div>
<div style="padding: 10px;">
<label>Option 2:</label> <br> <input type="text" name="options2"
value="<%=q.getOpt2()%>">
</div>
<div style="padding: 10px;">
<label>Option 3:</label> <br> <input type="text" name="options3"
value="<%=q.getOpt3()%>">
</div>
<div style="padding: 10px;">
<label>Option 4:</label> <br> <input type="text" name="options4"
value="<%=q.getOpt4()%>">
</div>
<div style="padding: 10px;">
<label>Correct Option:</label> <br> <input type="text"
name="correctOptions" value="<%=q.getCorrectopt()%>">
<div style="padding: 10px;">
<input type="submit" value="Update Quiz">
</div>
<%
}
%>
</form>
</div>
</body>
</html>