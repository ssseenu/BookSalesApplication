<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books List</title>
</head>
<body>
	<h2>Welcome to Book Publishing Centre  - List of Books</h2>
	<table border = "1">
		<tr>
			<th>Title</th>
			<th>Author</th>
			<th>Price</th>
			<th>View</th>
		</tr>
        <c:forEach items= "${SELECTED_BOOK}" var="book">
		<tr>	
		
			<td>${book.title}</td>
			<td>${book.author}</td>
			<td>${book.price}</td>
			
			<td><a href="../book/${book.isbn}">View</a></td>
		</tr>
		</c:forEach>
	</table>	
<a href= "../auth/logout"> <input type = "submit" value="logout"/></a>
</body>
</html>