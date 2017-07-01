<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books Available</title>
</head>
<h2>Welcome to Book Publishing Centre - Books Details</h2>
	<table border = "1">
		<tr>
			<th>ISBN</th>
			<th>Title</th>
			<th>Author</th>
			<th>Publish Date</th>
			<th>Content</th>
			<th>Price</th>
			<th>Status</th>
			<th>Add to Cart</th>
		</tr>
		<tr>	
			<td>${books.isbn}</td>
			<td>${books.title}</td>
			<td>${books.author}</td>
			<td>${books.publishDate}</td>
			<td>${books.content}</td>
			<td>${books.price}</td>
			<td>${books.status}</td>
			<td><a href="../order/cart${books.isbn}">Add to Cart</a></td>
		</tr>
	</table>	
<a href= "../auth/logout"> <input type = "submit" value="logout"/></a>
</body>
</html>