<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin - Users list</title>
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
			<a href="#" class="button alt">${USER_LOGGED.name}</a> <a
				href="../auth/logout"> <input type="submit" value="logout" /></a>

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
							<strong>List Of Users</strong>
						</div>
						<div class="panel-body">
							<table id="ordersTbl" border="1"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="5%">ID</th>
										<th>Name</th>
										<th>Username</th>
										<th>Mobile Number</th>
										<th>Email</th>
										<th>Status</th>
										<th>Role</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${USERS_LIST}" var="user">
										<tr>
											<td>${user.id}</td>
											<td>${user.name}</td>
											<td>${user.userName}</td>
											<td>${user.mobileNo}</td>
											<td>${user.emailId }</td>
											<td>${user.userStatus}</td>
											<td>${user.role.roleName}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>


						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>