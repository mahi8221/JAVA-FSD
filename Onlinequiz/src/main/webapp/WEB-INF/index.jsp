<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="width: 300px; margin: 0 auto; border: 1px solid #ccc; padding: 20px; text-align: center;">
 <h2>Quiz Portal</h2>
 <h4>User Login</h4>
 <form action="loginUserServlet.jsp" method="post">
 <div style="text-align: center; margin-bottom: 10px;">
 <label style="display: inline-block; text-align: right; width: 80px;">Email:</label>
 <input type="text" name="email" style="margin-bottom: 10px;">
 </div>
 <div style="text-align: center; margin-bottom: 10px;">
 <label style="display: inline-block; text-align: right; width: 80px;">Password:</label>
 <input type="password" name="password" style="margin-bottom: 10px;">
 </div>
 <div style="text-align: center;">
 <input type="submit" value="Submit" style="margin-bottom: 10px;">
 </div>
</form>
<div style="text-align: center; margin-bottom: 10px;">
 Not a user? <a href="register.jsp">Register</a>
</div>
<div style="text-align: center;">
 Admin Login: <a href="admin.jsp">Admin</a>
</div>
</div>
</body>
</html>