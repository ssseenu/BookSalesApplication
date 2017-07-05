<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books List</title>
<link rel="stylesheet" href="../assets/css/main.css" />
<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
</head>
<body>
<!-- Header -->
	<header id="header">
		<nav class="left">
			<a href="#menu"><span>Menu</span></a>
		</nav>
		<a href="index.jsp" class="logo">Welcome to SSSG Book Store</a>
		<nav class="right">
			<a href="#" class="button alt">Welcome ${USER_LOGGED.name}</a>
			<a href= "../auth/logout"> <input type = "submit" value="logout"/></a>
			
		</nav>
	</header>

	<!-- Menu -->
	<nav id="menu">
		<ul class="links">
			<li><a href="/">Home</a></li>
			<li><a href="../book/list">Book</a></li>
			<li><a href="../auth/login">Admin</a></li>
		</ul>
		<ul class="actions vertical">
			<li><a href="../auth/login" class="button fit">Login</a></li>
		</ul>
	</nav>
	<h2>List of Books</h2>
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
			
			<td><a href="../book/${book.isbn}"><input type = "submit" value="View"/></a></td>
		</tr>
		</c:forEach>
	</table>	
</body>
</html>