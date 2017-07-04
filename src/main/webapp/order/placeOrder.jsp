<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="UTF-8">
<title>Place Order</title>
<script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="../placeOrder/js/index.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" href="../placeOrder/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="../showBook/css/style.css">
<link rel="stylesheet" href="../bookList/css/style.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
</head>

<body>

<div class="wrap cf">
		<div class="heading cf">
			<h1>My Cart</h1>
			<a href="../book/list" class="continue">Continue Shopping</a>
		</div>
		<div class="cart">
			<ul class="cartWrap">
				<li class="items odd"><c:if
						test="${empty MY_CART_ITEMS || MY_CART_ITEMS.orderItems.isEmpty()}">
						<img src="../placeOrder/images/empty-cart.gif" width="600"/>
						
					</c:if> <c:if
						test="${!empty MY_CART_ITEMS && !MY_CART_ITEMS.orderItems.isEmpty()}">
						<div class="infoWrap">
							<div class="cartSection">
								<table>
									<thead>
										<tr>
											<th>No.</th>
											<th>Title</th>
											<th>Quantity</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item"
											varStatus="loop">
											<tr>
												<td><p class="itemNumber">${loop.index+1}</p></td>
												<td><h3>${item.book.title}</h3></td>
												<td><p>${item.quantity}</p></td>
												<td><div class="prodTotal cartSection">
														<p>Rs.${item.book.price*item.quantity }</p>
													</div></td>
												<td><div class="cartSection removeWrap">
														<a href="../orderitem/remove?id=${loop.index+1}"
															class="remove">X</a>
													</div></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
						</div>
					</c:if></li>
			</ul>
		</div>
		<c:if
			test="${ MY_CART_ITEMS != null && MY_CART_ITEMS.orderItems.size()>0}">
			<div class="col-md-4">
				<c:set var="no_of_items" value="${MY_CART_ITEMS.orderItems.size()}" />
				<c:set var="total_price" value="0" />
				<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item">
					<c:set var="total_price"
						value="${total_price + item.book.price*item.quantity}" />
				</c:forEach>
				<input type="hidden" name="total_price" value="${total_price}" />
				<div class="subtotal cf">
					<ul>
						<li class="totalRow"><span class="label">Shipping</span><span
							class="value">FREE</span></li>

						<li class="totalRow final"><span class="label">Total</span><span
							class="value">Rs. ${total_price}</span></li>
						<li class="totalRow"><a href="../order/checkout"
							class="btn continue">Place Order</a></li>
					</ul>
				</div>
			</div>
		</c:if>
	</div>
</body>
</html>