<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div >

 <div style="display: flex; justify-content: space-between;">
 <h1 style="margin: 0;">Welcome</h1>
 <div style="text-align: right;">
 ${LoggedInUser}<br>
 <a href="logoutServlet.jsp">Logout</a>
 </div>
</div>

</div>
</body>
</html>