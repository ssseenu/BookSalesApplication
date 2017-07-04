<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>

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