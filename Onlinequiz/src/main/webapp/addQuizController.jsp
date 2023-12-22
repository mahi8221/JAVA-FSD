<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="com.quiz.dao.*"%>
<%@ page import="com.quiz.pojo.*"%>
<%@page errorPage="quizError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
UserDao dao= new UserDao();
 Quiz quiz = new Quiz();
 String DbName = request.getParameter("database");

 quiz.setSrno(Integer.parseInt(request.getParameter("srno")));
 quiz.setQues(request.getParameter("ques"));
 quiz.setOpt1(request.getParameter("opt1"));
 quiz.setOpt2(request.getParameter("opt2"));
 quiz.setOpt3(request.getParameter("opt3"));
 quiz.setOpt4(request.getParameter("opt4"));
 quiz.setCorrectopt(request.getParameter("correctopt"));
 int row = dao.addquiz(DbName, quiz);
 if(row>0){
out.print("Quiz added Succesfully");
RequestDispatcher rd=request.getRequestDispatcher("quiz.jsp");
 rd.include(request, response);
 } %>

</body>
</html>