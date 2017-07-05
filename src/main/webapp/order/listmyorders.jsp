<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List My Orders</title>
<link rel="stylesheet" href="../assets/css/main.css" />
<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
<style>
</style>
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
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong><i class="fa fa-list"></i> My Orders</strong>
						</div>
						<div class="panel-body">
							<table id="ordersTbl" border="1"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="10%">Order Id</th>
										<th>Order Items</th>
										<th>Amount</th>
										<th>Status</th>
										<th>Ordered Date</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${MY_ORDERS}" var="order">
										<tr>
											<td>${order.id}</td>
											<td>
												<ul>
													<c:forEach items="${order.orderItems}" var="item">
														<li>${item.book.title}(Quantity - ${item.quantity} )</li>
													</c:forEach>
												</ul>
											</td>
											<td>Rs. ${order.totalPrice}</td>
											<td>${order.status}</td>
											<td>${order.orderedDate }</td>
											<c:if test="${order.status == 'ORDERED'}">
												<td><a
													href="../order/updateStatus?id=${order.id}&status=CANCELLED"
													><input type = "submit" value="Cancel Order"/></a></td>
											</c:if>

										</tr>
										
										

									</c:forEach>
									<tr>
										<td><a href="../book/list"><input type = "submit" value="Continue Shopping"/></a></td>
									</tr>
									
								</tbody>
							</table>
							
							
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#ordersTbl").DataTable();
		});
	</script>
</body>
</html>