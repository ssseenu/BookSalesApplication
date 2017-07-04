<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check Out</title>
<link rel="stylesheet" href="../checkout/css/style.css">
<script src="../checkout/js/index.js"></script>
</head>
<body>
<div class='container'>
		<div class='window'>
			<div class='order-info'>
				<div class='order-info-content'>
					<br><h2>Order Summary</h2>
					<div class='line'></div>
					<table class='order-table'>
						<tbody>
							<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item"
								varStatus="loop">
								<tr>
									<%-- <td><img src="../${item.book.imageUrl}" class='full-width'></img>
									</td> --%>
									<td><br> <span class='thin'>${item.book.title}</span>
										<br>
									<span class='thin small'>Quantity: ${item.quantity}<br></span>
									</td>

								</tr>
								<tr>
									<td>
										<div class='price'>Rs.${item.book.price*item.quantity}</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<c:if
						test="${ MY_CART_ITEMS != null && MY_CART_ITEMS.orderItems.size()>0}">
						<c:set var="no_of_items"
							value="${MY_CART_ITEMS.orderItems.size()}" />
						<c:set var="total_price" value="0" />
						<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item">
							<c:set var="total_price"
								value="${total_price + item.book.price*item.quantity}" />
						</c:forEach>
						<input type="hidden" name="total_price" value="${total_price}" />
						<div class='line'></div>
						<div class='total'>
							<span style='float: left;'> Delivery<br> TOTAL
							</span> <span style='float: right; text-align: right;'> FREE<br>
								<b>Rs. ${total_price}</b>
							</span>
						</div>
					</c:if>
				</div>
			</div>

			<div class='credit-info'>
				<div class='credit-info-content'>
					<form name="orderForm" action="../order/save" method="post">
						<input type="hidden" name="total_price" value="${total_price}" />
						<table class='half-input-table'>
							<tr>
								<td>Please select your card:</td>
								<td><div class='dropdown' id='card-dropdown'>
										<div class='dropdown-btn' id='current-card'>Visa</div>
										<div class='dropdown-select'>
											<ul>
												<li>Master Card</li>
												<li>American Express</li>
											</ul>
										</div>
									</div></td>
							</tr>
						</table>
						<img
							src="../checkout/images/visa_logo.png"
							height='80' class='credit-card-image' id='credit-card-image'></img>
						Card Number <input class='input-field' required></input> Card
						Holder <input class='input-field' required></input>
						<table class='half-input-table'>
							<tr>
								<td>Expires <input class='input-field' required></input>
								</td>
								<td>CVV <input class='input-field' required></input>
								</td>
							</tr>
						</table>
						<button class='pay-btn'>Checkout</button>
					</form>
				</div>

			</div>

		</div>
	</div>
</body>
</html>