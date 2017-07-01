<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Items</title>
</head>
<body>

	<%-- <div><%@ include file="../../layout/header.jsp"%></div> --%>

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