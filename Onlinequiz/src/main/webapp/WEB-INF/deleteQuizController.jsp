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
int id = Integer.parseInt(qid);
UserDao dao = new UserDao();
Quiz quiz = new Quiz();
quiz.setSrno(id);
int value = dao.delete(dbName,quiz);
if (value ==0){
out.print("Quiz Delete Succesfully");
RequestDispatcher rd=request.getRequestDispatcher("quiz.jsp");
 rd.include(request, response);
}
%>
</body>
</html>