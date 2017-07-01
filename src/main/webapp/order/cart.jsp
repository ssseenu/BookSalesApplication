

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<style>
</style>
</head>
<body>
	
	<div class="content">
		<div class="container-fluid">

			<div class="row">

				<div class="col-md-8">
					<h5>My Cart</h5>
					<c:if test="${empty MY_CART_ITEMS || MY_CART_ITEMS.orderItems.isEmpty()}">
						<img src="../assets/images/empty-cart.png" width="300" />
						<h5>Your Shopping Cart is empty</h5>
						<a href="../book/list" class="btn btn-info">Continue Shopping</a>
					</c:if>
					<c:if test="${!empty MY_CART_ITEMS && !MY_CART_ITEMS.orderItems.isEmpty()}">
						<table border="1" class="table table-bordered">
							<thead>
								<tr>
									<th width="10%">#</th>
									<th>Item Name</th>
									<th>Quantity</th>
									<th>Total Cost</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item"
									varStatus="loop">
									<tr>
										<td>${loop.index+1}</td>
										<td>${item.book.title}</td>
										<td>${item.quantity}</td>
										<td>Rs.${item.book.price*item.quantity }</td>
										<td><a href="../orderItem/remove?id=${loop.index+1}"
											class="btn btn-danger">Remove</a>
											
											
									</tr>
								</c:forEach>
							</tbody>
						</table>


						<br />
						<a href="../book/list" class="btn btn-info">Continue Shopping</a>


					</c:if>
				</div>

				<c:if test="${ MY_CART_ITEMS != null && MY_CART_ITEMS.orderItems.size()>0}">
					<div class="col-md-4">
						<b>Price Details</b>

						<c:set var="no_of_items"
							value="${MY_CART_ITEMS.orderItems.size()}" />
						<c:set var="total_price" value="0" />
						<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item">
							<c:set var="total_price"
								value="${total_price + item.book.price*item.quantity}" />
						</c:forEach>

						<form name="orderForm" action="../order/save" method="post">
							<input type="hidden" name="total_price" value="${total_price}" />
							<table border="1" class="table table-bordered">

								<tbody>
									<tr>
										<td>Price ( ${no_of_items != null ?no_of_items:0} items )</td>
										<td>Rs. ${total_price}</td>
									</tr>
									<tr>
										<td>Delivery Charges</td>
										<td>FREE</td>
									</tr>
									<tr>
										<th><b>Amount Payable </b></th>
										<th><b>Rs. ${total_price}</b></th>
									</tr>
									<tr>
										<td colspan="2" align="center">
										
										<button type="submit" 
											class="btn btn-success btn-block" >Place an Order</button></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>