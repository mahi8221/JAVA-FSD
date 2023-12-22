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
String dbName = request.getParameter("dbname");
UserDao dao = new UserDao();
Quiz q = new Quiz();
int sno=Integer.parseInt(request.getParameter("quizSrno"));
q.setSrno(sno);
q.setQues(request.getParameter("question"));
q.setOpt1(request.getParameter("options1"));
q.setOpt2(request.getParameter("options2"));
q.setOpt3(request.getParameter("options3"));
q.setOpt4(request.getParameter("options4"));
q.setCorrectopt(request.getParameter("correctOptions"));
int row = dao.UpdateQuiz(dbName, sno, q);
if(row>0){%>
 <%="The Quiz Edited successfully" %>

<%
response.sendRedirect("quiz.jsp?database="+dbName);
} %>
</body>
</html>