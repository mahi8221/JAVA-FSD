<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="adminDashboard.jsp" %>
<span><a href="showCat.jsp">Category</a></span>
<div style="display: flex; flex-direction: row; width: 100vw;">
<%
String DbName = request.getParameter("database");
%>
<div
style="text-align: left; border: 1px solid black; padding: 10px;marginleft:500px;padding:50px">
<h1>Create New Quiz</h1>
<form action="addQuizController.jsp?database=<%=DbName%>"
method="post">
Question no<br> <input type="text" name="srno"><br>
Question <br> <input type="text" name="ques"><br>
Option 1 <br> <input type="text" name="opt1"><br>
Option 2<br> <input type="text" name="opt2"><br>
Option 3 <br> <input type="text" name="opt3"><br>
Option 4 <br> <input type="text" name="opt4"><br>
Correct Option <br> <input type="text" name="correctopt"><br>
<input type="submit" name="Submit" style="margin-top: 10px;">
</form>
</div>
</div>
</body>
</html>