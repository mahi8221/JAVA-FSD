<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="border: 1px solid #ccc; margin-left:40%; padding: 20px; width:250px">
<h4 style="text-align: center;">Quiz Portal</h4>
<h4 style="text-align: center;">Admin Login</h4>
<form action="adminLoginServlet.jsp" method="post">
<div
style="display: flex; justify-content: space-between; align-items:
center; margin-bottom: 10px;">
<label for="email" style="margin-right: 10px;">Email:</label>
<input
type="text" name="email">
</div>
<div
style="display: flex; justify-content: space-between; align-items:
center; margin-bottom: 10px;">
<label for="password" style="margin-right:
10px;">Password:</label>
<input type="password" name="password">
</div>
<div style="text-align: center;">
<input type="submit" value="Submit">
</div>
</form>
</div>
</body>
</html> 