<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User Registration</h1>
<form action="RegisterUserController.jsp" method="post">
<table>
<tr><td>Name</td><td><input type="text" name="uname"></td></tr>
<tr><td>Email</td><td><input type="email" name="uemail"></td></tr>
<tr><td>Password</td><td><input type="text" name="upass"></td></tr>
<tr><td></td><td><input type="submit" value="Register"></td></tr>
</table>
</form>
</body>
</html>
