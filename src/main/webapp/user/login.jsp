<!DOCTYPE html>
<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="<c:url value="/login/css/style.css" />">
</head>
<body>
<body>
<%-- <%@ include file="../../layout/header.jsp"%> --%>	
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
				 Join Us <a href = "../auth/register"><input type="submit" value="Join us" /> </a> 
				</div><br><a href="../auth/resetPassword">Forgot Password?</a><br>
			<div class="button"></div>
		</section>
	</div>
</body>
<%-- <%@ include file="../../layout/footer.jsp"%> --%>
<script src="login/js/index.js"></script>

</body>
</html>