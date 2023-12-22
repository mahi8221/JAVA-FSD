<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="com.quiz.dao.*"%>
<%@page errorPage="adminError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 UserDao dao = new UserDao();
 String username = request.getParameter("email");
 String password = request.getParameter("password");
 String name=dao.adminvalid(username, password);
 if(name!=null){
 session.setAttribute("LoggedInUser", name);
response.sendRedirect("showCat.jsp");
 }
 else{%>
<div style="text-align: center; margin-top: 20px;">
 <% out.print("Error Username or Password"); %>
 </div>
 <%
 RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
 rd.include(request, response);
 }
 %>

</body>
</html>