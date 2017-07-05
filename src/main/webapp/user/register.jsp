<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../assets/css/main.css" />
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/jquery.scrolly.min.js"></script>
<script src="../assets/js/skel.min.js"></script>
<script src="../assets/js/util.js"></script>
<script src="../assets/js/main.js"></script>
<title>Register here</title>
</head>
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
			<form action="../auth/register" method="post">
				<h1>Register</h1>
				<div>
					<input type="text" placeholder="Enter Name" required name="name" />
				</div>
				<div>
					<input type="text" placeholder="Enter emailId" required
						name="emailId" />
				</div>
				<div>
					<input type="text" placeholder="Enter mobile Number" required
						name="mobileNo" />
				</div>
				<div>
					<input type="text" placeholder="Enter user Name" required
						name="userName" />
				</div>
				<div>
					<input type="password" placeholder="Enter Password" required
						name="password" />
				</div>
				<div>
					<input type="text" placeholder="Enter Satatus" required
						name="userStatus" />
				</div>
				<div>
					<input type="submit" value="Register" />
				</div>
			</form>
		</section>
	</div>
</body>
</html>
