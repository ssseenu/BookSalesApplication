<!DOCTYPE html>
<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="../assets/css/main.css" />
<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
<link rel="stylesheet" href="<c:url value="/login/css/style.css" />">
</head>
<body>
<body>
<!-- Header -->
	<header id="header">
		<nav class="left">
			<a href="#menu"><span>Menu</span></a>
		</nav>
		<a href="index.jsp" class="logo">Welcome to SSSG Book Store</a>
		<nav class="right">
			<a href="../auth/login" class="button alt">Log in</a>
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
	<div class="container">
		<section id="content">
			<form action="../auth/login" method = "post">
		 <h1>Login</h1>
				<div>
					<input type="text" placeholder="Enter your Username" required
						name="username" />
				</div>
				<div>
					<input type="password" placeholder="Enter your Password" required
						name="password" />
				</div>
				<div>
					<input type="submit" value="Log in" />
				</div>
				</form>
				<div>
				 <h3>Are you New??<a href = "../auth/register"><input type="submit" value="Join us" /> </a></h3> 
				</div><br><a href="../auth/resetPassword">Forgot Password?</a><br>
		</section>
	</div>
</body>
<script src="../login/js/index.js"></script>

</body>
</html>