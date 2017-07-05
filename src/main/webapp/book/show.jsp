<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Items</title>
<link rel="stylesheet" href="../assets/css/main.css" />
<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
</head>
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
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-12">

				<b>Item Details</b>
				<c:if test="${empty USER_LOGGED}">
					<div class="alert alert-danger" role="alert">
						Please <strong>Login</strong> to add items to cart.
					</div>
				</c:if>

				<form action="../orderItem/addToCart" method="POST">
					<input type="hidden" name="book_isbn" value="${SELECTED_BOOK.isbn}" />
					<table class="table table-bordered" border="1">
						<tr>
							<th>Book Name</th>
							<th>Price</th>
							<th>Quantity</th>
						</tr>
						<tr>

							<td>${SELECTED_BOOK.title}</td>

							<td>Rs. ${SELECTED_BOOK.price}</td>
							<td><input type="number" name="quantity" min="1" 
								value="1" required /></td>

							<c:if test="${!empty USER_LOGGED}">
								<td><button type="submit" class="btn btn-primary">Add
										To Cart</button></td>
							</c:if>
							<c:if test="${empty USER_LOGGED}">
								<td><button type="submit" class="btn btn-primary" disabled>Add
										To Cart</button></td>
							</c:if>

						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

</body>
</html>