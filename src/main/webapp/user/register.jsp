<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register here</title>
</head>
<body>
	<form action = "../auth/register" method="post">
	<input type = "text" name = "name" placeholder = "Enter Name" required/><br>
	<input type = "text" name = "emailId" placeholder = "Enter emailId " required/><br>
	<input type = "text" name = "mobileNo" placeholder = "Enter mobie Number" required/><br>
	<input type = "text" name = "userName" placeholder = "Enter user Name" required/><br>
	<input type = "password" name = "password" placeholder = "Enter password" required/><br>
	<input type = "text" name = "userStatus" placeholder = "Enter A for active" required/><br>
	<button>Register</button>
	</form>
</body>
</html>