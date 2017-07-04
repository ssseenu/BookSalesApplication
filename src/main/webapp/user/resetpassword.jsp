<!DOCTYPE html>
<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
<link rel="stylesheet" href="<c:url value="/login/css/style.css" />">
</head>
<body>
<div class="container">
		<section id="content">
			<form action="../auth/resetPassword" method="post">
				<h1>Reset Password</h1>
				<div>
					<input type="text" placeholder="Enter your Username" required
						name="username" />
				</div>
				<div>
					<input type="password" placeholder="Enter your New Password" required
						name="newPassword" />
				</div>
				<div>
					<input type="password" placeholder="Confirm your New Password" required
						name="confirmNewPassword" />
				</div>
				<div>
					<input type="submit" value="Update" />
				</div>
			</form>
		</section>
	</div>
</body>
</html>