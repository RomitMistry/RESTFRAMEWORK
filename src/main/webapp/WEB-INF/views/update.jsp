<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form action="${pageContext.request.contextPath}/adduser" method="post">
		<input type="text" name="id" value="${data.id}">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Name</label> <input
					type="text" class="form-control" name="name"  value="${data.name }"
					id="exampleInputEmail1" aria-describedby="emailHelp">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Contact</label> <input
					type="text" class="form-control" name="contact"  value="${data.contact }"
					id="exampleInputEmail1" aria-describedby="emailHelp">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="f...orm-bel">Address</label> <input
					type="text" class="form-control" name="address" value="${data.address}"
					id="exampleInputEmail1" aria-describedby="emailHelp">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Email
					address</label> <input type="email" class="form-control" name="email"
					value="${data.email }"
					id="exampleInputEmail1" aria-describedby="emailHelp"> 

			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<input type="password" class="form-control" name="password" value="${data.password}"
					id="exampleInputPassword1">
			</div>

			<button type="submit" class="btn btn-primary" name="action"
				value="register">Update</button>
			
		</form>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>



</body>
</html>